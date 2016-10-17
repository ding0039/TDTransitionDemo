//
//  FirstViewController.m
//  TDTransitionDemo
//
//  Created by Terence on 2016/10/14.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () 

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //由于demo都把三种情况写在一起，此处的代理设置为self后，segue的那个动画会失效。
    self.navigationController.delegate = self;

    NSLog(@"first-delegate:%@",self.navigationController.delegate);

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

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{

    //指定特殊ViewController之间的跳转动画
    if (operation == UINavigationControllerOperationPush && [toVC isKindOfClass:[SecondViewController class]]) {
        return [[TDTransitionVerticalPush alloc]init];
    }else if(operation == UINavigationControllerOperationPop && [fromVC isKindOfClass:[SecondViewController class]] && [toVC isKindOfClass:[self class]]){
        return [[TDTransitionVerticalPop alloc]init];
    }else{
        return nil;
    }
}

- (IBAction)toSecond:(id)sender {
    SecondViewController *vc = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
