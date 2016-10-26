//
//  XJSpinImageView.h
//  ReleaseDemo
//
//  Created by trq on 16/10/10.
//  Copyright © 2016年 fanyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XJSpinImageView : UIImageView

//@property(nonatomic) CGAffineTransform transform;

+ (nullable instancetype)imageViewWithImageName:(nullable NSString *)imageName;

- (void)spin;

@end
