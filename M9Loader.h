//
//  M9Loader.h
//  M9Loader
//
//  Created by Hardik on 26/01/16.
//  Copyright © 2016 Hardik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface M9Loader : UIView
{
    UIView *loaderBgView;
    
    UILabel *labelTitle;
    
    UIView *circleView1;
    UIView *circleView2;
}
-(id)initCreate;

@end
