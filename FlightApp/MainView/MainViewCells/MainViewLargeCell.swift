//
//  MainViewLargeCell.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import UIKit


class MainViewLargeCell: UITableViewCell {
    var flightListTable: MainViewController?
    
    var data: flightViewModelStruct! {
        didSet {
            departureAbbreviatedLabel.text = data.departure_airport
            arrivalAbbreviatedLabel.text = data.arrival_airport
            topDateLabel.text = data.addedTopDateUpperCase
            departureTimeLabel.text = data.departure_date
            arrivalTimeLabel.text = data.arrival_date
            durationLabel.text = data.scheduled_duration
            departureCityNameLabel.text = data.departure_city
            arrivalCityNameLabel.text = data.arrival_city
            flightToLabel.text = data.addedFlightTo
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        topDateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        topDateLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        topDateLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        topDateLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        whiteBackgroundLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 48).isActive = true
        whiteBackgroundLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        whiteBackgroundLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        whiteBackgroundLabel.heightAnchor.constraint(equalToConstant: 145).isActive = true
        
        flightToLabel.topAnchor.constraint(equalTo: whiteBackgroundLabel.topAnchor, constant: 9).isActive = true
        flightToLabel.leftAnchor.constraint(equalTo: whiteBackgroundLabel.leftAnchor, constant: 16).isActive = true
        flightToLabel.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: 0).isActive = true
        flightToLabel.heightAnchor.constraint(equalToConstant: 19).isActive = true
        
        borderLabel.topAnchor.constraint(equalTo: whiteBackgroundLabel.topAnchor, constant: 37).isActive = true
        borderLabel.leftAnchor.constraint(equalTo: whiteBackgroundLabel.leftAnchor, constant: 0).isActive = true
        borderLabel.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: 0).isActive = true
        borderLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        durationLabel.topAnchor.constraint(equalTo: borderLabel.bottomAnchor, constant: 18).isActive = true
        durationLabel.centerXAnchor.constraint(equalTo: borderLabel.centerXAnchor, constant: 0).isActive = true
        durationLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        planeBorderLabel.topAnchor.constraint(equalTo: durationLabel.bottomAnchor, constant: 15).isActive = true
        planeBorderLabel.leftAnchor.constraint(equalTo: whiteBackgroundLabel.leftAnchor, constant: 88).isActive = true
        planeBorderLabel.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: -88).isActive = true
        planeBorderLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        planeImage.centerYAnchor.constraint(equalTo: planeBorderLabel.centerYAnchor, constant: 0).isActive = true
        planeImage.centerXAnchor.constraint(equalTo: planeBorderLabel.centerXAnchor, constant: 0).isActive = true
        planeImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        planeImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        stopTypeLabel.topAnchor.constraint(equalTo: planeBorderLabel.bottomAnchor, constant: 15).isActive = true
        stopTypeLabel.centerXAnchor.constraint(equalTo: borderLabel.centerXAnchor, constant: 0).isActive = true
        stopTypeLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        departureAbbreviatedLabel.topAnchor.constraint(equalTo: borderLabel.bottomAnchor, constant: 27).isActive = true
        departureAbbreviatedLabel.leftAnchor.constraint(equalTo: whiteBackgroundLabel.leftAnchor, constant: 16).isActive = true
        departureAbbreviatedLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        departureAbbreviatedLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        departureTimeLabel.topAnchor.constraint(equalTo: departureAbbreviatedLabel.bottomAnchor, constant: 6).isActive = true
        departureTimeLabel.leftAnchor.constraint(equalTo: departureAbbreviatedLabel.leftAnchor, constant: 0).isActive = true
        departureTimeLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        departureTimeLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        departureCityNameLabel.topAnchor.constraint(equalTo: departureTimeLabel.bottomAnchor, constant: 8).isActive = true
        departureCityNameLabel.leftAnchor.constraint(equalTo: departureAbbreviatedLabel.leftAnchor, constant: 0).isActive = true
        departureCityNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        departureCityNameLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        arrivalAbbreviatedLabel.topAnchor.constraint(equalTo: departureAbbreviatedLabel.topAnchor, constant: 0).isActive = true
        arrivalAbbreviatedLabel.rightAnchor.constraint(equalTo: whiteBackgroundLabel.rightAnchor, constant: -16).isActive = true
        arrivalAbbreviatedLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        arrivalAbbreviatedLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        arrivalTimeLabel.topAnchor.constraint(equalTo: arrivalAbbreviatedLabel.bottomAnchor, constant: 6).isActive = true
        arrivalTimeLabel.rightAnchor.constraint(equalTo: arrivalAbbreviatedLabel.rightAnchor, constant: 0).isActive = true
        arrivalTimeLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        arrivalTimeLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        arrivalCityNameLabel.topAnchor.constraint(equalTo: arrivalTimeLabel.bottomAnchor, constant: 8).isActive = true
        arrivalCityNameLabel.rightAnchor.constraint(equalTo: arrivalAbbreviatedLabel.rightAnchor, constant: 0).isActive = true
        arrivalCityNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        arrivalCityNameLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.contentView.isUserInteractionEnabled = true
        addSubview(topDateLabel)
        addSubview(whiteBackgroundLabel)
        addSubview(flightToLabel)
        addSubview(borderLabel)
        addSubview(durationLabel)
        addSubview(planeBorderLabel)
        addSubview(planeImage)
        addSubview(stopTypeLabel)
        addSubview(departureAbbreviatedLabel)
        addSubview(departureTimeLabel)
        addSubview(departureCityNameLabel)
        addSubview(arrivalAbbreviatedLabel)
        addSubview(arrivalTimeLabel)
        addSubview(arrivalCityNameLabel)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var topDateLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.medium)
        label.textColor = UIColor.myGrayText1
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
    var borderLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.myBorder
        label.layer.zPosition = 2
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
    var planeBorderLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.myBlue
        label.layer.zPosition = 2
        label.clipsToBounds = true
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
        imageView.tintColor = UIColor.myBlue
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
        label.text = "Non-Stop"
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var departureAbbreviatedLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.myGrayText2
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
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textColor = UIColor.myBlue
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    var departureCityNameLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.layer.zPosition = 2
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.textColor = UIColor.myGrayText2
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
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.myGrayText2
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
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textColor = UIColor.myBlue
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
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.textColor = UIColor.myGrayText2
        label.backgroundColor = UIColor.clear
        label.clipsToBounds = true
        label.sizeToFit()
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
