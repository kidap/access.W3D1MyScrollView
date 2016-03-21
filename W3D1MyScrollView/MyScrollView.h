//
//  MyScrollView.h
//  W3D1MyScrollView
//
//  Created by Karlo Pagtakhan on 03/21/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic, assign) CGSize contentSize;
@property (nonatomic, strong) UIPanGestureRecognizer *panGestureRecognizer;
@end
