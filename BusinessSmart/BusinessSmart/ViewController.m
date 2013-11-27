//
//  ViewController.m
//  BusinessSmart
//
//  Created by Nicholas Rodofile on 27/11/2013.
//  Copyright (c) 2013 ASIC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
	NSMutableArray *mainOptions;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.mainTableView.delegate = self;
	self.mainTableView.dataSource = self;
	
	//populate table
	mainOptions = [[NSMutableArray alloc]initWithObjects:@"Overview",
				   @"Starting a Small Business",@"Compliance for a Small",
				   @"Closing a Small Business",@"Small Business Resources",
				   @"Hot Topics", @"Top 10 FAQ's for Small Businesses",
				   @"e-Newsletters for Small Businesses", nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [mainOptions count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *cellItentifier = @"MainCell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellItentifier forIndexPath:indexPath];
	
	cell.textLabel.text = [mainOptions objectAtIndex:indexPath.row];
	return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
