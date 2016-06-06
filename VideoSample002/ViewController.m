//
//  ViewController.m
//  VideoSample002
//
//  Created by hirauchi.shinichi on 2016/06/05.
//  Copyright © 2016年 SAPPOROWORKS. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@property (nonatomic,strong) MPMoviePlayerController *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:@"https://s3-ap-northeast-1.amazonaws.com/hls-sample/index.m3u8"];
    self.player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    self.player.controlStyle             = MPMovieControlStyleDefault;
    self.player.scalingMode              = MPMovieScalingModeAspectFit;
    self.player.shouldAutoplay           = NO;
    self.player.view.autoresizingMask    = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.player.view.autoresizesSubviews = YES;
    self.player.view.frame = CGRectMake(0, 0, self.view.bounds.size.width,300);
    [self.player prepareToPlay];
    [self.view addSubview:self.player.view];
}


@end
