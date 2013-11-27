//
//  ViewController.h
//  BusinessSmart
//
//  Created by Nicholas Rodofile on 27/11/2013.
//  Copyright (c) 2013 ASIC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *mainTableView;

@end
