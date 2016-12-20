//
//  ViewController.h
//  IECDemo
//
//  Created by Sajjad on 12/20/16.
//  Copyright © 2016 spirant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong,nonatomic)NSMutableArray *universityNameArray;

@end

