//
//  MainViewExtension.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var info = data0[indexPath.row]
        if info.newDate == true {
            let cell = tableView.dequeueReusableCell(withIdentifier: MainViewLargeCellID, for: indexPath) as! MainViewLargeCell
            cell.flightListTable = self
            cell.data = info
            cell.selectionStyle = .none
            cell.backgroundColor = UIColor.myBackgroundColor
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: mainViewCellID, for: indexPath) as! MainViewCell
            cell.flightListTable = self
            cell.data = info
            cell.selectionStyle = .none
            cell.backgroundColor = UIColor.myBackgroundColor
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data0.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = data0[indexPath.row]
        self.mainCor.goToSecondPage(data: [data])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var newDate = data0[indexPath.row].newDate
        if newDate == true { return 209 } else { return 157.5 }
    }
}
