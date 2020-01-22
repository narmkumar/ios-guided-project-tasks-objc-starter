//
//  LSITask.m
//  Tasks
//
//  Created by Niranjan Kumar on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"


// Class Extension - used for private properties, methods, instance variables
@interface LSITask () {
    // Private instance variables
    NSString *_name;
    int identifier; // id is a keyword in ObjC
}

// Private Properties

// Private Methods

@end

@implementation LSITask

// both private and public implementations

- (instancetype)initWithName:(NSString *)name
                        date:(NSDate *)date
                        date:(NSString *)note {
    if (self = [super init]) {
        _name = name;
        _date = date;
        _note = note;
        identifier = 27; // TODO: use a random number
        NSLog(@"Task.init %@", name);
        
        /* String Tokens in NSLog*() and printf()
         %@ = object and only works in NSLog()
         %p = pointer 0x2349EF
         %i %d = int
         %f = float
         %c = char
         %s = char * (c string) = c programming language
         */
    }
    return self;
}


-(void)dealloc {
    // use _name instead of self.name to prevent side effects
    NSLog(@"Task.dealloc");
}

// Properties create 3 things:
// 1. instance variable
// 2. setter
// 3. getter

- (void)setName:(NSString *)name {
    _name = name;
//    saveToFirebase(); // side-effect that we don't want to evoke during initialization
}

- (NSString *)name {
    return _name;
}


@end
