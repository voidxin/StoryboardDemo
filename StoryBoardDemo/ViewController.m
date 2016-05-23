//
//  ViewController.m
//  StoryBoardDemo
//
//  Created by WuGuMoFang on 16/5/23.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
{
    BOOL _flag;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _flag=NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ClickBtn:(id)sender {
    _flag=!_flag;
    if (_flag) {
        [self performSegueWithIdentifier:@"First" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"Second" sender:sender];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"First"]) {
        FirstViewController *firstVC=(FirstViewController *)segue.destinationViewController;
        firstVC.title=@"哈哈我是first";
    }else{
        SecondViewController *secondVC=(SecondViewController *)segue.destinationViewController;
        secondVC.title=@"呵呵我是second";
    }
}
@end
