//
//  AppDelegate.swift
//  Weather
//
//  Created by Yasser alanazi on 07/09/1440 AH.
//  Copyright © 1440 yas3nzi.com. All rights reserved.
//
import Foundation
import  Alamofire
class Weather {
    
    static var BaseURL = "https://api.darksky.net/forecast/\("61189e615e3f362f880f7b380ded838b")"
    static func generateURL(Longtude : Double , Latitude : Double)-> String {
        return BaseURL + "\(Longtude),\(Latitude)"
        
        func GetCurrentWeather(completion : (_ Weather : weatherObject)->()) {
        
        XLocation.Shared.GetMyLocation()
            XLocation.Shared.gotLocation = {
                _ = generateURL(Longtude: XLocation.Shared.Longtude, Latitude: XLocation.Shared.latitude)
                
                
            }
            
            
        
            
            
        }
    
    
    
    
    
    
    
    
    
    
    
    
}
}
