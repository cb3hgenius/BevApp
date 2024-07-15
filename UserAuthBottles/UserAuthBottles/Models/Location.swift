//
//  Location.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/4/24.
//

import Foundation
import MapKit



struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        name + cityName
    }
}

extension Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
