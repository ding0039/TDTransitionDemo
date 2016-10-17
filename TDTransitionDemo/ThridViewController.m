//
//  ThridViewController.m
//  TDTransitionDemo
//
//  Created by Terence on 2016/10/14.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "ThridViewController.h"

@interface ThridViewController ()

@end

@implementation ThridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.transitioningDelegate = self;

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
-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    if ([presented isKindOfClass:[FourthViewController class]]) {
        return [[TDTransitionHorzontalPresent alloc]init];
    }
    return nil;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    if ([dismissed isKindOfClass:[FourthViewController class]]) {
        return [[TDTransitionHorizontalDismiss alloc]init];
    }
    return nil;
}

- (IBAction)modalToFourthVC:(id)sender {
    FourthViewController *vc = [[FourthViewController alloc] init];
    vc.transitioningDelegate = self;
    [self presentViewController: vc animated:YES completion:^{

    }];
}


@end
