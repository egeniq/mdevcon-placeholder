//
//  ConferenceStub.h
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VenueModel;
@class SpeakerModel;
@class AttendeeModel;

@interface Conference : NSObject

- (id)initWithVenueModel:(VenueModel *)venueModel 
            speakerModel:(SpeakerModel *)speakerModel
           attendeeModel:(AttendeeModel *)attendeeModel;

- (void)organizeConference;

@end
