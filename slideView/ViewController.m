//
//  ViewController.m
//  slideView
//
//  Created by Wataru Nishimoto on 12/02/05.
//  Copyright (c) 2012年 none. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize _tableView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section{
    
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView 
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] 
                 initWithStyle:UITableViewCellStyleDefault 
                 reuseIdentifier:CellIdentifier];
    }

    UIImage *img = [UIImage imageNamed:@"img1.png"];

    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    imageView.frame = CGRectMake(-40, 40, 320, 240);
    imageView.transform = CGAffineTransformMakeRotation(M_PI * 90 / 180.0);
    imageView.userInteractionEnabled = YES;
    [cell addSubview:imageView];
    return cell;
}


-(CGFloat)tableView:
(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 320;
}

-(void)tableView:
(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"index:%d",indexPath.row);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(40, 0, 240, 320) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.transform = CGAffineTransformMakeRotation(M_PI * -90 / 180.0);
    // scrollbarの位置がおかしいけど我慢するか向きかえてrowの場所かえて
    [self.view addSubview:_tableView];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
