//
//  Animation.m
//
//  Created by 振东 何 on 12-7-22.
//  Copyright (c) 2012年 开趣. All rights reserved.
//

#import "NavAnimation.h"

#define kDegreeToRadian(degrees)  ((3.14159265359 * degrees)/ 180)

@implementation NavAnimation

+ (void)animationRevealFromBottom:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setType:kCATransitionReveal];
    [animation setSubtype:kCATransitionFromBottom];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationRevealFromTop:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setType:kCATransitionReveal];
    [animation setSubtype:kCATransitionFromTop];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationRevealFromLeft:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setType:kCATransitionReveal];
    [animation setSubtype:kCATransitionFromLeft];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationRevealFromRight:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setType:kCATransitionReveal];
    [animation setSubtype:kCATransitionFromRight];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    [view.layer addAnimation:animation forKey:nil];
}


+ (void)animationEaseIn:(UIView *)view
{    
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setType:kCATransitionFade];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];

    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationEaseOut:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setType:kCATransitionFade];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];

    [view.layer addAnimation:animation forKey:nil];
}


+ (void)animationRotateAndScaleDownUp:(UIView *)view
{    
    CABasicAnimation* rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
	rotationAnimation.toValue = [NSNumber numberWithFloat:(2 * M_PI) * 2]; 
	rotationAnimation.duration = 0.750f;
	rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
	scaleAnimation.toValue = [NSNumber numberWithFloat:0.0];
	scaleAnimation.duration = 0.75f;
	scaleAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
	animationGroup.duration = 0.75f;
	animationGroup.autoreverses = YES;
	animationGroup.repeatCount = 1;//HUGE_VALF;
	[animationGroup setAnimations:[NSArray arrayWithObjects:rotationAnimation, scaleAnimation, nil]];
    
	[view.layer addAnimation:animationGroup forKey:@"animationGroup"];
}


+ (void)animationFlipFromLeft:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];  
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];  
    [UIView setAnimationDuration:0.75];  
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:view cache:NO];  
    [UIView commitAnimations];  
}

+ (void)animationFlipFromRigh:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];  
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];  
    [UIView setAnimationDuration:0.75];  
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view cache:NO];  
    [UIView commitAnimations];  
}


+ (void)animationCurlUp:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];  
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];  
    [UIView setAnimationDuration:0.75];  
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:view cache:NO];  
    [UIView commitAnimations];  
}

+ (void)animationCurlDown:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];  
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];  
    [UIView setAnimationDuration:0.75];  
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:view cache:NO];  
    [UIView commitAnimations];  
}


+(void)animationRotateAndScaleEffects:(UIView *)view
{    
    [UIView animateWithDuration:0.75 
                     animations:^
        {
            view.transform = CGAffineTransformMakeScale(0.001, 0.001);
                                 
             CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
             animation.toValue = [ NSValue valueWithCATransform3D: CATransform3DMakeRotation(M_PI, 0.70, 0.40, 0.80) ];//旋转形成一道闪电。
             //animation.toValue = [ NSValue valueWithCATransform3D: CATransform3DMakeRotation(M_PI, 0.0, 1.0, 0.0) ];//y轴居中对折番。
             //animation.toValue = [ NSValue valueWithCATransform3D: CATransform3DMakeRotation(M_PI, 1.0, 0.0, 0.0) ];//沿X轴对折翻转。
             //animation.toValue = [ NSValue valueWithCATransform3D: CATransform3DMakeRotation(M_PI, 0.50, -0.50, 0.50) ];
             //animation.toValue = [ NSValue valueWithCATransform3D: CATransform3DMakeRotation(M_PI, 0.1, 0.2, 0.2) ];
                                 
             animation.duration = 0.45;
             animation.repeatCount = 1;
             [view.layer addAnimation:animation forKey:nil];
            
        } 
                    completion:^(BOOL finished)
        {
             [UIView animateWithDuration:0.75 animations:^
                {
                    view.transform = CGAffineTransformMakeScale(1.0, 1.0);
                }
             ];
                     
        }
    ];
}

+ (void)animationPushUp:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromTop];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationPushDown:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromBottom];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationPushLeft:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromLeft];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationPushRight:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromRight];
    
    [view.layer addAnimation:animation forKey:nil];
}


+ (void)animationMoveUp:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionMoveIn];
    [animation setSubtype:kCATransitionFromTop];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationMoveDown:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionMoveIn];
    [animation setSubtype:kCATransitionFromBottom];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationMoveLeft:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionMoveIn];
    [animation setSubtype:kCATransitionFromLeft];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationMoveRight:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:kCATransitionMoveIn];
    [animation setSubtype:kCATransitionFromRight];
    
    [view.layer addAnimation:animation forKey:nil];
}




#pragma mark - Private API

+ (void)animationFlipFromTop:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"oglFlip"];
    [animation setSubtype:@"fromTop"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationFlipFromBottom:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"oglFlip"];
    [animation setSubtype:@"fromBottom"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCubeFromLeft:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cube"];
    [animation setSubtype:@"fromLeft"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCubeFromRight:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cube"];
    [animation setSubtype:@"fromRight"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCubeFromTop:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cube"];
    [animation setSubtype:@"fromTop"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCubeFromBottom:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cube"];
    [animation setSubtype:@"fromBottom"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationSuckEffect:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"suckEffect"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationRippleEffect:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"rippleEffect"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCameraOpen:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cameraIrisHollowOpen"];
    [animation setSubtype:@"fromRight"];
    
    [view.layer addAnimation:animation forKey:nil];
}

+ (void)animationCameraClose:(UIView *)view
{
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.75];
    [animation setFillMode:kCAFillModeForwards];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [animation setType:@"cameraIrisHollowClose"];
    [animation setSubtype:@"fromRight"];
    
    [view.layer addAnimation:animation forKey:nil];
}


@end
