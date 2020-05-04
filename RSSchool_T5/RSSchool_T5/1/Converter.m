#import "Converter.h"

// Do not change
NSString *KeyPhoneNumber = @"phoneNumber";
NSString *KeyCountry = @"country";

@implementation PNConverter
- (NSDictionary*)converToPhoneNumberNextString:(NSString*)string;{
    NSMutableArray* array = [NSMutableArray new];
    for (int i=0; i<= string.length-1; i++) {
        unichar number = [string characterAtIndex:i];
        NSString* stringFromUnichar = [NSString stringWithCharacters:&number length:1];
        [array addObject:stringFromUnichar];}
    
    if ([array count]<=2 && ![[array firstObject] isEqualToString:@"7"]){
        [self phoneNumberWithEightNumber:string];
        NSString* str = @"";
        _country =str;
        return @{KeyPhoneNumber: _phone,
            KeyCountry: _country};
    }
    
    
#pragma mark - KZ number
    if ([array count]>=2 && [[array firstObject] isEqualToString:@"7"] && [[array objectAtIndex:1]isEqualToString:@"7"]) {
        NSString* str = @"KZ";
        _country =str;
        [self phoneNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - RU number
    if ([[array firstObject] isEqualToString:@"7"]) {
        NSString* str = @"RU";
        _country =str;
        [self phoneNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - BY number
    if ([array count]>2 && [[array firstObject] isEqualToString:@"3"]&&[[array objectAtIndex:1] isEqualToString:@"7"] &&[[array objectAtIndex:2] isEqualToString:@"5"] ) {
        NSString* str = @"BY";
        _country =str;
        [self phoneNumberWithNineNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - UA number
    if ([[array firstObject] isEqualToString:@"3"]&&[[array objectAtIndex:1] isEqualToString:@"8"] &&[[array objectAtIndex:2] isEqualToString:@"0"] ) {
        NSString* str = @"UA";
        _country =str;
        [self phoneNumberWithNineNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - TJ number
    if ([[array firstObject] isEqualToString:@"9"]&&[[array objectAtIndex:1] isEqualToString:@"9"] &&[[array objectAtIndex:2] isEqualToString:@"2"] ) {
        NSString* str = @"TJ";
        _country =str;
        [self phoneNumberWithNineNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - AZ number
    if ([[array firstObject] isEqualToString:@"9"]&&[[array objectAtIndex:1] isEqualToString:@"9"] &&[[array objectAtIndex:2] isEqualToString:@"4"] ) {
        NSString* str = @"AZ";
        _country =str;
        [self phoneNumberWithNineNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
        
    }
#pragma mark - KG number
    if ([[array firstObject] isEqualToString:@"9"]&&[[array objectAtIndex:1] isEqualToString:@"9"] &&[[array objectAtIndex:2] isEqualToString:@"6"] ) {
        NSString* str = @"KG";
        _country =str;
        [self phoneNumberWithNineNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
        
    }
#pragma mark - UZ number
    if ([[array firstObject] isEqualToString:@"9"]&&[[array objectAtIndex:1] isEqualToString:@"9"] &&[[array objectAtIndex:2] isEqualToString:@"8"] ) {
        NSString* str = @"UZ";
        _country =str;
        [self phoneNumberWithNineNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - TM number
    if ([[array firstObject] isEqualToString:@"9"]&&[[array objectAtIndex:1] isEqualToString:@"9"] &&[[array objectAtIndex:2] isEqualToString:@"3"] ) {
        NSString* str = @"TM";
        _country =str;
        [self phoneNumberWithEightNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
        
    }
#pragma mark - MD number
    if ([array count]>2 && [[array firstObject] isEqualToString:@"3"]&&[[array objectAtIndex:1] isEqualToString:@"7"] && [[array objectAtIndex:2] isEqualToString:@"3"] ) {
        NSString* str = @"MD";
        _country =str;
        [self phoneNumberWithEightNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
#pragma mark - AM number
    if ([array count]>2 && [[array firstObject] isEqualToString:@"3"]&&[[array objectAtIndex:1] isEqualToString:@"7"] &&[[array objectAtIndex:2] isEqualToString:@"4"] ) {
        NSString* str = @"AM";
        _country =str;
        [self phoneNumberWithEightNumber:string];
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    } else if ([[array firstObject]isEqualToString:@"+"]) {
        NSString* str = @"";
        _country = str;
        _phone = string ;
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    } else {
        NSString* str = @"";
        _country = str;
        NSMutableString* fail = [NSMutableString stringWithString:string];
        [fail insertString:@"+" atIndex:0];
        NSString* failStr = [fail substringToIndex:13] ;
        _phone = failStr ;
        return @{KeyPhoneNumber: _phone,
                 KeyCountry: _country};
    }
    
    return 0;
    
}

-(void)phoneNumber:(NSString*)changeString;{ // If number contain 10 number
    NSMutableString*changeEnterString = [NSMutableString stringWithString:changeString];
    NSInteger index0 = 0;
    NSInteger index1 = 2;
    NSInteger index2 = 3;
    NSInteger index3 = 7;
    NSInteger index4 = 8;
    NSInteger index5 = 12;
    NSInteger index6 = 15;
    NSInteger index7 = 18;
    [changeEnterString insertString:@"+" atIndex:index0];
    if (changeEnterString.length>index1) {
        [changeEnterString insertString:@" " atIndex:index1];
    }
    if (changeEnterString.length>index2) {
        [changeEnterString insertString:@"(" atIndex:index2];
    }
    if ( changeEnterString.length>index3) {
        [changeEnterString insertString:@")" atIndex:index3];
        
    }if (changeEnterString.length>index4) {
        [changeEnterString insertString:@" " atIndex:index4];
        
    }if (changeEnterString.length>index5) {
        [changeEnterString insertString:@"-" atIndex:index5];
        
    }if (changeEnterString.length>index6) {
        [changeEnterString insertString:@"-" atIndex:index6];
    }
    if (changeEnterString.length>index7) {
        NSString* str = [changeEnterString substringToIndex:index7];
        [changeEnterString deleteCharactersInRange:NSMakeRange(0, changeEnterString.length)];
        [changeEnterString appendString:str];
    }
    NSString* str = [NSString stringWithString:changeEnterString];
    _phone = str;
    
}

-(void)phoneNumberWithNineNumber:(NSString*)changeString;{ // If number contain 9 number
    NSMutableString*changeEnterString = [NSMutableString stringWithString:changeString];
    NSInteger index1 = 0;
    NSInteger index2 = 5;
    NSInteger index3 = 8;
    NSInteger index4 = 9;
    NSInteger index5 = 13;
    NSInteger index6 =16;
    NSInteger index7 = 19;
    [changeEnterString insertString:@"+" atIndex:index1];
    if (changeEnterString.length>=index2) {
        [changeEnterString insertString:@" " atIndex:index2-1];
        [changeEnterString insertString:@"(" atIndex:index2];
    }
    if (changeEnterString.length>index3) {
        [changeEnterString insertString:@")" atIndex:index3];
        
    }if ( changeEnterString.length>index4) {
        [changeEnterString insertString:@" " atIndex:index4];
        
    }if ( changeEnterString.length>index5) {
        [changeEnterString insertString:@"-" atIndex:index5];
        
    }if (changeEnterString.length> index6) {
        [changeEnterString insertString:@"-" atIndex:index6];
    }
    if (changeEnterString.length> index7) {
        NSString* str = [changeEnterString substringToIndex:index7];
        [changeEnterString deleteCharactersInRange:NSMakeRange(0, changeEnterString.length)];
        [changeEnterString appendString:str];
    }
    NSString* string = [NSString  stringWithString:changeEnterString];
    _phone =string;
}

-(void)phoneNumberWithEightNumber:(NSString*)changeString;{ // If number contain 8 number
    NSMutableString*changeEnterString = [NSMutableString stringWithString:changeString];
    NSInteger index0 = 0;
    NSInteger index1 = 4;
    NSInteger index2 = 5;
    NSInteger index3 = 8;
    NSInteger index4 = 9;
    NSInteger index5 = 13;
    NSInteger index6 = 17;
    [changeEnterString insertString:@"+" atIndex:index0];
    if (changeEnterString.length>= index1+1) {
        [changeEnterString insertString:@" " atIndex:index1];
    }
    if (changeEnterString.length>=index2) {
        [changeEnterString insertString:@"(" atIndex:index2];
    }
    if (changeEnterString.length>index3) {
        [changeEnterString insertString:@")" atIndex:index3];
        
    }if (changeEnterString.length>index4) {
        [changeEnterString insertString:@" " atIndex:index4];
        
    }if (changeEnterString.length>index5) {
        [changeEnterString insertString:@"-" atIndex:index5];
    }
    if (changeEnterString.length> index6) {
        NSString* str = [changeEnterString substringToIndex:index6];
        [changeEnterString deleteCharactersInRange:NSMakeRange(0, changeEnterString.length)];
        [changeEnterString appendString:str];
    }
    NSString* string = [NSString  stringWithString:changeEnterString];
    _phone =string;
}

@end
