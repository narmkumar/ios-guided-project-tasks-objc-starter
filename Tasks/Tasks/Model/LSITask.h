//
//  LSITask.h
//  Tasks
//
//  Created by Niranjan Kumar on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LSITask : NSObject

// name - NSString
// date - NSDate
// note - NSString

// Public Properties
@property (nonatomic, copy) NSString *name;
@property (nonatomic) NSDate *date;
@property (nonatomic) NSString *note;

// Public methods

// Create an initiliazer

- (instancetype)initWithName:(NSString *)name
                        date:(NSDate *)date
                        date:(NSString *)note;




/*
nonatomic - recommended (slightly faster, override properties)
atomic* - thread saftey
 
readonly - getter
readwrite* - getter/setter

getter=    (hidden -> getter=isHidden)
setter=

copy - use for NSString, NSArray, and other mutable collections
assign* - default for primitive (double, float, int)

strong* - ownership of the memory
weak - auto-nil

class - class property, but it has no backing varible (static variable)

retain
unsafe_unretained
*/


@end

