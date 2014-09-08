//
//  ViewController.swift
//  uicontrol
//
//  Created by Vijay on 9/4/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView = nil
    var tableData=["Simple Form","Segment View","Switch","Stepper","UIImageView","Webview","Mapview"];
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        
        var cell:CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell") as CustomTableViewCell
        
        
        cell.title.text=tableData[indexPath.row] as String
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        if(indexPath.row==0){
            performSegueWithIdentifier("form", sender: self.view)
        }else if(indexPath.row==1){
            performSegueWithIdentifier("segmentView", sender: self.view)
        }else if(indexPath.row==2){
            performSegueWithIdentifier("switchView", sender: self.view)
        }else if(indexPath.row==3){
            performSegueWithIdentifier("stepper", sender: self.view)
        }else if(indexPath.row==4){
            performSegueWithIdentifier("imageView", sender: self.view)
        }else if(indexPath.row==5){
            performSegueWithIdentifier("webview", sender: self.view)
        }else if(indexPath.row==6){
            performSegueWithIdentifier("mapView", sender: self.view)
        }
        println("Hai selezionato: \(indexPath.row)!")
    }
    
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
        
        return 60.0;
        
    }

    
    

}

