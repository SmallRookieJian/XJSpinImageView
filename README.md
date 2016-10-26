#XJSpinImageView

###功能
给图片设置了专门的旋转方法。

###使用
	//初始化
	- (XJSpinImageView *)spinImageView {
    	if (!_spinImageView) {
        _spinImageView = [XJSpinImageView
        imageViewWithImageName:@"head.png"];
        _spinImageView.frame = 
        CGRectMake(100, 100, 200, 200);
    	}
    	return _spinImageView;
	}
	
	//往视图上添加
	[self.view addSubview:self.spinImageView];

	//调用旋转方法
	[self.spinImageView spin];



