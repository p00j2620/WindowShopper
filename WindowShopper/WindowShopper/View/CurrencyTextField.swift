//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Arthur Pujols on 7/29/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
	
	override func awakeFromNib() {
		super.awakeFromNib()
		backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2485284675)
		layer.cornerRadius = 5.0
		textAlignment = .center
		
		if let p = placeholder{
			
			let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
			attributedPlaceholder = place
			textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		}
	}
}
