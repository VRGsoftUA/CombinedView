//
//  ViewController.swift
//  CombinedView
//
//  Created by Anna Sahaidak on 5/8/19.
//  Copyright © 2019 VRG Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var combinedView: CombinedView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = "Demo"
		
		combinedView.cornerRadius = 4
		combinedView.startAngle = 0
		combinedView.contentMode = .scaleAspectFill
		
		combinedView.combine(images: [UIImage(named: "panda"), UIImage(named: "racoon"), UIImage(named: "tiger"), UIImage(named: "animal")])
	}
}

