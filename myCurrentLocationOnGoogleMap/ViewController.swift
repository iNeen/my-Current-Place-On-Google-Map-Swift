//
//  ViewController.swift
//  myCurrentLocationOnGoogleMap
//
//  Created by Nina Ko on ٢ جما٢، ١٤٣٨ هـ.
//  Copyright © ١٤٣٨ Nina Ko. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController,CLLocationManagerDelegate {
    
    
    //Outlets
    @IBOutlet var MapView: GMSMapView!
    
    //Variables
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeTheLocationManager()
        self.MapView.isMyLocationEnabled = true
    }

    func initializeTheLocationManager()
    {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        var location = locationManager.location?.coordinate
        
        cameraMoveToLocation(toLocation: location)
        
    }
    
    
    
    func cameraMoveToLocation(toLocation: CLLocationCoordinate2D?) {
        if toLocation != nil {
            MapView.camera = GMSCameraPosition.camera(withTarget: toLocation!, zoom: 15)
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    


}

