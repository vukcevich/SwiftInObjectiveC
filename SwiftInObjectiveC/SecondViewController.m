//
//  SecondViewController.m
//  SwiftInObjectiveC
//
//  Created by Marijan Vukcevich on 1/14/15.
//  Copyright (c) 2015 xyz. All rights reserved.
//

#import "SecondViewController.h"

#import "SwiftInObjectiveC-Swift.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // get new objects
    NSDictionary *newdataObjects = [SwiftFile dictionaryObjects];
    NSString *st = newdataObjects[@"someNewID"];
    
    NSLog(@"new property added: %@", st);
    
    NSString *st2 = newdataObjects[@"fifthId"];
    
    NSLog(@"new property added: %@", st2);
    
    
    //add new object --- update
    [SwiftFile setDictionaryObjects:@"AnotherNewID" keyValue:@"AnotherUpdate"];

}

-(IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
