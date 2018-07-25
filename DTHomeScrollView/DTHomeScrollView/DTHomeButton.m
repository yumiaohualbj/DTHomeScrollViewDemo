//
//  DTHomeButton.m
//  DTcollege
//
//  Created by 信达 on 2018/7/24.
//  Copyright © 2018年 ZDQK. All rights reserved.
//

#import "DTHomeButton.h"

@implementation DTHomeButton


- (instancetype)initWithFrame:(CGRect)frame
                    withTitle:(NSString *)title
           withImageURLString:(NSString *)imageURLString{
    
    if (self = [super initWithFrame:frame]) {
        self.titleString = title;
        self.imageURLString = imageURLString;
        self.titleColor = @"#343434";
        [self createSubViews];
        
    }
    return self;
}

- (void)createSubViews{
    self.btnTitle = [[UILabel alloc]initWithFrame:CGRectZero];
    self.btnTitle.textColor = [UIColor blackColor];
    self.btnTitle.font = [UIFont systemFontOfSize:14];
    self.btnTitle.textAlignment = NSTextAlignmentCenter;
    
    self.btnTitle.text = self.titleString;
    [self addSubview:self.btnTitle];
    
    self.btnImage = [[UIImageView alloc]initWithFrame:CGRectZero];
    //加载网络图片
    //[self.btnImage sd_setImageWithURL:[NSURL URLWithString:self.imageURLString] placeholderImage:[UIImage imageNamed:@"暂无图片"]];
    [self addSubview:self.btnImage];

}


- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    self.btnImage.frame = CGRectMake((self.frame.size.width - 45)/2,10, 45, 45);
    self.btnTitle.frame = CGRectMake(0,CGRectGetMaxY(self.btnImage.frame) + 10, self.frame.size.width, 14.5);
   
}

@end
