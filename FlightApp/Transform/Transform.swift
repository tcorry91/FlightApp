//
//  CleanData.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import Combine

struct Transform {
    func refactorAndInsertIntoViewModel(data: [flightStruct]) -> Future <[flightViewModelStruct], AsyncError> {
        var newDate = false; var dateHoldingString = ""; var array = [flightViewModelStruct]()
        
        data.forEach {
            let flight_number =  ($0.airline_code ?? "") + ($0.flight_number ?? "")
            var departure_city = "".makeStoLowerBoundRange(s: $0.departure_city, lowerbound: ",")
            var arrival_city = "".makeStoLowerBoundRange(s: $0.arrival_city, lowerbound: ",")
            var addedFlightTo = "Flight To \(arrival_city)"
            var scheduled_duration = $0.scheduled_duration?
                .replacingOccurrences(of: "hr", with: " hr ")
                .replacingOccurrences(of: "min", with: " min")
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let dateFormatterUse = DateFormatter()
            dateFormatterUse.dateFormat = "EEE, dd MMM yyyy"
            var addedDateArrivingLowerCase = ""; var arrival_date = ""
            if let dateArr = $0.arrival_date {
                arrival_date = "".makeStringBetween(s: dateArr, A: 11, B: 15)
                addedDateArrivingLowerCase = "".SReFormatDate(s: "".makeStringBetween(s: dateArr, A: 0, B: 9), form1: dateFormatter, form2: dateFormatterUse)
            }
            var refactoredDeparture_date = ""; var addedTopDateUpperCase = ""; var addedDateLowerCase = ""
            var departure_date_as_Date = Date()
            if let dateDep = $0.departure_date {
                var numberToManip = "".makeStringBetween(s: dateDep, A: 0, B: 9)
                departure_date_as_Date = Date().DateFromString(s: numberToManip, form: dateFormatter)
                addedDateLowerCase = "".SReFormatDate(s: numberToManip, form1: dateFormatter, form2: dateFormatterUse)
                addedTopDateUpperCase = addedDateLowerCase.uppercased()
                refactoredDeparture_date = "".makeStringBetween(s: dateDep, A: 11, B: 15)
            }
            var input = flightViewModelStruct(departure_date: refactoredDeparture_date, airline_code: $0.airline_code, flight_number: flight_number, departure_city: departure_city, departure_airport: $0.departure_airport, arrival_city: arrival_city, arrival_airport: $0.arrival_airport, scheduled_duration: scheduled_duration, arrival_date: arrival_date, newDate: newDate, addedFlightTo: addedDateLowerCase, addedTopDateUpperCase: addedTopDateUpperCase, addedDateLowerCase: addedDateLowerCase, addedDateArrivingLowerCase: addedDateArrivingLowerCase, departure_date_as_Date: departure_date_as_Date)
            array.append(input)
        }
        array = array.sorted { $0.departure_date_as_Date < $1.departure_date_as_Date }
        var date = Date(); var dateBool = false
        func boolReturn(b: Bool) { dateBool = b }
        if array.count != 0 {
            for i in 0...array.count - 1 {
                array[i].departure_date_as_Date == date ?  boolReturn(b: false) : boolReturn(b: true)
                array[i].newDate = dateBool
                date = array[i].departure_date_as_Date
            }
        }
        return Future() { promise in
            array.count < 1 ? promise(Result.failure(AsyncError.message("Re fail"))) : promise(Result.success(array)); array.removeAll()
        }
    }
}
