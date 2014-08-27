//
//  ViewController.m
//  Unity
//
//  Created by weiyanwu on 14-7-16.
//  Copyright (c) 2014年 weiyanwu. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+DSResizeAndRound.h"
#import "CALayer+DSAnimations.h"


#define LEFT 10
#define R 60
#define TOP 50
#define DA 250
#define XIAO 50
#define SEC 0.15

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView1;
@synthesize imageView2;
@synthesize imageView3;
@synthesize imageView4;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(IBAction)bt11:(id)sender
{
    [UIView animateWithDuration:0.45f
                          delay:0.0f
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.imageView1.frame = CGRectMake(LEFT, TOP, DA, DA);
                         self.imageView2.frame = CGRectMake(LEFT + DA, TOP + DA - XIAO, XIAO, XIAO);
                         self.imageView3.frame = CGRectMake(LEFT + DA -XIAO, TOP + DA, XIAO, XIAO);
                         self.imageView4.frame = CGRectMake(LEFT + DA, TOP + DA, XIAO, XIAO);
                     }
                     completion:^(BOOL finished){
                       
                     }];
    

}

-(IBAction)bt1:(id)sender
{
    [UIView animateWithDuration:SEC animations:^{
        self.imageView1.frame = CGRectMake(LEFT, TOP, DA, DA);
        self.imageView2.frame = CGRectMake(LEFT + DA, TOP + DA - XIAO, XIAO, XIAO);
        self.imageView3.frame = CGRectMake(LEFT + DA -XIAO, TOP + DA, XIAO, XIAO);
        self.imageView4.frame = CGRectMake(LEFT + DA, TOP + DA, XIAO, XIAO);
    }completion:^(BOOL finished){
        [self.imageView1.layer addPopUpAnimation];
        [self.imageView2.layer addPopUpAnimation];
        [self.imageView3.layer addPopUpAnimation];
        [self.imageView4.layer addPopUpAnimation];
    }];
}


-(IBAction)bt2:(id)sender
{
    [UIView animateWithDuration:SEC animations:^{
        self.imageView1.frame = CGRectMake(LEFT, TOP+DA-XIAO, XIAO, XIAO);
        
        self.imageView2.frame = CGRectMake(LEFT + XIAO, TOP, DA, DA);
        
        self.imageView3.frame = CGRectMake(LEFT, TOP+DA, XIAO, XIAO);
        self.imageView4.frame = CGRectMake(LEFT + XIAO, TOP+DA, XIAO, XIAO);
    }completion:^(BOOL finished){
        [self.imageView1.layer addPopUpAnimation];
        [self.imageView2.layer addPopUpAnimation];
        [self.imageView3.layer addPopUpAnimation];
        [self.imageView4.layer addPopUpAnimation];
    }];
}


-(IBAction)bt3:(id)sender
{
    [UIView animateWithDuration:SEC animations:^{
        self.imageView1.frame = CGRectMake(LEFT+DA-XIAO, TOP, XIAO, XIAO);
        
        self.imageView2.frame = CGRectMake(LEFT + DA, TOP, XIAO, XIAO);
        
        self.imageView3.frame = CGRectMake(LEFT, TOP + XIAO, DA, DA);
        self.imageView4.frame = CGRectMake(LEFT + DA, TOP + XIAO, XIAO, XIAO);
    }completion:^(BOOL finished){
        [self.imageView1.layer addPopUpAnimation];
        [self.imageView2.layer addPopUpAnimation];
        [self.imageView3.layer addPopUpAnimation];
        [self.imageView4.layer addPopUpAnimation];
    }];
}



-(IBAction)bt4:(id)sender
{
    [UIView animateWithDuration:SEC animations:^{
        self.imageView1.frame = CGRectMake(LEFT, TOP, XIAO, XIAO);
        
        self.imageView2.frame = CGRectMake(LEFT + XIAO, TOP, XIAO, XIAO);
        
        self.imageView3.frame = CGRectMake(LEFT, TOP+XIAO, XIAO, XIAO);
        self.imageView4.frame = CGRectMake(LEFT + XIAO, TOP+XIAO, DA, DA);
    }completion:^(BOOL finished){
        [self.imageView1.layer addPopUpAnimation];
        [self.imageView2.layer addPopUpAnimation];
        [self.imageView3.layer addPopUpAnimation];
        [self.imageView4.layer addPopUpAnimation];
    }];
}
/*
-(IBAction)bt2:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    
    self.imageView1.frame = CGRectMake(LEFT, TOP+DA-XIAO, XIAO, XIAO);
    
    self.imageView2.frame = CGRectMake(LEFT + XIAO, TOP, DA, DA);
    
    self.imageView3.frame = CGRectMake(LEFT, TOP+DA, XIAO, XIAO);
    self.imageView4.frame = CGRectMake(LEFT + XIAO, TOP+DA, XIAO, XIAO);
    
    [UIView commitAnimations];
}

-(IBAction)bt3:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    
    self.imageView1.frame = CGRectMake(LEFT+DA-XIAO, TOP, XIAO, XIAO);
    
    self.imageView2.frame = CGRectMake(LEFT + DA, TOP, XIAO, XIAO);
    
    self.imageView3.frame = CGRectMake(LEFT, TOP + XIAO, DA, DA);
    self.imageView4.frame = CGRectMake(LEFT + DA, TOP + XIAO, XIAO, XIAO);
    
    [UIView commitAnimations];
}

-(IBAction)bt4:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    
    self.imageView1.frame = CGRectMake(LEFT, TOP, XIAO, XIAO);
    
    self.imageView2.frame = CGRectMake(LEFT + XIAO, TOP, XIAO, XIAO);
    
    self.imageView3.frame = CGRectMake(LEFT, TOP+XIAO, XIAO, XIAO);
    self.imageView4.frame = CGRectMake(LEFT + XIAO, TOP+XIAO, DA, DA);
    
    [UIView commitAnimations];
}
*/

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    {
        self.imageView1.image = [imageView1.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:R
                                 corners:DSCornerTopLeft | DSCornerBottomRight
                                 transparency:NO];
        
        self.imageView1.image = [imageView1.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:0
                                 corners:DSCornerBottomLeft | DSCornerTopRight
                                 transparency:NO];
    }
    {
        self.imageView2.image = [imageView2.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:0
                                 corners:DSCornerTopLeft | DSCornerBottomRight
                                 transparency:NO];
        
        self.imageView2.image = [imageView2.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:R
                                 corners:DSCornerBottomLeft | DSCornerTopRight
                                 transparency:NO];
    }
    
    {
        self.imageView3.image = [imageView3.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:0
                                 corners:DSCornerTopLeft | DSCornerBottomRight
                                 transparency:NO];
        
        self.imageView3.image = [imageView3.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:R
                                 corners:DSCornerBottomLeft | DSCornerTopRight
                                 transparency:NO];
    }
    
    {
        self.imageView4.image = [imageView4.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:R
                                 corners:DSCornerTopLeft | DSCornerBottomRight
                                 transparency:NO];
        
        self.imageView4.image = [imageView4.image
                                 imageResizedToSize:CGSizeMake(160, 160)
                                 withCornerRadius:0
                                 corners:DSCornerBottomLeft | DSCornerTopRight
                                 transparency:NO];
    }

    

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
