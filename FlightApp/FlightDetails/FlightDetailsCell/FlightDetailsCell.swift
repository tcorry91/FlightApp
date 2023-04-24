//
//  FlightDetailsCell.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import UIKit


import UIKit

class FlightDetailsCell: UITableViewCell {
    var flightListTable: FlightDetailsVC?
  
    var data: flightViewModelStruct! {
        didSet {
            departureAbbreviatedLabel.text = data.departure_airport
            arrivalAbbreviatedLabel.text = data.arrival_airport
            departureTimeLabel.text = data.addedDateLowerCase
            arrivalTimeLabel.text = data.addedDateArrivingLowerCase
            arrivalTimeLabel2.text = data.arrival_date
            departureTimeLabel2.text = data.departure_date
            departureAbbreviatedLabel.text = data.departure_airport
            arrivalAbbreviatedLabel.text = data.arrival_airport
            durationLabel.text = data.scheduled_duration
            departureCityNameLabel.text = data.departure_city
            arrivalCityNameLabel.text = data.arrival_city
            flightToLabel.text = data.addedFlightTo
            flightDetailsLabel.text = data.flight_number
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        blueBackgroundLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        blueBackgroundLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        blueBackgroundLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        blueBackgroundLabel.heightAnchor.constraint(equalToConstant: 215).isActive = true
        
        departureAbbreviatedLabel.topAnchor.constraint(equalTo: blueBackgroundLabel.topAnchor, constant: 44).isActive = true
        departureAbbreviatedLabel.leftAnchor.constraint(equalTo: blueBackgroundLabel.leftAnchor, constant: 32).isActive = true
        departureAbbreviatedLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        departureAbbreviatedLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        departureCityNameLabel.topAnchor.constraint(equalTo: departureAbbreviatedLabel.bottomAnchor, constant: 5).isActive = true
        departureCityNameLabel.leftAnchor.constraint(equalTo: departureAbbreviatedLabel.leftAnchor, constant: 0).isActive = true
        departureCityNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        departureCityNameLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        departureTimeLabel.topAnchor.constraint(equalTo: departureCityNameLabel.bottomAnchor, constant: 30).isActive = true
        departureTimeLabel.leftAnchor.constraint(equalTo: departureAbbreviatedLabel.leftAnchor, constant: 0).isActive = true
        departureTimeLabel.widthAnchor.constraint(equalToConstant: 130).isActive = true
        departureTimeLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        departureTimeLabel2.topAnchor.constraint(equalTo: departureTimeLabel.bottomAnchor, constant: 9).isActive = true
        departureTimeLabel2.leftAnchor.constraint(equalTo: departureAbbreviatedLabel.leftAnchor, constant: 0).isActive = true
        departureTimeLabel2.widthAnchor.constraint(equalToConstant: 95).isActive = true
        departureTimeLabel2.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        arrivalAbbreviatedLabel.topAnchor.constraint(equalTo: departureAbbreviatedLabel.topAnchor, constant: 0).isActive = true
        arrivalAbbreviatedLabel.rightAnchor.constraint(equalTo: blueBackgroundLabel.rightAnchor, constant: -32).isActive = true
        arrivalAbbreviatedLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        arrivalAbbreviatedLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        arrivalCityNameLabel.topAnchor.constraint(equalTo: arrivalAbbreviatedLabel.bottomAnchor, constant: 5).isActive = true
        arrivalCityNameLabel.rightAnchor.constraint(equalTo: blueBackgroundLabel.rightAnchor, constant: -32).isActive = true
        arrivalCityNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        arrivalCityNameLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        arrivalTimeLabel.centerYAnchor.constraint(equalTo: departureTimeLabel.centerYAnchor, constant: 0).isActive = true
        arrivalTimeLabel.rightAnchor.constraint(equalTo: blueBackgroundLabel.rightAnchor, constant: -32).isActive = true
        arrivalTimeLabel.widthAnchor.constraint(equalToConstant: 130).isActive = true
        arrivalTimeLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        arrivalTimeLabel2.centerYAnchor.constraint(equalTo: departureTimeLabel2.centerYAnchor, constant: 0).isActive = true
        arrivalTimeLabel2.rightAnchor.constraint(equalTo: blueBackgroundLabel.rightAnchor, constant: -32).isActive = true
        arrivalTimeLabel2.widthAnchor.constraint(equalToConstant: 95).isActive = true
        arrivalTimeLabel2.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        planeImage.centerYAnchor.constraint(equalTo: departureAbbreviatedLabel.centerYAnchor, constant: 0).isActive = true
        planeImage.centerXAnchor.constraint(equalTo: blueBackgroundLabel.centerXAnchor, constant: 0).isActive = true
        planeImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        planeImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        whiteBackgroundLabel.topAnchor.constraint(equalTo: blueBackgroundLabel.bottomAnchor, constant: 0).isActive = true
        whiteBackgroundLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        whiteBackgroundLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        whiteBackgroundLabel.heightAnchor.constraint(equalToConstant: 355).isActive = true
        
        flightLabel.topAnchor.constraint(equalTo: whiteBackgroundLabel.topAnchor, constant: 41).isActive = true
        flightLabel.leftAnchor.constraint(equalTo: whiteBackgroundLabel.leftAnchor, constant: 32).isActive = true
        flightLabel.widthAnchor.constraint(equalToConstant: 52).isActive = true
        flightLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        flightDetailsLabel.centerYAnchor.constraint(equalTo: flightLabel.centerYAnchor, constant: 0).isActive = true
        flightDetailsLabel.leftAnchor.constraint(equalTo: flightLabel.rightAnchor, constant: 7).isActive = true
        flightDetailsLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        flightDetailsLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        terminalLabel.topAnchor.constraint(equalTo: flightLabel.bottomAnchor, constant: 35).isActive = true
        terminalLabel.leftAnchor.constraint(equalTo: flightLabel.leftAnchor, constant: 0).isActive = true
        terminalLabel.widthAnchor.constraint(equalToConstant: 74).isActive = true
        terminalLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        terminalDetailsLabel.centerYAnchor.constraint(equalTo: terminalLabel.centerYAnchor, constant: 0).isActive = true
        terminalDetailsLabel.leftAnchor.constraint(equalTo: terminalLabel.rightAnchor, constant: 7).isActive = true
        terminalDetailsLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        terminalDetailsLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        gateLabel.centerYAnchor.constraint(equalTo: flightLabel.centerYAnchor, constant: 0).isActive = true
        gateLabel.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: -69).isActive = true
        gateLabel.widthAnchor.constraint(equalToConstant: 45).isActive = true
        gateLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        gateDetailsLabel.centerYAnchor.constraint(equalTo: flightLabel.centerYAnchor, constant: 0).isActive = true
        gateDetailsLabel.leftAnchor.constraint(equalTo: gateLabel.rightAnchor, constant: 17).isActive = true
        gateDetailsLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        gateDetailsLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        seatLabel.centerYAnchor.constraint(equalTo: terminalLabel.centerYAnchor, constant: 0).isActive = true
        seatLabel.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: -69).isActive = true
        seatLabel.widthAnchor.constraint(equalToConstant: 45).isActive = true
        seatLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        seatDetailsLabel.centerYAnchor.constraint(equalTo: terminalLabel.centerYAnchor, constant: 0).isActive = true
        seatDetailsLabel.leftAnchor.constraint(equalTo: seatLabel.rightAnchor, constant: 17).isActive = true
        seatDetailsLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        seatDetailsLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        dottedTicketImage.topAnchor.constraint(equalTo: terminalDetailsLabel.bottomAnchor, constant: 23).isActive = true
        dottedTicketImage.leftAnchor.constraint(equalTo: whiteBackgroundLabel.leftAnchor, constant: -4).isActive = true
        dottedTicketImage.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: 4).isActive = true
        dottedTicketImage.heightAnchor.constraint(equalToConstant: 43).isActive = true
        
        QRImage.topAnchor.constraint(equalTo: dottedTicketImage.bottomAnchor, constant: 30).isActive = true
        QRImage.centerXAnchor.constraint(equalTo: whiteBackgroundLabel.centerXAnchor, constant: 0).isActive = true
        QRImage.widthAnchor.constraint(equalToConstant: 110).isActive = true
        QRImage.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.contentView.isUserInteractionEnabled = true
        addSubview(blueBackgroundLabel)
        addSubview(planeImage)
        addSubview(departureAbbreviatedLabel)
        addSubview(departureTimeLabel)
        addSubview(departureTimeLabel2)
        addSubview(departureCityNameLabel)
        addSubview(arrivalAbbreviatedLabel)
        addSubview(arrivalTimeLabel)
        addSubview(arrivalTimeLabel2)
        addSubview(arrivalTimeLabel2)
        addSubview(arrivalCityNameLabel)
        addSubview(whiteBackgroundLabel)
        addSubview(flightLabel)
        addSubview(flightDetailsLabel)
        addSubview(terminalLabel)
        addSubview(terminalDetailsLabel)
        addSubview(gateLabel)
        addSubview(gateDetailsLabel)
        addSubview(seatLabel)
        addSubview(seatDetailsLabel)
        addSubview(dottedTicketImage)
        addSubview(QRImage)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var blueBackgroundLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.myBlue
        label.layer.zPosition = 1
        label.clipsToBounds = true
        return label
    }()
    var flightToLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textColor = UIColor.myGray1
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        return label
    }()
   
    var durationLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.textColor = UIColor.myGrayText1
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    
    let planeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        let image = UIImage(systemName: "airplane")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition =  3
        imageView.tintColor = UIColor.white
        return imageView
    }()
    var stopTypeLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.textColor = UIColor.myGrayText1
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    
    var departureAbbreviatedLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.bold)
        label.textColor = .white
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var departureTimeLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.numberOfLines = 2
        label.sizeToFit()
        return label
    }()
    var departureTimeLabel2: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.numberOfLines = 2
        label.sizeToFit()
        return label
    }()
    var departureCityNameLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor(displayP3Red: 255.0, green: 255.0, blue: 255.0, alpha: 0.7)
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var arrivalAbbreviatedLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.bold)
        label.textColor = .white
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var arrivalTimeLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var arrivalTimeLabel2: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var arrivalCityNameLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor(displayP3Red: 255.0, green: 255.0, blue: 255.0, alpha: 0.7)
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var whiteBackgroundLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.zPosition = 1
        label.clipsToBounds = true
        return label
    }()
    var flightLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .black
        label.text = "Flight".localise()
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var flightDetailsLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textColor = .myBlue
        label.text = ""
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var terminalLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .black
        label.text = "Terminal".localise()
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var terminalDetailsLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textColor = .myBlue
        label.text = "D"
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var gateLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .black
        label.text = "Gate".localise()
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var gateDetailsLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textColor = .myBlue
        label.text = "- -"
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var seatLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .black
        label.text = "Seat".localise()
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var seatDetailsLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textColor = .myBlue
        label.text = "- -"
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    let dottedTicketImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        let image = UIImage(named: "dotted2")
        imageView.image = image
        imageView.contentMode = .scaleToFill
        imageView.layer.zPosition =  3
        return imageView
    }()
    let QRImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.zPosition = 3
        return imageView
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

