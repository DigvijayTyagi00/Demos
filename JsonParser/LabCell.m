//
//  LabCell.m
//  
//
//  Created by Apple on 26/12/2015 .
//
//

#import "LabCell.h"

@implementation LabCell
@synthesize namelbl,addresslbl,citylbl,pincodelbl;
@synthesize deleteBtn;
@synthesize editBtn;
@synthesize timelbl;
@synthesize timelbl1;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
