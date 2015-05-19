//
//  DetailViewController.h
//  FirstMobile
//
//  Created by Michael on 5/9/15.
//  Copyright (c) 2015 Mobile App Docs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

