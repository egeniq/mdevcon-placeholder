//
//  ConferenceStub.m
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//

#import "Conference-Protected.h"

@implementation Conference

@synthesize venueModel=venueModel_, speakerModel=speakerModel_, attendeeModel=attendeeModel_;

- (id)initWithVenueModel:(VenueModel *)venueModel 
            speakerModel:(SpeakerModel *)speakerModel
           attendeeModel:(AttendeeModel *)attendeeModel {
    self = [super init];
    if (self) {
        self.venueModel = venueModel;
        self.speakerModel = speakerModel;
        self.attendeeModel = attendeeModel;
    }
    
    return self;
}

- (NSDate *)determineConferenceDateForYear:(NSUInteger)year month:(NSUInteger)month {
    // Derived conferences should implement this.
    return nil;
}

- (void)organizeConference {
    // Derived conferences should implement this.
    return;
}

- (void)organizeConferenceUsingBlock:(BOOL(^)())organizationBlock onComplete:(void(^)())completionBlock {
    if (organizationBlock()) {
        completionBlock();
    }
}

- (void)bloodSweatAndTears {
    // run around, panicing.
}

- (BOOL)organizationIsComplete {
    return NO;
}


@end
