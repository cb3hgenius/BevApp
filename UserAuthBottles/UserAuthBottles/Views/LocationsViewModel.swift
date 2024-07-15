//
//  LocationsViewModel.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/4/24.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    // Current Location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of Locations
    @Published var isShowingLocationsList: Bool = false
    
    // Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations[0]
        self.updateMapRegion(location: self.mapLocation)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span:  mapSpan)
        }
    }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            isShowingLocationsList.toggle()
        }
    }
    
    func showNextlocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            isShowingLocationsList = false
        }
    }
    
    func nextButtonPressed() {
        guard let currentIndex = locations.firstIndex(where: { mapLocation == $0 }) else {
            print("Should not find current index in locations array! Should never happen.")
            return
        }
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            showNextlocation(location: locations[0])
            return
        }
        let nextLocation = locations[nextIndex]
        showNextlocation(location: nextLocation)
    }
}
