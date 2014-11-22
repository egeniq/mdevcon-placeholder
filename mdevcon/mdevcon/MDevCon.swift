// Mobile Developers Conference Organization Placeholder
//
// If you can read this page then bookmark it: you'll love this conference.
// If you think this code should have an Android version, bookmark this page,
// you'll love this conference too.
// If you think this code should have an Web version, bookmark this page,
// you'll love this conference too.
//
// If you find the debug session too hard to follow, follow @mdevcon on twitter
// for conference news.
//
// For conference info, email mdevcon@egeniq.com
//
// The full placeholder code is at github: http://github.com/egeniq/mdevcon-placeholder
//
// If you find a bug or flaw in this code: jobs@egeniq.com
//

import UIKit

class MobileDevelopersConference : Event {
    init() {
        let dateString = "2015-03-06"
        let venue = Venue(name: "Tuschinski Theater")
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.dateFromString(dateString)!
        
        super.init(date: date, venue: venue)
    }
    
    func prepareConference(completion: () -> Void) {
        if venue.bookVenueForDate(date) {
            for attendee in attendees {
                attendee.notifyAboutEvent(self)
            }
            
            for speaker in speakers {
                speaker.callForPapers()
            }
            
            let timeToWaitUntilEvent = -self.date.timeIntervalSinceNow
            dispatch_after(UInt64(Double(NSEC_PER_SEC) * timeToWaitUntilEvent), dispatch_get_main_queue(), completion)
        }
    }
    
    func start() {
        venue.open()
        for attendee in attendees {
            attendee.confirmPresence()
            attendee.learn()
            attendee.haveFun()
            attendee.meetPeople()
        }
    }
}
