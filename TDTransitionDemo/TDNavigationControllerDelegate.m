//
//  TDNavigationControllerDelegate.m
//  TDScene
//
//  Created by Terence on 2016/10/11.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDNavigationControllerDelegate.h"

@implementation TDNavigationControllerDelegate

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{

    //指定特殊ViewController之间的跳转动画.
    if (operation == UINavigationControllerOperationPush && [fromVC isKindOfClass:[FifthViewController class]]){
        return [[TDTransitionVerticalPush alloc]init];
    }else if(operation == UINavigationControllerOperationPop && [toVC isKindOfClass:[FifthViewController class]]){
        return [[TDTransitionVerticalPop alloc]init];
    }

    return nil;
}

@end
