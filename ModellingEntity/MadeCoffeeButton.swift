//
//  MadeCoffeeButton.swift
//  ModellingEntity
//
//  Created by Delvin on 15/05/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class MadeCoffeeButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 15
        backgroundColor = .black
        setTitleColor(.red, for: .normal)
    }

}
