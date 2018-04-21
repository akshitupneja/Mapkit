//
//  ViewController.swift
//  MAPD2018_Mapkit
//
//  Created by Akshit Upneja on 2018-04-16.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var lattitude: UITextField!
    
    @IBOutlet weak var longitude: UITextField!
    
    @IBAction func goToLocation(_ sender: UIButton) {
    
        let long = Double(longitude.text!)
        let lat = Double(lattitude.text!)
        
        let location = CLLocationCoordinate2D(latitude: lat!,
                                              longitude: long!)
 
        let span = MKCoordinateSpanMake(5.0, 5.0)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Location found"
        annotation.subtitle = "Yay, You're here"
        mapView.addAnnotation(annotation)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let location = CLLocationCoordinate2D(latitude: 51.50007773,
                                              longitude: -0.1246402)
        
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

