//
//  ViewController.h
//  CoreData
//
//  Created by Nagam Pawan on 9/28/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *nameText;
@property (strong, nonatomic) IBOutlet UITextField *ageText;
@property (strong, nonatomic) IBOutlet UITextField *companyText;
- (IBAction)saveData:(id)sender;
- (IBAction)viewDetails:(id)sender;

@end

