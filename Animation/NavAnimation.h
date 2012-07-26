//
//  Animation.h
//
//  Created by 振东 何 on 12-7-22.
//  Copyright (c) 2012年 开趣. All rights reserved.
//
//NavigationController自定义动画。
//

#import <Foundation/Foundation.h>
#import "QuartzCore/QuartzCore.h"

@interface NavAnimation : NSObject

//reveal
+ (void)animationRevealFromBottom:(UIView *)view;
+ (void)animationRevealFromTop:(UIView *)view;
+ (void)animationRevealFromLeft:(UIView *)view;
+ (void)animationRevealFromRight:(UIView *)view;

//渐隐渐消
+ (void)animationEaseIn:(UIView *)view;
+ (void)animationEaseOut:(UIView *)view;

//翻转
+ (void)animationFlipFromLeft:(UIView *)view;
+ (void)animationFlipFromRigh:(UIView *)view;

//翻页
+ (void)animationCurlUp:(UIView *)view;
+ (void)animationCurlDown:(UIView *)view;

//旋转缩放
+ (void)animationRotateAndScaleEffects:(UIView *)view;//各种旋转缩放效果。
+ (void)animationRotateAndScaleDownUp:(UIView *)view;//旋转同时缩小放大效果

//push
+ (void)animationPushUp:(UIView *)view;
+ (void)animationPushDown:(UIView *)view;
+ (void)animationPushLeft:(UIView *)view;
+ (void)animationPushRight:(UIView *)view;

//move
+ (void)animationMoveUp:(UIView *)view;
+ (void)animationMoveDown:(UIView *)view;
+ (void)animationMoveLeft:(UIView *)view;
+ (void)animationMoveRight:(UIView *)view;


//以下为私有API效果
+ (void)animationFlipFromTop:(UIView *)view;
+ (void)animationFlipFromBottom:(UIView *)view;

+ (void)animationCubeFromLeft:(UIView *)view;
+ (void)animationCubeFromRight:(UIView *)view;
+ (void)animationCubeFromTop:(UIView *)view;
+ (void)animationCubeFromBottom:(UIView *)view;

+ (void)animationSuckEffect:(UIView *)view;
+ (void)animationRippleEffect:(UIView *)view;

+ (void)animationCameraOpen:(UIView *)view;
+ (void)animationCameraClose:(UIView *)view;


@end
