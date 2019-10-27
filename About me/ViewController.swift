//
//  ViewController.swift
//  About me
//
//  Created by Alexander Volkov on 27/10/2019.
//  Copyright © 2019 Alexander Volkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let label = UILabel()
		let text = "Hello, I'm Alexander"
		label.text = text
		
		let font = UIFont(name: "Futura-Bold", size: 24)
		label.font = font
		
		let size = label.intrinsicContentSize
		let findFrame = {(size: CGSize) -> CGRect in
			let x = self.view.frame.midX - size.width / 2
			let y = self.view.frame.midY - size.width / 2
			let newFrame = CGRect(x: x, y: y, width: size.width, height: size.height)
			
			return newFrame
		}
		
		let frame = findFrame(size)
		
		label.frame = frame
		self.view.addSubview(label)
	}


}

