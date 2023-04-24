//
//  QRCodeGen.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import UIKit

func generateQRCode(_ string: String) -> UIImage {
    if !string.isEmpty {
        let data = string.data(using: String.Encoding.ascii)
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(data, forKey: "inputMessage")
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let output = filter?.outputImage?.transformed(by: transform)
        if let output = output { return UIImage(ciImage: output) } else { return UIImage() }
    } else {
        return UIImage()
    }
}
