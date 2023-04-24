//
//  ViewController.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import UIKit
import Combine
import Foundation

class MainViewController: UIViewController {
    private var usersSubscriper: AnyCancellable?
    var data0 = [flightViewModelStruct]()
    var data1 = [flightViewModelStruct]()
    var listOfFlights = [flightStruct]()
    var tableView = tableCustom()
    var store = Set<AnyCancellable>()
    let clean = Transform()
    let MainViewLargeCellID = "MainViewLargeCellID"
    let mainViewCellID = "mainViewCellID"
    var mainCor: MainCoordinator
    init(coordinator: MainCoordinator) {
        self.mainCor = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @Published private (set) var value: String = "Flights"
    @Published private (set) var depareture: String = "Departure City"
    @Published private (set) var arrival: String = "Arrival City"
    @Published private (set) var arrivalColor: UIColor = UIColor.white
    @Published private (set) var departureColor: UIColor = UIColor.lightGray
    
    func bind() {
        $value.sink { self.navigationItem.title = $0.localise() }.store(in: &cancellables)
        $departureColor.sink { self.generalButton.backgroundColor = $0 }.store(in: &cancellables)
        $arrivalColor.sink { self.generalButton2.backgroundColor = $0 }.store(in: &cancellables)
    }
    
    func changeState(type: FlightSearch) {
        searchType = type
        type == .departure ? makeDepColor(color: .lightGray) : makeDepColor(color: .white)
        type == .arrival ?  makeArrivColor(color: .lightGray) : makeArrivColor(color: .white)
        type == .arrival ?  makeValueChange(s: "Arrival City") : makeValueChange(s: "Departure City")
        changedState()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.isTranslucent = true
        self.navigationItem.title = value.localise()
        setUpTableViewDetails()
        apiCall()
        setUpTableView()
        setUpButtons()
        setUpTextFieldPublisher()
        bind()
    }
    
    func changedState() {
        self.generalTextField.text = ""
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            self.textInput(text: "", type: self.searchType)
            self.tableView.reloadData()
        }
    }
    
    func makeDepColor(color: UIColor)  { departureColor = color }
    func makeArrivColor(color: UIColor)  { arrivalColor = color }
    func makeValueChange(s: String)  { value = s }
    
    @objc func apiCall() {
        usersSubscriper = callAPIPublisher()
            .sink(receiveCompletion: { finished in
                switch finished {
                case .failure(_): Alert.show(title: "There was an issue", message: "Please try later", vc: self)
                case .finished: print("finished Api Call")
                }
            }, receiveValue: { (data) in
                self.refactorData(data: data)
            })
    }
    
    func refactorData(data: [flightStruct]) {
        clean.refactorAndInsertIntoViewModel(data: data).sink { [weak self] completion in
            switch completion {
            case .failure(.message(let error)): self?.callFailureAlert()
            case .finished:  print("case.finished")
            }
        } receiveValue: { (data) in
            self.data0 = data;
            self.data1 = self.data0
            DispatchQueue.main.async {
                self.tableView.reloadData();
                self.tableView.tableFooterView = UIView()
            }
        }.store(in: &store)
    }
    
    func callAPIPublisher<T: Codable>() -> AnyPublisher<T, Error> {
        return DataManagerGenerics().apiCallGeneric(url: Constraints.flightURL)
    }
    func callFailureAlert() {
        print("Failure alert called")
    }
    @objc func goToFlightDetails(cell: UITableViewCell) {}
    var searchType: FlightSearch = .departure
    func setUpTextFieldPublisher() {
        generalTextField.textPublisher.sink { value in
            self.textInput(text: value, type: self.searchType)
        }.store(in: &cancellables)
    }
    func textInput(text: String, type: FlightSearch) {
        switch type {
        case .departure:
            let searchResults = data1.filter { $0.departure_city.contains(text) }
            text.count < 1 ? update(type: .original, data: []) : update(type: .search, data: searchResults)
        case .arrival:
            let searchResults = data1.filter { $0.arrival_city.contains(text) }
            text.count < 1 ? update(type: .original, data: []) : update(type: .search, data: searchResults)
        }
    }
    func update(type: DataType, data: [flightViewModelStruct]) {
        switch type {
        case .search:
            DispatchQueue.main.async { self.data0 = data; self.tableView.reloadData() }
        case .original:
            DispatchQueue.main.async { self.data0 = self.data1; self.tableView.reloadData() }
        }
    }
    enum FlightSearch  {
        case arrival
        case departure
    }
    enum DataType  {
        case search
        case original
    }
    
    var generalButton = UniversalButton()
    var generalButton2 = UniversalButton()
    func setUpButtons() {
        generalButton.backgroundColor = departureColor
        generalButton.setTitle(depareture.localise(), for: .normal)
        generalButton.addTarget(self, action: #selector(GoToDeparture), for: .touchUpInside)
        generalButton2.backgroundColor = arrivalColor
        generalButton2.setTitle(arrival.localise(), for: .normal)
        generalButton2.addTarget(self, action: #selector(GoToArrival), for: .touchUpInside)
    }
    
    lazy var searchBarBackground: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 1
        label.clipsToBounds = true
        label.layer.borderWidth = 1
        let color = UIColor.gray
        label.layer.borderColor = color.cgColor
        label.layer.cornerRadius = 5
        return label
    }()
    lazy var searchWhiteBackground: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 1
        label.clipsToBounds = true
        label.layer.borderWidth = 1
        let color = UIColor.gray
        label.layer.borderColor = color.cgColor
        label.layer.cornerRadius = 5
        return label
    }()
    lazy var searchTextField: UITextView = {
        let label = UITextView()
        label.textColor = UIColor.black
        label.text = "Search Flights"
        label.isHidden = false
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 2
        label.font = UIFont(name: "Arial", size: 16.5)
        label.textAlignment = NSTextAlignment.left
        label.returnKeyType = .done
        label.textContainer.maximumNumberOfLines = 1
        return label
    }()
    lazy var xForSearchImage: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .white
        button.setImage(UIImage(systemName: "clear"), for: .normal)
        button.tintColor = UIColor.black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(clearText), for: .touchUpInside)
        button.layer.masksToBounds = true
        button.contentMode = .scaleAspectFit
        button.layer.zPosition = 2
        return button
    }()
    
    @objc func clearText() {
        self.generalTextField.text = ""
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            self.textInput(text: "", type: self.searchType)
            self.tableView.reloadData()
        }
    }
    
    let searchImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 2
        return imageView
    }()
    
    var cancellables = Set<AnyCancellable>()
    
    lazy var generalTextField: UITextField = {
        let field = UITextField()
        field.placeholder = ""
        field.backgroundColor = .clear
        field.autocapitalizationType = UITextAutocapitalizationType.none
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.zPosition = 2
        //      field.delegate = self
        field.textColor = UIColor.black
        field.attributedPlaceholder = NSAttributedString(string: "Search Flights", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.font = UIFont(name: "Arial", size: 18)
        field.textAlignment = NSTextAlignment.left
        field.returnKeyType = .done
        field.keyboardType = .numberPad
        field.keyboardAppearance = .light
        return field
    }()
}






