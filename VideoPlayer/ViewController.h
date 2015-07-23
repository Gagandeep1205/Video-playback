//
//  ViewController.h
//  VideoPlayer
//
//  Created by Gagandeep Kaur on 23/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate>

@property (strong, nonatomic) NSURL *videoURL;
@property (strong, nonatomic) MPMoviePlayerController *videoController;
- (IBAction)btnPlay:(id)sender;
- (IBAction)btnFullScreen:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *outletBtnFullscreen;

@end

