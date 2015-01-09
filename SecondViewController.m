//
//  SecondViewController.m
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"blessaður");
    self.cameraView.delegate = self;
    [self.cameraView setupInitialState:self.view.frame cameraMode:ENGAVFoundationCameraModePhoto stillCameraMethod:ENGAVFoundationStillCameraMethodStandard pixelFormat:kCVPixelFormatType_32BGRA];
    self.cameraView.photoPreset = AVCaptureSessionPresetiFrame960x540;
    self.cameraView.showsShutterButton = NO;
    //[self.cameraView ]
    [self.cameraView start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cameraController:(ENGAVFoundationCameraController *)cameraController didScaledTo:(CGFloat)scale viewRect:(CGRect)rect{
    NSLog(@"%f, %@", scale, NSStringFromCGRect(rect));
}

- (void)cameraController:(ENGAVFoundationCameraController *)cameraController didFinishPickingImage:(UIImage *)image metadata:(NSDictionary *)metadata{
    NSLog(@"image is: %@",image);
}

- (IBAction)onCameraButtonTouch:(id)sender {
    [self.cameraView takePicture];
}

@end
