swift-map-segment-switch
========================
This sample code explain about some basic UI controllers in new iOS 8 swift language. i was covered following UI controls in this sample code

* UILable
* UISwitch
* UIStepper
* UIImageView
* UIWebView
* UIButton & action
* MKMapView
* UITableView
* UITableViewCell
* UISegmentedControl

UIImageView
===========
	var imgURL: NSURL = NSURL(string: "http://cdn0.mos.techradar.futurecdn.net//art/mobile_phones/iPhone/iOS%208/interactive-notifications-580-100.jpg")
        
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

MKMapView
=========
sample code
	let location = CLLocationCoordinate2D(
            latitude: 13.060422000000000000,
            longitude: 80.249583000000030000
        )
     
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Chennai, Tamil Nadu"
        annotation.subtitle = "India"
        mapView.addAnnotation(annotation)

UIWebView
=========

	loadingView.hidden=true
        let requestURL=NSURL(string: url)
        let request=NSURLRequest(URL: requestURL)
        webview.loadRequest(request)
        


