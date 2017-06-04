//
//  ViewController.m
//  cyberVision
//
//  Created by ZhangKun on 7/18/15.
//  Copyright (c) 2015 ZhangKun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;

@synthesize countNumber;


- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *cameraButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(takePicture:)];
    
    [self.navigationItem setRightBarButtonItem:cameraButtonItem];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) takePicture:(id) sender
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePickerController setDelegate:self];
    [self presentModalViewController:imagePickerController animated:YES];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *img = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imageView setImage:img];
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static NSInteger count = 0;

- (IBAction)pressedRecount:(id)sender {
    NSLog(@"in pressedRecount");
    [self.countButton.setNeedsDisplay:countNumber];
    
}





@end



