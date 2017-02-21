//
//  Interfaces.swift
//  WeatherApp
//
//  Created by Oleksiy Bilyi on 2/18/17.
//  Copyright © 2017 Oleksiy Bilyi. All rights reserved.
//

import UIKit

let temperatureUrl = "http://maps.owm.io:8099/5735d67f5836286b007625cd/{z}/{x}/{y}?hash=ba22ef4840c7fcb08a7a7b92bf80d1fc"
let precipitationUrl = "http://f.maps.owm.io:8099/57456d1237fb4e01009cbb17/{z}/{x}/{y}?hash=ba22ef4840c7fcb08a7a7b92bf80d1fc"
let windSpeedUrl = "http://a.maps.owm.io:8099/5735d67f5836286b0076267b/{z}/{x}/{y}?hash=ba22ef4840c7fcb08a7a7b92bf80d1fc"
let pressureUrl = "http://a.maps.owm.io:8099/5837ee50f77ebe01008ef68d/{z}/{x}/{y}?hash=ba22ef4840c7fcb08a7a7b92bf80d1fc"
let openStreetUrl = "http://c.tile.openstreetmap.org/{z}/{x}/{y}.png"
let googleMapUrl = "http://mt0.google.com/vt/x={x}&y={y}&z={z}"

private let alerts = ["Test polygon"]

enum MapsOptions: String {
    case DefaultMap = "Default"
    case GoogleMap = "Google map"
    case OpenStreetMap = "Open street map"
    case NoneTile = "None"
    case TemperatureTile = "Temperature"
    case WindSpeedTile = "Wind speed"
    case PrecipitationTile = "Precipitation"
    case PressureTile = "Pressure"
    case NoneAnnotations = "Clean"
    case CitiesAnnotations = "Cities Annotations"
    static let allValues = [ DefaultMap, GoogleMap, OpenStreetMap, TemperatureTile, WindSpeedTile, PrecipitationTile, PressureTile, CitiesAnnotations]
}

protocol WeatherParserInterface {
    func getWeatherConditionsFor(data : Data) -> WeatherCondition
}

protocol WeatherDataInterface {
    func getCurrentWeatherFor(latitude: Double, longitude: Double, completionHandler: @escaping (_ conditions: WeatherCondition) -> Void )
}
