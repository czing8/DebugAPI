//
//  VRollLabel.m
//  VRollLabel
//
//  Created by Vols on 15/6/5.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "VRollLabel.h"

#define kSCREEN_SIZE        [UIScreen mainScreen].bounds.size
#define kLabelHeight

@interface VRollLabel ()

@property (nonatomic, strong) UILabel * label;

@end

@implementation VRollLabel

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.showsVerticalScrollIndicator   = NO;
        self.showsHorizontalScrollIndicator = NO;   //水平滚动条
        
        self.font = [UIFont systemFontOfSize:14];
        self.textColor = [UIColor blackColor];
        
        [self displayUI];
        
    }
    return self;
}

- (void)displayUI{
    self.contentSize = [self contentSize:self.text];    //滚动大小

    _label = [[UILabel alloc] init];
    _label.frame = self.bounds;
    _label.text = self.text;
    _label.font = self.font;
    _label.textColor = self.textColor;
    [self addSubview:_label];
}

- (CGSize)contentSize:(NSString *)str{
    if (![str isEqual:[NSNull null]]) {
        NSLog(@"%@", self.font);
        NSDictionary *dict = @{NSFontAttributeName:self.font};
        // 获取文字的宽高
        CGSize size = [str boundingRectWithSize:CGSizeMake(kSCREEN_SIZE.width, self.bounds.size.height)  options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
        return size;
    }
    else {
        return CGSizeMake(kSCREEN_SIZE.width, self.bounds.size.height);
    }
}


- (void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    
    _label.textColor = textColor;
}

- (void)setFont:(UIFont *)font{
    _font = font;
    
    _label.font = font;
}

- (void)setText:(NSString *)text{
    _text = text;
    
    _label.text = text;
    self.contentSize = [self contentSize:text];    //滚动大小
    _label.frame = CGRectMake(5, 0, self.contentSize.width, self.bounds.size.height);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
