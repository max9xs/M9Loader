//
//  M9Loader.m
//  M9Loader
//
//  Created by Hardik on 26/01/16.
//  Copyright © 2016 Hardik. All rights reserved.
//

#import "M9Loader.h"

@implementation M9Loader

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initCreate
{
    
    CGFloat widthOfScreen  = [[UIScreen mainScreen] bounds].size.width;
    CGFloat heightOfscreen= [[UIScreen mainScreen] bounds].size.height;


    
    self = [super initWithFrame:CGRectMake(0, 0, widthOfScreen, heightOfscreen)];
    
    
    
    
    if (self) {
        
        
        self.center=CGPointMake(widthOfScreen/2, heightOfscreen/2);

        [self setUpAll];
        
        
        
        UIVisualEffect *blurEffect;
        blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
        
        UIVisualEffectView *visualEffectView;
        visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        
        
        
        loaderBgView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        [self addSubview:loaderBgView];
        loaderBgView.center=self.center;
        loaderBgView.backgroundColor=[UIColor whiteColor];


        visualEffectView.frame = loaderBgView.bounds;
        //[loaderBgView addSubview:visualEffectView];
        
      //  visualEffectView.layer.cornerRadius=20;
        loaderBgView.layer.cornerRadius=20;
        loaderBgView.clipsToBounds=YES;

        
        labelTitle=[[UILabel alloc] initWithFrame:CGRectMake(0, 120, 200, 50)];
        [loaderBgView addSubview:labelTitle];
        
        labelTitle.textAlignment=NSTextAlignmentCenter;
        
        labelTitle.text=@"Loading..";
        
        
        labelTitle.font=[UIFont systemFontOfSize:15 weight:0.1];
        


        circleView1=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        circleView2=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        circleView1.center=CGPointMake(100, 100);
        circleView2.center=CGPointMake(100, 100);
        circleView1.backgroundColor=[UIColor colorWithRed:1 green:0 blue:0 alpha:0.3];
        circleView2.backgroundColor=[UIColor colorWithRed:1 green:0 blue:0 alpha:0.5];
        
        circleView1.layer.cornerRadius=5;
        circleView2.layer.cornerRadius=5;
        
        [loaderBgView addSubview:circleView1];
        [loaderBgView addSubview:circleView2];
        
        
        circleView1.center=CGPointMake(100,70);
        circleView2.center=CGPointMake(100,70);
        
        circleView1.layer.anchorPoint=CGPointMake(3, 0);
        circleView2.layer.anchorPoint=CGPointMake(0, 3);
        
        CABasicAnimation* spinAnimation = [CABasicAnimation
                                           animationWithKeyPath:@"transform.rotation"];
        spinAnimation.toValue = [NSNumber numberWithFloat:0];
        spinAnimation.fromValue = [NSNumber numberWithFloat:12];
        spinAnimation.duration=1.24;
        spinAnimation.repeatCount =HUGE_VALF;
        spinAnimation.autoreverses=YES;
        spinAnimation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];

spinAnimation.additive=YES;
        [circleView1.layer addAnimation:spinAnimation forKey:@"spinAnimation1"];

        {
            CABasicAnimation* spinAnimation = [CABasicAnimation
                                               animationWithKeyPath:@"transform.rotation"];
            spinAnimation.toValue = [NSNumber numberWithFloat:0];
            spinAnimation.fromValue = [NSNumber numberWithFloat:12];
            spinAnimation.duration=1.2;
            spinAnimation.repeatCount =HUGE_VALF;
            spinAnimation.additive=YES;
           spinAnimation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
spinAnimation.autoreverses=YES;
            [circleView2.layer addAnimation:spinAnimation forKey:@"spinAnimation2"];

        }



    }
    return self;
    
}
-(void)setUpAll
{
    //        self.clipsToBounds=YES
    
    //self.backgroundColor=[UIColor grayColor];
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
    }
    return self;
}

@end
