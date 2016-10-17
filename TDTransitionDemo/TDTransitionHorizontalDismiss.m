//
//  TDTransitionHorizontalDismiss.m
//  TDTransitionDemo
//
//  Created by Terence on 2016/10/14.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDTransitionHorizontalDismiss.h"

@implementation TDTransitionHorizontalDismiss
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    return 0.5;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    // 起始VC
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    // 目的VC
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    // 转场视图容器
    UIView *containerView = [transitionContext containerView];

    //右滑动画

    [containerView addSubview:toVC.view];
    [containerView addSubview:fromVC.view];
    fromVC.view.frame = CGRectMake(0, 0, fromVC.view.frame.size.width, fromVC.view.frame.size.height);
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        fromVC.view.frame = CGRectMake([UIScreen mainScreen].bounds.size.width, 0, fromVC.view.frame.size.width, fromVC.view.frame.size.height);
    } completion:^(BOOL finished) {
        BOOL cancelled = transitionContext.transitionWasCancelled;
        // 声明过渡结束
        [transitionContext completeTransition:!cancelled];
    }];
    
}
@end
