//
//  Extras.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import UIKit
import Combine
import Foundation

extension String {
    func localise() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localizable",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
    
    func makeStringToLowerBound(s: String?, lowerBound: String.Index) -> String {
        return String(s?[..<lowerBound] ?? "")
    }
    
    
    func makeStoLowerBoundRange(s: String?, lowerbound: String) -> String {
        if let range = s?.range(of: lowerbound) {
            return String(s?[..<range.lowerBound] ?? "")
        } else { return "" }
    }
    
    func makeStringBetween(s: String, A: Int, B: Int) -> String {
        if s.count > B {
            return String(s[s.index(s.startIndex, offsetBy: A)...s.index(s.startIndex, offsetBy: B)])
        } else { return "" }
    }
    
    func SReFormatDate(s: String, form1: DateFormatter, form2: DateFormatter) -> String {
        if let date = form1.date(from: s) {
            return form2.string(from: date)
        } else { return s }
    }
}

extension Date {
    func DateFromString(s: String, form: DateFormatter) -> Date {
        if let date = form.date(from: s) {
            return date
        } else { return Date() }
    }
}

extension UITextField {
    var textPublisher: AnyPublisher<String, Never> {
        NotificationCenter.default
            .publisher(for: UITextField.textDidChangeNotification, object: self)
            .compactMap { $0.object as? UITextField }
            .map { $0.text ?? "" }
            .eraseToAnyPublisher()
    }
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
extension UIColor {
    static let myRed = UIColor(r: 212, g: 1, b: 25)               // #d40119
    static let myGray1 = UIColor(r: 114, g: 114, b: 114)          // #727272
    static let myBorder = UIColor(r: 224, g: 224, b: 224)         // #e0e0e0
    static let myGrayText1 = UIColor(r: 185, g: 188, b: 185)      // #b9bcb9
    static let myBlue = UIColor(r: 0, g: 72, b: 183)              // #0048b7
    static let myGrayText2 = UIColor(r: 118, g: 118, b: 118)      // #767676
    static let myBackgroundColor = UIColor(r: 250, g: 250, b: 250)// #fafafa
}



class Alert {
    class func show(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}

struct Constraints {
    static let flightURL = URL(string: "https://firebasestorage.googleapis.com/v0/b/flight-centre-brand.appspot.com/o/developer-test-flights-list.json?alt=media&token=81d93056-9c7f-451d-94b6-3e88eb6fa9ad")!
}
enum AsyncError: Error {
    case message(String)
}

extension UIFont {
   static let standardFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
}
