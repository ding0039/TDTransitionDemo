//
//  TDTransitionVerticalPop.m
//  TDScene
//
//  Created by Terence on 2016/10/10.
//  Copyright © 2016年 Terence. All rights reserved.
//

#import "TDTransitionVerticalPop.h"

@implementation TDTransitionVerticalPop

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

    //下降动画
    fromVC.view.frame = CGRectMake(0, 0, fromVC.view.frame.size.width, fromVC.view.frame.size.height);
    [containerView addSubview:toVC.view];
    [containerView addSubview:fromVC.view];

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        fromVC.view.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, fromVC.view.frame.size.width, fromVC.view.frame.size.height);
    } completion:^(BOOL finished) {
        BOOL cancelled = transitionContext.transitionWasCancelled;
        // 声明过渡结束
        [transitionContext completeTransition:!cancelled];
    }];
    
}

@end
