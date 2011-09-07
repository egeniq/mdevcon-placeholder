//
//  MobileDevelopersConference-Protected.h
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//

#import "Conference.h"

@interface Conference ()

@property (nonatomic, retain) AttendeeModel *attendeeModel;
@property (nonatomic, retain) VenueModel *venueModel;
@property (nonatomic, retain) SpeakerModel *speakerModel;

- (void)organizeConferenceUsingBlock:(BOOL(^)())organizationBlock onComplete:(void(^)())completionBlock;

- (NSDate *) determineConferenceDateForYear:(NSUInteger)year month:(NSUInteger)month;

- (void)bloodSweatAndTears;
- (BOOL)organizationIsComplete;

@end