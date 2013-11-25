//
//  ViewController.m
//  Business Smart
//
//  Created by Nicholas Rodofile on 25/11/2013.
//  Copyright (c) 2013 ASIC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
	NSMutableArray *MainOptions;
}

@end

@implementation ViewController
@synthesize MainTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.MainTableView.delegate = self;
	self.MainTableView.dataSource = self;
	
	MainOptions = [[NSMutableArray alloc]initWithObjects:@"Overview",@"Starting a Small Business", @"Compliance For Small Businesses",@"Closing a Small Business", @"Small Business Resources" , @"Hot Topics", @"Top 10 FAQ's for Small Businesses", @"E-Newsletters", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	
	static NSString *cellItendifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellItendifier forIndexPath:indexPath];
	
	cell.textLabel.text = [MainOptions objectAtIndex:indexPath.row];
	
	return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [MainOptions count];
}

@end
