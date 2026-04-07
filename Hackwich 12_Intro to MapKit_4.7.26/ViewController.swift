//
//  ViewController.swift
//  Hackwich 12_Intro to MapKit_4.7.26
//
//  Created by Jillian Shirai on 4/7/26.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    //inital location
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadius: CLLocationDistance = 10000
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        //add our first resturant annotation to the map
        let resturantOne = resturantObject(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        mapView.addAnnotation(resturantOne)
    }

    func centerMapOnLocation (location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    
    }
    
    
    
    
}

