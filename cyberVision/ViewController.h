//
//  ViewController.h
//  cyberVision
//
//  Created by ZhangKun on 7/18/15.
//  Copyright (c) 2015 ZhangKun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    
    
}


@property (nonatomic, weak) IBOutlet UIImageView *imageView;


@property (strong, nonatomic) IBOutlet UILabel *countNumber;

@property (strong, nonatomic) IBOutlet UIButton *countButton;


- (IBAction)pressedRecount:(id)sender;



@end

