//
//  mapViewControll.swift
//  uicontrol
//
//  Created by Vijayakumar on 08/09/14.
//  Copyright (c) 2014 Vijayakumar. All rights reserved.
//

import UIKit
import MapKit

class mapViewControll: UIViewController {

    

    @IBOutlet var mapView : MKMapView = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1
        let location = CLLocationCoordinate2D(
            latitude: 13.060422000000000000,
            longitude: 80.249583000000030000
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Chennai, Tamil Nadu"
        annotation.subtitle = "India"
        mapView.addAnnotation(annotation)
    }

    
}
