//
//  ViewController.m
//  隐式动画
//
//  Created by mxl on 2016/10/20.
//  Copyright © 2016年 yunjifen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) CALayer *layer;
@property (weak, nonatomic) IBOutlet UIView *greenView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer = [CALayer layer];
    
    layer.position = CGPointMake(200, 200);
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.anchorPoint = CGPointZero;
    layer.backgroundColor = [UIColor redColor].CGColor;
    
    _layer = layer;
    
    [self.view.layer addSublayer:layer];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 跟层没有动画
    //    NSValue *value1 = [NSValue valueWithCGPoint:CGPointMake(250, 250)];
    //    [_greenView.layer setValue:value1 forKeyPath:@"position"];
    
    //    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
    //    [_layer setValue:@(M_PI) forKeyPath:@"transform.rotation"];
    // x 0~x-1
    //    [CATransaction begin];
    // 取消隐士动画
    [CATransaction setDisableActions:YES];
    _layer.cornerRadius = arc4random_uniform(50) + 1;
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    _layer.borderColor = [UIColor colorWithRed:r green:g blue:b alpha:1].CGColor;
    _layer.borderWidth = arc4random_uniform(5);
    
    _layer.position = CGPointMake(arc4random_uniform(250), arc4random_uniform(250));
    //    [CATransaction commit];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
