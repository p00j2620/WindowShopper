//
//  Wage.swift
//  WindowShopper
//
//  Created by Arthur Pujols on 7/30/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import Foundation

class Wage {
	class func howManyHours(forWage wage: Double, forPrice price: Double) -> Int {
		return Int(ceil(price / wage))
	}
}
