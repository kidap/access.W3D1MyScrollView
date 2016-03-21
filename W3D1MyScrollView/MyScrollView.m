//
//  MyScrollView.m
//  W3D1MyScrollView
//
//  Created by Karlo Pagtakhan on 03/21/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()
@property (nonatomic, assign) CGFloat initialY;
@end

@implementation MyScrollView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initWithCoder:(NSCoder *)coder
{
  self = [super initWithCoder:coder];
  if (self) {
    _panGestureRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panning:)];
    
    [self addGestureRecognizer:_panGestureRecognizer];
    _initialY = 0;
  }
  return self;
}

-(void) panning:(UIPanGestureRecognizer *)recognizer{
  switch (recognizer.state) {
    case UIGestureRecognizerStateBegan:
      //Save the origin Y value
      self.initialY = [recognizer locationInView:self].y;
      break;
      
    case UIGestureRecognizerStateChanged:{
      //Get the new Y of the bounds.
      CGFloat offsetY =  self.initialY - [recognizer locationInView:self].y;
      CGFloat newOriginY = MIN(MAX(0,self.bounds.origin.y + offsetY), self.bounds.size.height);
      
      [UIView animateWithDuration:0.1 animations:^{
        self.bounds = CGRectMake(self.bounds.origin.x, newOriginY, self.bounds.size.width, self.bounds.size.height);
      }];
      
      break;
    }
    case UIGestureRecognizerStateEnded:{
      break;
    }
    default:
      break;
  }
  
}

@end
