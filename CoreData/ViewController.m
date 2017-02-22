//
//  ViewController.m
//  CoreData
//
//  Created by Nagam Pawan on 9/28/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)saveData:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    NSManagedObject *newDetails = [NSEntityDescription insertNewObjectForEntityForName:@"Details" inManagedObjectContext:context];
    [newDetails setValue:self.nameText.text forKey:@"name"];
    [newDetails setValue:self.ageText.text forKey:@"age"];
    [newDetails setValue:self.companyText.text forKey:@"company"];
    NSError *error = nil;
    if (![context save:&error]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error in Saving" message:@"can't save the details" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)viewDetails:(id)sender {
}
@end
