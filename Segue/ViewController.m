//
//  ViewController.m
//  Segue
//
//  Created by dongway on 14-8-20.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    __weak IBOutlet UIButton *button1;

    __weak IBOutlet UIButton *button2;
}
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if (sender==button1) {
        UIViewController *page2 = segue.destinationViewController;
        [page2 setValue:self.textField.text forKey:@"passValue"];
    }else if(sender == button2){
        NSLog(@"22");
    }

}
@end
