//
//  FormView.swift
//  uicontrol
//
//  Created by Vijay on 9/4/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit

class FormView: UIViewController {

    @IBOutlet var nameTxt : UITextField = nil
    @IBOutlet var passwordTxt : UITextField = nil
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ClearAllText(sender : AnyObject) {
        nameTxt.text=""
        passwordTxt.text=""
        
    }
    
    @IBAction func submitText(sender : AnyObject) {
        
        var name="Name : \(nameTxt.text) Password : \(passwordTxt.text)"
        
        let alert = UIAlertController(title: "Submited Data", message: name, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
