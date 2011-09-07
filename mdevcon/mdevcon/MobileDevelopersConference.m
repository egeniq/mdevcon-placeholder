//
//  MobileDevelopersConference.m
//  mdevcon
//
//  Mobile Developer's Conference Organization Placeholder
//
//  If you can read this page then bookmark it: you'll love this conference.
//  If you think this code should have an Android version, bookmark this page, 
//  you'll love this conference too.
//
//  If you find a bug or flaw in this code: jobs@egeniq.com
//
//  Copyright 2011 Egeniq. All rights reserved.
//

#import "MobileDevelopersConference.h"

#import "AttendeeModel.h"
#import "VenueModel.h"
#import "SpeakerModel.h"
#import "Attendee.h"

@implementation MobileDevelopersConference

- (void)organizeConference {
         
    // A 'self organizing conference', that'd be neat.
    [self organizeConferenceUsingBlock:^{
        NSDate *date = [self determineConferenceDateForYear:2010 month:3];
       
        if (date == nil) {
            // Can't organize yet if we don't know the date.
            return NO;
        }
        
        if ([self.venueModel bookVenueForDate:date]) {
            [self.attendeeModel openForRegistration];
        }
        
        [self.speakerModel runCallForPapersOnComplete:^(NSArray *speakers) {
            [self.speakerModel confirmSpeakers:speakers];
            [self.attendeeModel announceSpeakers:speakers];
                        
        }];
        
        while (![self organizationIsComplete]) {
            [self bloodSweatAndTears];
        }
        
        return YES;

    } onComplete:^{
        [self.venueModel openConference:self];
        [[self.attendeeModel confirmedAttendees] enumerateObjectsUsingBlock:^(id attendee, NSUInteger index, BOOL *stop) {
            [(Attendee *)attendee learn];
            [(Attendee *)attendee haveFun];
            [(Attendee *)attendee meetPeople];
        }];
    }];
    
}
     
- (void) dealloc {

    self.attendeeModel = nil;
    self.venueModel = nil;
    self.speakerModel = nil;
    [super dealloc];
    
}

@end

