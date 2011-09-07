//
//  VenueModel.h
//  mdevcon
//
//  Created by Ivo Jansch on 9/7/11.
//  Copyright 2011 Egeniq. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Conference;

@interface VenueModel : NSObject

- (BOOL)bookVenueForDate:(NSDate *)date;
- (void)openConference: (Conference *)conference;

@end
