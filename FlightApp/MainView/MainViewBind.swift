//
//  MainViewBind.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import UIKit
import Combine

extension MainViewController {
    
    // BINDINGS
//    func bind() {
//        $value.sink { self.navigationItem.title = $0.localise() }.store(in: &cancellables)
//        $departureColor.sink { self.generalButton.backgroundColor = $0 }.store(in: &cancellables)
//        $arrivalColor.sink { self.generalButton2.backgroundColor = $0 }.store(in: &cancellables)
//    }
//
//    func changeState(type: FlightSearch) {
//        searchType = type
//        type == .departure ? makeDepColor(color: .lightGray) : makeDepColor(color: .white)
//        type == .arrival ?  makeArrivColor(color: .lightGray) : makeArrivColor(color: .white)
//        type == .arrival ?  makeValueChange(s: "Arrival City") : makeValueChange(s: "Departure City")
//    }
    
    //
//    @objc func GoToDeparture() {
////        print("departure tapped")
////        generalButton.backgroundColor = UIColor.lightGray
////        generalButton2.backgroundColor = UIColor.white
////        changeState(type: .departure)
////        self.generalTextField.text = ""
////        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
////            self.textInput(text: "", type: self.searchType)
////           self.tableView.reloadData()
//        }
////    }
////
//    @objc func GoToArrival() {
////        print("arrival tapped")
////        generalButton2.backgroundColor = UIColor.lightGray
////        generalButton.backgroundColor = UIColor.white
////        changeState(type: .arrival)
////        self.generalTextField.text = ""
////        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
////            self.textInput(text: "", type: self.searchType)
////           self.tableView.reloadData()
//
//        }
    
    
    @objc func GoToDeparture() {  changeState(type: .departure) }
    @objc func GoToArrival() {  changeState(type: .arrival) }
    
    }
    

