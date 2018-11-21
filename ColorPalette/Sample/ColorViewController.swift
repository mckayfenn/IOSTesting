//
//  ColorViewController.swift
//  Sample
//
//  Created by u0939404 on 11/20/18.
//  Copyright © 2018 u0939404. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    override func loadView() {
        view = UILabel()
    }
    
    private var _labelView: UILabel {
        return view as! UILabel
    }
    
    override func viewDidLoad() {
        _labelView.textAlignment = NSTextAlignment.center
        _labelView.font = UIFont.systemFont(ofSize: 35.0)
    }
    
    var color: [UIColor] = [UIColor.black, UIColor.black, UIColor.black] {
        didSet {
            color = [UIColor.black, UIColor.black, UIColor.black]
            var red0: CGFloat = 0.0
            var green0: CGFloat = 0.0
            var blue0: CGFloat = 0.0
            
            var red1: CGFloat = 0.0
            var green1: CGFloat = 0.0
            var blue1: CGFloat = 0.0
            
            var red2: CGFloat = 0.0
            var green2: CGFloat = 0.0
            var blue2: CGFloat = 0.0
            
            color[0].getRed(&red0, green: &green0, blue: &blue0, alpha: nil)
            color[1].getRed(&red1, green: &green1, blue: &blue1, alpha: nil)
            color[2].getRed(&red2, green: &green2, blue: &blue2, alpha: nil)
            
            _labelView.text = "R:\(red0 * 255.0) G:\(green0 * 255.0) B:\(blue0 * 255.0)"
            _labelView.backgroundColor = color[0]
            _labelView.textColor = UIColor.black
        }
    }
}
