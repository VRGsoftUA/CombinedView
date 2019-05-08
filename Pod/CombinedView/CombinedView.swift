//
//  CombineView.swift
//  CombineView
//
//  Created by Anna Sahaidak on 5/6/19.
//  Copyright © 2019 VRG Soft. All rights reserved.
//

import UIKit

class CombinedView: UIView {
	
	@IBInspectable var cornerRadius: CGFloat {
		get {
			return layer.cornerRadius
		}
		set {
			layer.cornerRadius = newValue
			layer.masksToBounds = true
		}
	}
	
	@IBInspectable var startAngle: Double = 135
	
	
	// MARK: - Init
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setup()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		setup()
	}
	
	
	// MARK: - Logic
	
	func combine(images: [UIImage?]) {
		
		let degrees = Double(Int(round(360.0/Double(images.count))))
		let angleDelta = (degrees * Double.pi)/180
		let radius = round(distance(center, frame.origin))
		
		var angle: Double = (startAngle * Double.pi)/180
		
		for (_, value) in images.enumerated() {
			
			let imageView = UIImageView(frame: bounds)
			imageView.image = value
			imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
			imageView.contentMode = contentMode
			addSubview(imageView)
			
			let path = UIBezierPath()
			path.move(to: imageView.center)
			path.addArc(withCenter: imageView.center, radius: radius, startAngle: CGFloat(angle), endAngle: CGFloat(angle + angleDelta), clockwise: true)
			path.close()
			
			setupLayer(for: imageView, path: path)
			
			angle += angleDelta
		}
	}
	
	private func setupLayer(for view: UIView, path: UIBezierPath) {
		
		let shapeLayer = CAShapeLayer()
		
		let maskLayer = CALayer()
		maskLayer.frame = view.bounds
		
		shapeLayer.frame = view.bounds
		shapeLayer.path = path.cgPath

		maskLayer.addSublayer(shapeLayer)
		
		view.layer.mask = maskLayer
	}
	
	private func distance(_ a: CGPoint, _ b: CGPoint) -> CGFloat {
		
		let xDist = a.x - b.x
		let yDist = a.y - b.y
		
		return CGFloat(sqrt(xDist * xDist + yDist * yDist))
	}
	
	private func setup() {
		
		layer.masksToBounds = true
	}
}
