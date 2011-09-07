//
//  AttendeeModel.h
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//



@interface AttendeeModel : NSObject

- (void)openForRegistration;

- (NSArray *)confirmedAttendees;
- (void)announceSpeakers:(NSArray *)speakers;

@end
