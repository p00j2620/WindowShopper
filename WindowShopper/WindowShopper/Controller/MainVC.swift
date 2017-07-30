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
		print("We did it!")
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

