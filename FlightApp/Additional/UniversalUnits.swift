//
//  UniversalUnits.swift
//  FlightCenterRebuiltForGit
//
//  Created by Corry Timothy on 20/4/2023.
//

import Foundation
import UIKit

class UniversalButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.textAlignment = .center
        setTitleColor(UIColor.black, for: .normal)
        titleLabel?.font = UIFont(name: "Arial", size: 15)
        titleLabel?.numberOfLines = 2
        layer.zPosition = 2
        clipsToBounds = true
        alpha = 1.0
        isEnabled = true
    }
}

class tableCustom: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setUpTable()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpTable()
    }
    func setUpTable() {
        layer.zPosition = 1
        backgroundColor = UIColor.myBackgroundColor
        translatesAutoresizingMaskIntoConstraints = false
        separatorStyle = UITableViewCell.SeparatorStyle.none
        showsVerticalScrollIndicator = false
    }
}

class CuBenefitsLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    func setupButton() {
        font = UIFont(name: "Arial", size: 13)
        textColor = UIColor.gray
        text = "Discounts"
        backgroundColor = .clear
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
        layer.zPosition = 10
    }
}
