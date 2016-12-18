//
//  appView.h
//  01-九宫格
//
//  Created by ifeng on 16/8/27.
//  Copyright © 2016年 ifeng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class model;
@interface appView : UIView

@property (nonatomic,strong) model *appModel;

-(id)initAppViewWithFrame:(CGRect)frame;

+(instancetype)appInitWith:(CGRect)frame;

@end
