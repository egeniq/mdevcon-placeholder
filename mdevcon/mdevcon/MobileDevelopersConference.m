//
//  MobileDevelopersConference.m
//
//  Mobile Developers Conference Organization Placeholder
//
//  If you can read this page then bookmark it: you'll love this conference.
//  If you think this code should have an Android version, bookmark this page, 
//  you'll love this conference too.
// 
//  If you find the debug session too hard to follow, follow @mdevcon on twitter
//  for conference news.
//
//  For conference info, email mdevcon@egeniq.com
//
//  The full placeholder code is at github: http://github.com/egeniq/mdevcon-placeholder
//  
//  If you find a bug or flaw in this code: jobs@egeniq.com
//

#import "MobileDevelopersConference.h"
#import "AttendeeModel.h"
#import "VenueModel.h"
#import "SpeakerModel.h"
#import "Attendee.h"

@implementation MobileDevelopersConference

- (void)organizeConference {
    // Lovely code. 'self organizing'
    [self organizeConferenceUsingBlock:^{
        
        NSString *dateString = @"2012-03-10";
        
        // Convert string to date object
        NSDateFormatter *dateFormat = [[[NSDateFormatter alloc] init] autorelease];
        [dateFormat setDateFormat:@"yyyy-MM-dd"];
        NSDate *date = [dateFormat dateFromString:dateString];  
 
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
        [[self.attendeeModel confirmedAttendees] enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(Attendee *attendee, NSUInteger index, BOOL *stop) {
            [attendee learn];
            [attendee haveFun];
            [attendee meetPeople];
        }];
    }];
}
     
@end

