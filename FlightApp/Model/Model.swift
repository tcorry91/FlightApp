//
//  Model.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation

struct flightStruct:Codable {
    var departure_date: String?
    var airline_code: String?
    var flight_number: String?
    var departure_city: String?
    var departure_airport: String?
    var arrival_city: String?
    var arrival_airport: String?
    var scheduled_duration: String?
    var arrival_date: String?
}

