//
//  SecondViewController.h
//  twitter-snapchat
//
//  Created by Daníel Björn Sigurbjörnsson on 1/9/15.
//  Copyright (c) 2015 danni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ENGAVFoundationCameraController.h"

@interface SecondViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate,ENGAVFoundationCameraControllerDelegate>

@property (strong,nonatomic) UIImagePickerController *picker;

@property (weak, nonatomic) IBOutlet ENGAVFoundationCameraController *cameraView;

@end
