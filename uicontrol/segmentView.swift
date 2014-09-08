//
//  segmentView.swift
//  uicontrol
//
//  Created by Vijay on 9/4/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit

class segmentView: UIViewController {

    @IBOutlet var segment : UISegmentedControl = nil
    @IBOutlet var view1 : UIView = nil
    @IBOutlet var view2 : UIView = nil


    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func chnageSegment(sender : AnyObject) {
        if(segment.selectedSegmentIndex==0){
            view1.hidden=false;
            view2.hidden=true;
            
        }else{
            view1.hidden=true;
            view2.hidden=false;
            
        }
        
    }
}
