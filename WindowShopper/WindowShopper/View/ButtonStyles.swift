//
//  buttonStyles.swift
//  WindowShopper
//
//  Created by Arthur Pujols on 7/30/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable

class buttonStyles: UIButton {
	
	override func prepareForInterfaceBuilder() {
		customizeView()
	}
	
	
	
	func customizeView() {
		layer.cornerRadius = 5.0
		clipsToBounds = true
		
	}
}
