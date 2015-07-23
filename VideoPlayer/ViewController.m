//
//  ViewController.m
//  VideoPlayer
//
//  Created by Gagandeep Kaur on 23/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import "ViewController.h"
BOOL fullscreen = NO;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _outletBtnFullscreen.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnPlay:(id)sender {
    
    self.videoURL = [NSURL URLWithString:@"http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v"];
    self.videoController = [[MPMoviePlayerController alloc] init];
    [self.videoController setContentURL:self.videoURL];
    if (fullscreen) {
        
        [self.videoController.view setFrame:CGRectMake (0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    }
    else{
        
        [self.videoController.view setFrame:CGRectMake (0, 0, 320, 200)];
    }
    [self.view addSubview:self.videoController.view];
    [self.videoController play];
}

- (IBAction)btnFullScreen:(id)sender {
    fullscreen = YES;
}
@end
