//
//  XJSpinImageView.m
//  ReleaseDemo
//
//  Created by trq on 16/10/10.
//  Copyright © 2016年 fanyu. All rights reserved.
//

#import "XJSpinImageView.h"

@interface XJSpinImageView ()

@property (nonatomic, assign) BOOL original;

@end

@implementation XJSpinImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (nullable instancetype)imageViewWithImageName:(nullable NSString *)imageName {
    
    return [[self alloc] initWithImageName:imageName];
}

- (nullable id)initWithImageName:(nullable NSString *)imageName {
    
    if (self = [super init]) {
        
        self.image = [UIImage imageNamed:imageName];
        self.original = YES;
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)spin {
    
    CGFloat angle;
    
    if (self.original) {
        
        angle = 90;
        
    }
    else {
        angle = 360.0;
    }
    
    [UIView beginAnimations:nil context:NULL];
    /* Make the animation 1 seconds long */
    [UIView setAnimationDuration:0.5];
    self.transform = CGAffineTransformMakeRotation((angle * M_PI) / 180.0f);
    /* Commit the animation */
    [UIView commitAnimations];
    
    self.original = !self.original;
}

@end
