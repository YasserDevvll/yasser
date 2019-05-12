//
//  Xlocation.swift
//  Locationyy
//
//  Created by Yasser alanazi on 01/09/1440 AH.
//  Copyright © 1440 yas3nzi.com. All rights reserved.
//



import CoreLocation

class XLocation : NSObject , CLLocationManagerDelegate {
    
 static var Shared = XLocation()
    
    var LocationManager : CLLocationManager!
    
    func GetMyLocation() {
        
        LocationManager = CLLocationManager()
        
        LocationManager.delegate = self
        LocationManager.requestWhenInUseAuthorization()
        
        LocationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        
        if CLLocationManager.locationServicesEnabled() {
            LocationManager.startUpdatingLocation()
            
        }
        
        
    }
    
    var Longtude : Double = 0
    var latitude : Double = 0
    var gotLocation : (()->())?
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:
        [CLLocation]) {
       self.Longtude = locations[0].coordinate.longitude
        self.latitude = locations[0].coordinate.latitude
        
        gotLocation?()
        
     
    }
    
    
    
    
}
