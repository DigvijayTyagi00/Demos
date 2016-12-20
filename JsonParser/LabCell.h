//
//  LabCell.h
//  
//
//  Created by Apple on 26/12/2015 .
//
//

#import <UIKit/UIKit.h>

@interface LabCell : UITableViewCell{
    
}
@property(nonatomic,retain)IBOutlet UILabel *namelbl;
@property(nonatomic,retain)IBOutlet UILabel *addresslbl;
@property(nonatomic,retain)IBOutlet UILabel *citylbl;
@property(nonatomic,retain)IBOutlet UILabel *pincodelbl;
@property (nonatomic,retain)IBOutlet UIButton *deleteBtn;
@property (nonatomic,retain)IBOutlet UIButton *editBtn;
@property(nonatomic,retain)IBOutlet UILabel *timelbl;
@property(nonatomic,retain)IBOutlet UILabel *timelbl1;

@end
