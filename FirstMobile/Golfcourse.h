//
//  Golfcourse.h
//  FirstMobile
//
//  Created by Michael on 5/16/15.
//  Copyright (c) 2015 Mobile App Docs. All rights reserved.
//

#ifndef FirstMobile_Golfcourse_h
#define FirstMobile_Golfcourse_h

@interface Golfcourse : NSObject

- (id) initWithName:(NSString *)courseName;

@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *address;
@property  int holes;
@property bool isPublic;
@end

#endif

