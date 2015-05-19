//
//  DataModel.h
//  FirstMobile
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 Mobile App Docs. All rights reserved.
//

#ifndef FirstMobile_DataModel_h
#define FirstMobile_DataModel_h

@interface DataModel: NSObject

- (id) initWithFileName:(NSString *)coursesFilename;
- (NSMutableArray *) getCourses;

#endif

@end
