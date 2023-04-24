//
//  FlightDetailsVC.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import UIKit

class FlightDetailsVC: UIViewController {
    var data4 = [flightViewModelStruct]()
    var tableView = tableCustom()
    let FlightDetailsCellID = "FlightListCellID"
    var mainCor: MainCoordinator
    init(coordinator: MainCoordinator) {
        self.mainCor = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @Published private (set) var value: String = "Trips"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.myBackgroundColor
        self.navigationItem.title = value.localise()
        navigationController?.navigationBar.isTranslucent = true
        setUpTableViewDetails()
        setUpTableView()
    }
    
}
