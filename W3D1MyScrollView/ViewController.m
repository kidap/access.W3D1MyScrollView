//
//  ViewController.m
//  W3D1MyScrollView
//
//  Created by Karlo Pagtakhan on 03/21/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), 800);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
//
//  self.view.bounds = CGRectOffset(self.view.bounds, 0, 100);
}

@end
