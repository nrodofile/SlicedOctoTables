//
//  ViewController.h
//  Business Smart
//
//  Created by Nicholas Rodofile on 25/11/2013.
//  Copyright (c) 2013 ASIC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *MainTableView;


@end
