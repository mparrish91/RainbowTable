//
//  ViewController.m
//  rainbowTable
//
//  Created by malcolm on 10/22/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITabBarControllerDelegate, UITableViewDataSource>

@property NSArray *colorsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.colorsArray = [NSArray arrayWithObjects:[UIColor redColor],
                        [UIColor yellowColor],
                        [UIColor blueColor],
                        [UIColor greenColor],
                        [UIColor orangeColor],
                        [UIColor darkGrayColor],
                        [UIColor colorWithRed:(75.0/255.0) green:(75.0/255.0) blue:(75.0/255.0) alpha:(75.0/255.0)],nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.colorsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCellID" forIndexPath:indexPath];
    
    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
