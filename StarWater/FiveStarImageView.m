//
//  FiveStarImageView.m
//  StarWater
//
//  Created by 张强 on 15/7/2.
//  Copyright (c) 2015年 ColorPen. All rights reserved.
//

#import "FiveStarImageView.h"
#define COVERFRAME self.coverView.frame
static BOOL isBool=YES;

@implementation FiveStarImageView

/**
 *
 *
 *  @param frame 星星的frame
 *  @param color 放星星的背景图片
 *
 *  @return 返回结果
 */
- (id)initWithFrame:(CGRect)frame withColor:(UIColor *)color{
    
    
    self=[super initWithFrame:frame];
    
    if(self){
        
        self.imageFull=[[UIImageView alloc]initWithFrame:self.bounds];
        self.imageFull.image=[UIImage imageNamed:@"mark_on_n.png"];
        [self addSubview:self.imageFull];
        self.coverView=[[UIView alloc]initWithFrame:self.bounds];
        self.coverView.backgroundColor=color;
        [self addSubview:self.coverView];
        
        self.imageClear=[[UIImageView alloc]initWithFrame:self.bounds];
        self.imageClear.image=[UIImage imageNamed:@"mark_off_n.png"];
        [self addSubview:self.imageClear];
        
        UIControl *control=[[UIControl alloc]initWithFrame:self.bounds];
        [control addTarget:self action:@selector(supportClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:control];
        
    }
    
    return self;
    
}

- (void)supportClick:(UIControl *)control{
    
    if(isBool){
        
        isBool=NO;
        NSLog(@"收藏");
        
        [UIView animateWithDuration:3.5f animations:^{
            
            self.coverView.frame=CGRectMake(COVERFRAME.origin.x, COVERFRAME.origin.y, COVERFRAME.size.width, 0);
            
        }];
        
        
    }else{
        
        isBool=YES;
        [UIView animateWithDuration:3.5f animations:^{
            
            self.coverView.frame=CGRectMake(COVERFRAME.origin.x, COVERFRAME.origin.y, COVERFRAME.size.width,self.frame.size.height);
            
        }];
        
        NSLog(@"取消收藏");
        
    }
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
