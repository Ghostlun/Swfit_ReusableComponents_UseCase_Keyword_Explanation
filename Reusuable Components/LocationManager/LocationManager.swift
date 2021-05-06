//
//  LocationManager.swift
//  MapHomework
//
//  Created by Yoonha Kim on 4/23/21.
//

import UIKit
import CoreLocation
import Foundation

class LocationManager: NSObject {
    static let shared = LocationManager()
    let manager = CLLocationManager()
    var completion: ((CLLocation) -> Void)?
    
    private weak var controller: UIViewController?
    
    override private init() {}
    
    func getUserLocation(completion: @escaping((CLLocation) -> Void)) {
        self.completion = completion
        manager.requestWhenInUseAuthorization()
        self.manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    // Get location from location
    func getLocationName(with location: CLLocation, completion: @escaping ((String?) -> Void)) {
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(location, preferredLocale: .current) { place, error in
            guard let place = place?.first, error == nil else {
                completion("failed to find place")
                return
            }
            let name = [place.locality, place.thoroughfare, place.administrativeArea, place.subLocality, place.subThoroughfare, place.subAdministrativeArea]
            let compactArray = name.compactMap { $0 }
            let address = compactArray.joined(separator: " ")
            completion(address)
        }
    }
    
    func checkLocationStatus(_ status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            manager.requestAlwaysAuthorization()
            manager.requestWhenInUseAuthorization()
            
        case .restricted, .denied:
            self.openSettings()
            
        case .authorizedAlways, .authorizedWhenInUse:
            manager.startUpdatingLocation()
            
        @unknown default:
            break
        }
    }
    
    private func openSettings() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl)
        } else {
            print("Setting cannot open")
        }
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        manager.stopUpdatingHeading()
        completion?(location)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
}
