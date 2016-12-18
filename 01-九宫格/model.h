//
//  model.h
//  01-九宫格
//
//  Created by ifeng on 16/8/27.
//  Copyright © 2016年 ifeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface model : NSObject
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *icon;
@property(nonatomic,strong) UIImage *image;

-(model*)initWithDict:(NSDictionary*)dict;

+(instancetype)modelWithDict:(NSDictionary*)dict;

+(NSArray*)appData;
@end
