//
//  ViewController.m
//  M9Loader
//
//  Created by Hardik on 26/01/16.
//  Copyright © 2016 Hardik. All rights reserved.
//

#import "ViewController.h"
#import "M9Loader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)btnClicked:(id)sender
{
    
    M9Loader *loader=[[M9Loader alloc] initCreate];
    [self.view addSubview:loader];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
