//
//  ViewController.h
//  Unity
//
//  Created by weiyanwu on 14-7-16.
//  Copyright (c) 2014年 weiyanwu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIImageView *imageView1;
    UIImageView *imageView2;
    UIImageView *imageView3;
    UIImageView *imageView4;
}
@property(nonatomic,strong) IBOutlet UIImageView *imageView1;
@property(nonatomic,strong) IBOutlet UIImageView *imageView2;
@property(nonatomic,strong) IBOutlet UIImageView *imageView3;
@property(nonatomic,strong) IBOutlet UIImageView *imageView4;



-(IBAction)bt1:(id)sender;
-(IBAction)bt2:(id)sender;
-(IBAction)bt3:(id)sender;
-(IBAction)bt4:(id)sender;

@end
