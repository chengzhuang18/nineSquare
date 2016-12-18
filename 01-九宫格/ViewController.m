//
//  ViewController.m
//  01-九宫格
//
//  Created by ifeng on 16/8/26.
//  Copyright © 2016年 ifeng. All rights reserved.
//

#import "ViewController.h"
#import "model.h"
#import "appView.h"
#define AppHEIGHT (([[UIScreen mainScreen] bounds].size.height-50)/4)
#define AppWIDTH (([[UIScreen mainScreen] bounds].size.width-40)/3)
#define number 3
@interface ViewController ()
@property(nonatomic,strong) UILabel *bottomLable;
@property(nonatomic,strong) NSArray *dataArray;

@end


@implementation ViewController

-(NSArray*)dataArray{
    if (_dataArray==nil) {
        _dataArray = [model appData];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadUI];
}


-(void)loadUI{
    
    
    for (int i=0; i<self.dataArray.count; i++) {
        
        CGFloat margin = 10;
        
        int row = i/number;
        
        int col = i%number;
        
        CGFloat x = margin+col*(margin+AppWIDTH);
        CGFloat y = margin+row*(margin+AppHEIGHT);
        
        appView *view = [appView appInitWith:CGRectMake(x,y,AppWIDTH,AppHEIGHT)];
        [self.view addSubview:view];
        
        view.appModel = self.dataArray[i];
        
    }
}

-(void)loadData:(NSInteger)i{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
