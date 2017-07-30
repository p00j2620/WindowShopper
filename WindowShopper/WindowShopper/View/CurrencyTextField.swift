//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Arthur Pujols on 7/29/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
	
	override func draw(_ rect: CGRect) {
		let size: CGFloat = 38
		let currencyLabel = UILabel(frame: CGRect(x: 7, y: (frame.size.height / 2) - size / 2, width: size, height: size))
		currencyLabel.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3495558647)
		currencyLabel.textAlignment = .center
		currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
		currencyLabel.layer.cornerRadius = 5.0
		currencyLabel.clipsToBounds = true
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		formatter.locale = .current
		currencyLabel.text = formatter.currencySymbol
		addSubview(currencyLabel)
	}
	
	override func prepareForInterfaceBuilder() {
		customizeView()
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		customizeView()
		
		if let p = placeholder{
			
			let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
			attributedPlaceholder = place
			textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.5)
		}
	}
	
	func customizeView() {
		backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2485284675)
		layer.cornerRadius = 5.0
		textAlignment = .center
		clipsToBounds = true
	}
}
