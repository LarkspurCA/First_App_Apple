//
//  DataModel.m
//  FirstMobile
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 Mobile App Docs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Golfcourse.h"
#import "DataModel.h"

@implementation DataModel

NSMutableArray *courses;

- (id) initWithFileName:(NSString *)coursesFilename;{
    self = [super init];
    if (self) {
        // Read courses from file
        NSString *path = [[NSBundle mainBundle] pathForResource:@"courses" ofType:@"txt"];

        NSString *contents = [NSString stringWithContentsOfFile:path encoding:NSASCIIStringEncoding error:nil];
        // Parse the file contents into lines; each one represents a golf course
        NSArray *lines = [contents componentsSeparatedByCharactersInSet:
                          [NSCharacterSet characterSetWithCharactersInString:@"\r\n"]];
        // Parse each line into strings for golfcourse name and address
        for (NSString* line in lines) {
            if(line.length) {
                NSArray *strings = [line componentsSeparatedByCharactersInSet:
                                    [NSCharacterSet characterSetWithCharactersInString:@":"]];
                // Create a new Golfcourse object add to the array of courses
                Golfcourse * course =(Golfcourse *) [[Golfcourse alloc]initWithName:[strings objectAtIndex:0]];
                course.address = [strings objectAtIndex:1];
                if(courses == nil) courses = [NSMutableArray arrayWithObject:course];
                else [courses addObject:course];
            }
        }
    }
    return self;
}

- (NSMutableArray *) getCourses{
    return courses;
}

@end