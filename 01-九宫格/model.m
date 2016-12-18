//
//  model.m
//  01-九宫格
//
//  Created by ifeng on 16/8/27.
//  Copyright © 2016年 ifeng. All rights reserved.
//

#import "model.h"


@implementation model

-(model *)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

-(UIImage*)image{
    if (_image==nil) {
        _image = [UIImage imageNamed:self.icon];
    }
    return _image;
}

+(instancetype)modelWithDict:(NSDictionary*)dict{
    return [[self alloc] initWithDict:dict];
}

+(NSArray*)appData{
    NSMutableArray *MArray = [NSMutableArray array];
   NSArray *array = [NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"app" ofType:@"plist"]];
//    [array enumerateObjectsUsingBlock:^(id obj,NSUInteger index,BOOL *stop){
//        [MArray addObject:[self modelWithDict:obj]];
//    }];
    for (NSDictionary *obj in array) {
        [MArray addObject:[self modelWithDict:obj]];
    }
    NSLog(@"----4");
    return MArray;
}


@end
