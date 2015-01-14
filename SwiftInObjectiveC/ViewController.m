//
//  ViewController.m
//  SwiftInObjectiveC
//
//  Created by Marijan Vukcevich on 1/14/15.
//  Copyright (c) 2015 xyz. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

#import "SwiftInObjectiveC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Objective-C
    NSDictionary *dataObjects = [SwiftFile dictionaryObjects];
    
    NSLog(@"dbg: dataObjects: %@", dataObjects);
    
    //add new object --- update
    [SwiftFile setDictionaryObjects:@"someNewID" keyValue:@"newD"];
}

-(void) viewWillAppear:(BOOL)animated {
    
    // get new objects
    NSDictionary *newUpdatedObjects = [SwiftFile dictionaryObjects];
    
    NSString *updatedString = newUpdatedObjects[@"AnotherNewID"];
    
    if(updatedString == NULL) {
       NSLog(@"First time run from null value: %@", updatedString);
    } else {
       NSLog(@"updated new property added (from Second Controller): %@", updatedString);
    }
    [super viewWillAppear:YES];
}

-(IBAction)loadSecondController:(id)sender {
    SecondViewController *sc = [[SecondViewController alloc] init];
    
    [self presentViewController:sc animated:YES completion:^{}];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
