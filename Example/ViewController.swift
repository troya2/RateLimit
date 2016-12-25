//
//  ViewController.swift
//  Example
//
//  Created by Sam Soffes on 6/9/15.
//  Copyright © 2015 Sam Soffes. All rights reserved.
//

import UIKit
import RateLimit

class ViewController: UIViewController {

	// MARK: - Properties

	@IBOutlet var textLabel: UILabel!


	// MARK: - Actions

	@IBAction func execute(_ sender: AnyObject?) {
		RateLimit.execute(name: "Example", limit: 1) {
			textLabel.text = Date().description
		}
	}
}
