//
//  switchView.swift
//  uicontrol
//
//  Created by Vijay on 9/4/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit

class switchView: UIViewController {


    
    @IBOutlet var switchOutlet : UISwitch = nil
    @IBOutlet var switchOutput : UILabel = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchAction(sender : AnyObject) {
        if(switchOutlet.on){
            
            switchOutput.textColor=UIColor.greenColor();
            
            switchOutput.text="ON"
        }else{
            switchOutput.textColor=UIColor.redColor();
            switchOutput.text="OFF"
        }
    }
}
