//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Centennial Olympic Park",
            cityName: "Atlanta",
            coordinates: CLLocationCoordinate2D(latitude: 33.760042, longitude: -84.393229),
            description: "This unique 22-acre greenspace serves as Georgia's lasting legacy of the Centennial Olympic Games and has become the hub of the Downtown community. Host to concerts, festivals and private events, the Park is open daily from 7:00 a.m. - 10:00 p.m.",
            imageNames: [
                "atlanta-centennialolympicpark-1",
                "atlanta-centennialolympicpark-2",
                "atlanta-centennialolympicpark-3",
            ],
            link: "https://en.wikipedia.org/wiki/Centennial_Olympic_Park"),
        Location(
            name: "Piedmont Park",
            cityName: "Atlanta",
            coordinates: CLLocationCoordinate2D(latitude: 33.786111, longitude: -84.373333),
            description: "Piedmont Park is the premier green space and central gathering place of Atlanta with postcard views of the Midtown Atlanta skyline. The picturesque park features a walking/jogging paths, picnic facilities, playgrounds, tennis courts, public swimming pool, two ponds and dog park.",
            imageNames: [
                "atlanta-piedmontpark-1",
                "atlanta-piedmontpark-2",
                "atlanta-piedmontpark-3",
            ],
            link: "https://en.wikipedia.org/wiki/Piedmont_Park"),
        Location(
            name: "Atlantic Station",
            cityName: "Atlanta",
            coordinates: CLLocationCoordinate2D(latitude: 33.7925, longitude: -84.3963),
            description: "Atlantic Station is a popular shopping and entertainment district in Atlanta, attracting a large number of visitors daily. Its mix of retail stores, restaurants, and entertainment options creates a steady stream of potential customers. The area hosts various events and activities, increasing foot traffic and sales opportunities for vendors. Its central location and accessibility make it a convenient spot for both locals and tourists.",
            imageNames: [
                "atlanta-atlanticstation-1",
                "atlanta-atlanticstation-2",
                "atlanta-atlanticstation-3",
            ],
            link: "https://en.wikipedia.org/wiki/Atlantic_Station,_Atlanta"),
        Location(
            name: "Mercedes Benz Stadium",
            cityName: "Atlanta",
            coordinates: CLLocationCoordinate2D(latitude: 33.755556, longitude: -84.4),
            description: "Mercedes-Benz Stadium in Atlanta is ideal for vending due to its high foot traffic from hosting numerous major events, including NFL and MLS games, concerts, and other large-scale events. The stadium's central location in downtown Atlanta ensures a steady stream of visitors and tourists. Its modern amenities and large crowds provide ample opportunities for vendors to sell a variety of goods. The diverse audience attracts a wide range of vendors catering to different tastes and preferences.",
            imageNames: [
                "atlanta-mercedesbenzstadium-1",
                "atlanta-mercedesbenzstadium-2",
            ],
            link: "https://en.wikipedia.org/wiki/Mercedes-Benz_Stadium"),
        Location(
            name: "State Farm Arena",
            cityName: "Atlanta",
            coordinates: CLLocationCoordinate2D(latitude: 33.757222, longitude: -84.396389),
            description: "State Farm Arena in Atlanta is an excellent location for vending due to its high foot traffic from hosting a variety of major events, including NBA games, concerts, and other large-scale events. The arena's central location in downtown Atlanta attracts both locals and tourists, ensuring a steady stream of potential customers. Its proximity to other attractions like Centennial Olympic Park and the CNN Center enhances the overall flow of people in the area.",
            imageNames: [
                "atlanta-statefarmarena-1",
                "atlanta-statefarmarena-2",
                "atlanta-statefarmarena-3",
            ],
            link: "https://en.wikipedia.org/wiki/State_Farm_Arena"),
    ]
    
}
