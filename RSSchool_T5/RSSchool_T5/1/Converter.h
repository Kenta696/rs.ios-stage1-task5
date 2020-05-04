#import <Foundation/Foundation.h>

extern NSString *KeyPhoneNumber;
extern NSString *KeyCountry;

@interface PNConverter : NSObject
@property (strong, nonatomic) NSString* phone;
@property (strong, nonatomic) NSString* country;
- (NSDictionary*)converToPhoneNumberNextString:(NSString*)string;
@end


