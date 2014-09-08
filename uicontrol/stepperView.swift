//
//  stepperView.swift
//  uicontrol
//
//  Created by Vijay on 9/4/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit

class stepperView: UIViewController {

    

    @IBOutlet var outputLbl : UILabel = nil
    @IBOutlet var stepperOutlet : UIStepper = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stepperAction(sender : AnyObject) {
        
        outputLbl.text = "\(Int(stepperOutlet.value))"
        //outputLbl.text=sender.value as String;
        
        
    }

}
