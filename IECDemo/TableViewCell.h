//
//  TableViewCell.h
//  IECDemo
//
//  Created by Sajjad on 12/20/16.
//  Copyright © 2016 spirant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *domain;
@property (weak, nonatomic) IBOutlet UILabel *alphaTwoCode;
@property (weak, nonatomic) IBOutlet UILabel *webPage;
@property (weak, nonatomic) IBOutlet UILabel *country;

@end
