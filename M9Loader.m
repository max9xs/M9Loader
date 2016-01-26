//
//  M9Loader.m
//  M9Loader
//
//  Created by Hardik on 26/01/16.
//  Copyright © 2016 Hardik. All rights reserved.
//

#import "M9Loader.h"

#define sizeMax 150
#define spinnerSize 50

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

        
        
        
        
        
        
        loaderBgView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, sizeMax, sizeMax)];
        [self addSubview:loaderBgView];
        loaderBgView.center=self.center;
        loaderBgView.backgroundColor=[UIColor whiteColor];
        loaderBgView.layer.cornerRadius=20;
        loaderBgView.clipsToBounds=YES;

        
        labelTitle=[[UILabel alloc] initWithFrame:CGRectMake(0, sizeMax-40, sizeMax, 30)];
        [loaderBgView addSubview:labelTitle];
        labelTitle.textAlignment=NSTextAlignmentCenter;
        labelTitle.text=@"Loading..";
        labelTitle.font=[UIFont systemFontOfSize:12 weight:0.1];
        

        loaderIcon=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, spinnerSize, spinnerSize)];
        [loaderBgView addSubview:loaderIcon];
        loaderIcon.image=[UIImage imageNamed:@"spinner1"];
        loaderIcon.center=CGPointMake(sizeMax/2, sizeMax/2-10);
        

        CABasicAnimation* spinAnimation = [CABasicAnimation
                                           animationWithKeyPath:@"transform.rotation"];
        spinAnimation.toValue = [NSNumber numberWithFloat:0];
        spinAnimation.fromValue = [NSNumber numberWithFloat:-6];
        spinAnimation.duration=1.24;
        spinAnimation.repeatCount =HUGE_VALF;
       // spinAnimation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];

        spinAnimation.additive=YES;
        [loaderIcon.layer addAnimation:spinAnimation forKey:@"spinAnimation1"];



    }
    return self;
    
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
    }
    return self;
}

@end
