//
//  TableViewCell.h
//  CoreData
//
//  Created by Nagam Pawan on 9/28/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *ageLabel;
@property (strong, nonatomic) IBOutlet UILabel *companyLabel;

@end
