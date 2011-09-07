//
//  AttendeeModel.m
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//

#import "AttendeeModel.h"

@implementation AttendeeModel

- (id)init {
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)openForRegistration {
    
}

- (void)announceSpeakers:(NSArray *)speakers {
    
}

- (NSArray *)confirmedAttendees {
    
    return [NSArray arrayWithObjects: @"Felix", @"Peter", @"Allen", @"Thijs", @"Base", @"Ivo", nil]; 
}

@end
