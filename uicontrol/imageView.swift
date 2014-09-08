//
//  imageView.swift
//  uicontrol
//
//  Created by Vijay on 9/4/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit

class imageView: UIViewController {

    

    @IBOutlet var imageView : UIImageView = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        var imgURL: NSURL = NSURL(string: "http://cdn0.mos.techradar.futurecdn.net//art/mobile_phones/iPhone/iOS%208/interactive-notifications-580-100.jpg")
        
        // Download an NSData representation of the image at the URL
        let request: NSURLRequest = NSURLRequest(URL: imgURL)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: {(response: NSURLResponse!,data: NSData!,error: NSError!) -> Void in
            if error == nil {
                var image = UIImage(data: data)
              
                    self.imageView.image = image
                
            }
            else {
                println("Error: \(error.localizedDescription)")
            }
            })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
