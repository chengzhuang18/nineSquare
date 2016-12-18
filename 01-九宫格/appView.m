//
//  appView.m
//  01-九宫格
//
//  Created by ifeng on 16/8/27.
//  Copyright © 2016年 ifeng. All rights reserved.
//

#import "appView.h"
#import "model.h"
@interface appView ()
@property(nonatomic,strong) UILabel *bottomLable;
@property (strong, nonatomic)  UIImageView *imageView;
@property (strong, nonatomic)  UILabel *label;
@property (strong, nonatomic)  UIButton *button;

@end

@implementation appView

-(void)setAppModel:(model *)appModel{
    _appModel = appModel;
    self.label.text = appModel.name;
    self.imageView.image = appModel.image;
}

-(id)initAppViewWithFrame:(CGRect)frame{
    if (self = [super init]) {
        self.frame = frame;
        CGFloat width = frame.size.width;
        CGFloat height = frame.size.height;
        
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0 , width,height-60)];
        
        [self addSubview:_imageView];
        
    
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, height-60, width,30)];
        _label.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_label];
        
        _button = [[UIButton alloc]initWithFrame:CGRectMake(0,height-30, width,30)];
        [self addSubview:_button];
        _button.titleLabel.font = [UIFont systemFontOfSize:13.0];
        [_button setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
        [_button setBackgroundImage:[UIImage imageNamed:@"buttongreen_highlighted"] forState:UIControlStateHighlighted];
        [_button setTitle:@"下载" forState:UIControlStateNormal];
        
        [_button addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
        
        }
    return self;
}

-(void)action:(UIButton*)button{
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    CGFloat height = [[UIScreen mainScreen] bounds].size.height;
    
    _bottomLable = [[UILabel alloc]initWithFrame:CGRectMake(width/2-50, height-50, 100, 30)];
    [self.superview addSubview:_bottomLable];
    _bottomLable.text = _appModel.name;
    button.enabled = NO;
    _bottomLable.textAlignment = NSTextAlignmentCenter;
    _bottomLable.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.2];
    _bottomLable.alpha = 0.0;
    
    [UIView animateWithDuration:0.1 animations:^(){
        _bottomLable.alpha = 1.0;
    }completion:^(BOOL finished){
        if(finished){
            [UIView animateWithDuration:0.1 animations:^(){
                _bottomLable.alpha = 0.0;
            }completion:^(BOOL finished){
                if (finished) {
                NSLog(@"动画完成");
                [_bottomLable removeFromSuperview];
                }
            }];
        }
    }];
    
}



+(instancetype)appInitWith:(CGRect)frame{
    return [[self alloc]initAppViewWithFrame:frame];
}


@end
