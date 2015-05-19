//
//  Golfcourse.m
//  FirstMobile
//
//  Created by Michael on 5/16/15.
//  Copyright (c) 2015 Mobile App Docs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Golfcourse.h"


@implementation Golfcourse

@synthesize name = _name;
@synthesize address = _address;

-(id) initWithName:(NSString *)courseName {
    
    self = [super init];
    if (self) {
        _name = courseName;
        _address = @"";
    }
    return self;
}
@end
