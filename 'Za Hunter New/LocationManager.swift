//
//  LocationManager.swift
//  'Za Hunter
//
//  Created by Millan Bhandari on 7/27/22.
//

import Foundation
import CoreLocation

class LocationManager:NSObject,CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    var geoCoder = CLGeocoder()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

