//
//  resturantTwoObject.swift
//  Hackwich 12_Intro to MapKit_4.7.26
//
//  Created by Jillian Shirai on 4/8/26.
//

import UIKit
import MapKit

class resturantTwoObject: NSObject, MKAnnotation {
    
    let resturantTitle: String?
    let resturantType:String?
    let coordinate: CLLocationCoordinate2D
    init(title: String, type: String, coordinate: CLLocationCoordinate2D )
    {
        self.resturantTitle = title
        self.resturantType = type
        self.coordinate = coordinate
        
        super.init()
        
        
    }
    
    var subtitle: String?
    {
        return resturantType
    }

}
