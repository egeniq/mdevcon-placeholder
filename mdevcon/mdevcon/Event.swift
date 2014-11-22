//
//  Event.swift
//  MDevCon
//
//  Created by Berik Visschers on 11-21.
//  Copyright (c) 2014 Berik Visschers. All rights reserved.
//

import UIKit

import CoreLocation

protocol Speaker {
    var name: String { get }
    var topic: String { get }
    func callForPapers()
}

class Venue {
    var name: String
    var location: CLLocation?
    init(name: String) {
        self.name = name
    }
    
    func bookVenueForDate(date: NSDate) -> Bool {
        return true
    }
    
    func open() {
        
    }
    
    func getLocationByName() {
        CLGeocoder().geocodeAddressString(name, completionHandler: { (placemarks, error) -> Void in
            if let placemark = placemarks[0] as? CLPlacemark {
                self.location = placemark.location
            }
        })
    }
}

protocol Attendee {
    func notifyAboutEvent(event: Event)
    func confirmPresence()
    func learn()
    func haveFun()
    func meetPeople()
}

class Event {
    var date: NSDate
    var venue: Venue
    var speakers = Array<Speaker>()
    var attendees = Array<Attendee>()
    
    init(date: NSDate, venue: Venue) {
        self.date = date
        self.venue = venue
    }
}
