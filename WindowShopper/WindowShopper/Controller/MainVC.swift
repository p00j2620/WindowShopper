//
//  ViewController.swift
//  WindowShopper
//
//  Created by Arthur Pujols on 7/29/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

	@IBOutlet weak var wageTxt: CurrencyTextField!
	@IBOutlet weak var priceTxt: CurrencyTextField!
	@IBOutlet weak var hoursRevealedStackView: UIStackView!
	@IBOutlet weak var hoursLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
		calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0.5065043763, blue: 0.006947309438, alpha: 1)
		calculateButton.setTitle("Calculate", for: .normal)
		calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
		calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
		
		wageTxt.inputAccessoryView = calculateButton
		priceTxt.inputAccessoryView = calculateButton
	}

	@objc func calculate() {
		
		if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
			if let itemPrice = Double(priceTxt), let hourlyWage = Double(wageTxt) {
				view.endEditing(true)
				hoursLabel.text = "\(Wage.howManyHours(forWage: hourlyWage, forPrice: itemPrice))"
				hoursRevealedStackView.isHidden = false
				
				
			}
		}
		
	}
	

	@IBAction func clearButtonTapped(_ sender: UIButton) {
		wageTxt.text = ""
		priceTxt.text = ""
		wageTxt.placeholder = "Enter your hourly wage"
		priceTxt.placeholder = "Enter item price"
		hoursRevealedStackView.isHidden = true
	}
	
}

