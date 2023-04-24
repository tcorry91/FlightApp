//
//  MainViewExtensionTableView.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import UIKit

extension MainViewController {
    
    func setUpTableViewDetails() {
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.register(MainViewCell.self, forCellReuseIdentifier: mainViewCellID)
        tableView.register(MainViewLargeCell.self, forCellReuseIdentifier: MainViewLargeCellID)
    }
    func setUpTableView() {
        view.addSubview(generalButton)
        generalButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        generalButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        generalButton.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        generalButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(generalButton2)
        generalButton2.topAnchor.constraint(equalTo: generalButton.topAnchor, constant: 0).isActive = true
        generalButton2.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        generalButton2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        generalButton2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(searchBarBackground)
        searchBarBackground.topAnchor.constraint(equalTo: generalButton.bottomAnchor, constant: 5).isActive = true
        searchBarBackground.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        searchBarBackground.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        searchBarBackground.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(searchImage)
        searchImage.centerYAnchor.constraint(equalTo: self.searchBarBackground.centerYAnchor, constant: 0).isActive = true
        searchImage.leftAnchor.constraint(equalTo: self.searchBarBackground.leftAnchor, constant: 20).isActive = true
        searchImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
        searchImage.heightAnchor.constraint(equalToConstant: 25).isActive = true

        view.addSubview(xForSearchImage)
        xForSearchImage.centerYAnchor.constraint(equalTo: searchBarBackground.centerYAnchor, constant: 0).isActive = true
        xForSearchImage.rightAnchor.constraint(equalTo: searchBarBackground.rightAnchor, constant: -10).isActive = true
        xForSearchImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        xForSearchImage.heightAnchor.constraint(equalToConstant: 35).isActive = true

        view.addSubview(generalTextField)
        generalTextField.centerYAnchor.constraint(equalTo: self.searchBarBackground.centerYAnchor, constant: 3).isActive = true
        generalTextField.leftAnchor.constraint(equalTo: self.searchImage.rightAnchor, constant: 20).isActive = true
        generalTextField.rightAnchor.constraint(equalTo: self.xForSearchImage.leftAnchor, constant: -10).isActive = true
        generalTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        self.view.addSubview(self.tableView)
        tableView.topAnchor.constraint(equalTo: generalTextField.bottomAnchor, constant: 5).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
}
