//
//  NSString+LSIRepeatString.m
//  Tasks
//
//  Created by Niranjan Kumar on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "NSString+LSIRepeatString.h"

@implementation NSString (LSIRepeatString)

- (NSString *)lsi_repeatString {
    
    // How can I repeat a string?
    
    // Option 1: string interpolation in ObjC (stringWithFormat)
    // self = the string
    return [NSString stringWithFormat:@"%@%@%@", self, self, self];
    
    
    // Option 2: for loop is another option
}

@end
