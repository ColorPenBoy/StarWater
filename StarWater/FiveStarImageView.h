//
//  FiveStarImageView.h
//  StarWater
//
//  Created by 张强 on 15/7/2.
//  Copyright (c) 2015年 ColorPen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FiveStarImageView : UIView

@property (nonatomic, retain)UIImageView *imageClear;
@property (nonatomic, retain)UIImageView *imageFull;
@property (nonatomic, retain)UIView *coverView;
- (id)initWithFrame:(CGRect)frame withColor:(UIColor *)color;

@end
