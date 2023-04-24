//
//  FlightDetailsTableExtension.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import UIKit

extension FlightDetailsVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var info = data4[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: FlightDetailsCellID, for: indexPath) as! FlightDetailsCell
        cell.data = info
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.myBackgroundColor
        if let flightInfo = info.flight_number { var bar = generateQRCode(flightInfo); cell.QRImage.image = bar; }
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data4.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 750
    }
}
