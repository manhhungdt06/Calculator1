//
//  ViewController.swift
//  Calculator
//
//  Created by techmaster on 10/27/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rangeInputAndRetTf: NSLayoutConstraint!
    @IBOutlet weak var rangeRetTfAndMiddleView: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        updateContraints()
    }
    
    func updateContraints() -> Void {
        let scale = UIScreen.main.bounds.size.height / 667
        rangeRetTfAndMiddleView.constant = UIScreen.main.bounds.size.height > 480 ?rangeRetTfAndMiddleView.constant * scale : rangeRetTfAndMiddleView.constant * 0.1
        rangeInputAndRetTf.constant = UIScreen.main.bounds.size.height > 480 ?rangeInputAndRetTf.constant * scale : rangeInputAndRetTf.constant * 0.1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

