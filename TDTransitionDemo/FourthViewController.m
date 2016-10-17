//
//  FourthViewController.m
//  TDTransitionDemo
//
//  Created by Terence on 2016/10/14.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor brownColor];

    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    button.center = self.view.center;
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(function:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

-(void)function:(id)sneder{
    [self dismissViewControllerAnimated:YES completion:^{

    }];
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
