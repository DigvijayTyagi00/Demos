//
//  ViewController.m
//  IECDemo
//
//  Created by Sajjad on 12/20/16.
//  Copyright © 2016 spirant. All rights reserved.
//

#import "ViewController.h"
#import "SBJSON.h"
#import "TableViewCell.h"

@interface ViewController ()
{
    NSDictionary *temp;
}

@end

@implementation ViewController
@synthesize universityNameArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    universityNameArray = [NSMutableArray new];
    temp = [NSMutableDictionary new];
    [self fetchUniversityData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)fetchUniversityData
{
    SBJsonParser  *parser = [[SBJsonParser alloc] init];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: [NSURL URLWithString:[NSString stringWithFormat:@"%@",@"http://universities.hipolabs.com/search?"]]];
    NSLog(@"request==%@",request);
    [request setHTTPMethod:@"GET"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *json = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    NSLog(@"string is %@",json);
    universityNameArray =  [parser objectWithString:json];
    NSLog(@"temp==%@",universityNameArray);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [universityNameArray count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return UITableViewAutomaticDimension;
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  UITableViewAutomaticDimension;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"TableViewCellTableViewCell";
    
  TableViewCell*  cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.name.text = [universityNameArray objectAtIndex:indexPath.row][@"name"];
    cell.country.text = [universityNameArray objectAtIndex:indexPath.row][@"country"];
    cell.domain.text = [universityNameArray objectAtIndex:indexPath.row][@"domain"];
    cell.webPage.text = [universityNameArray objectAtIndex:indexPath.row][@"web_page"];
    cell.alphaTwoCode.text = [universityNameArray objectAtIndex:indexPath.row][@"alpha_two_code"];
    return cell;
}
@end
