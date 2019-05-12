//
//  WeatherObject.swift
//  Weather
//
//  Created by Yasser alanazi on 07/09/1440 AH.
//  Copyright © 1440 yas3nzi.com. All rights reserved.
//

import Foundation

class weatherObject {
    var time: Int?
    var summary: String?
    var icon: String?
    var nearestStormDistance : String?
    var nearestStormBearing : Int?
    var precipIntensity : Int?
    var precipProbability : Int?
    var temperature: Double?
    var apparentTemperature : Double?
    var dewPoint : Double?
    var humidity : Double?
    var pressure : Double?
    var windSpeed : Double?
    var windGust: Double?
    var windBearing: Int?
    var cloudCover : Double?
    var uvIndex : Int?
    var visibility: Double?
    var ozone: Double?

    init (Dictionary: [String: AnyObject ]) {
        self.time = Dictionary ["time" ] as? Int
        self.summary = Dictionary[" summary "] as? String
        self.icon = Dictionary["icon" ] as? String
        self.nearestStormDistance = Dictionary[ "nearestStormDistance " ] as? String
        self.nearestStormBearing = Dictionary["nearestStormBearing " ] as? Int
        self.precipIntensity = Dictionary[ "precipIntensity" ] as? Int
        self.precipProbability = Dictionary[ "precipProbability"] as? Int
        self.temperature = Dictionary [" temperature" ] as? Double
        self.apparentTemperature = Dictionary["apparentTemperature " ] as? Double
        self.dewPoint = Dictionary[ " dewPoint "] as? Double
        self.humidity = Dictionary[ " humidity" ] as? Double
        self.pressure = Dictionary[ " pressure " ] as? Double
        self.windSpeed = Dictionary [ "windSpeed"] as? Double
        self.windGust = Dictionary[ "windGust "] as? Double
        self.windBearing = Dictionary[ "windBearing " ] as? Int
        self.cloudCover = Dictionary[ "cloudCover " ] as? Double
        self.uvIndex = Dictionary["uv Index" ] as? Int
        self.visibility = Dictionary [ "visibility"] as? Double
        self.ozone = Dictionary[ "ozone"] as? Double
    }
}
