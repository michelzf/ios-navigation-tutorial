//
//  LetraViewController.h
//  Navigation
//
//  Created by Michel Zarzour Filho on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import "Singleton.h"
#import "Letra.h"

@interface LetraViewController : UIViewController
@property (strong, nonatomic) AVSpeechSynthesizer* synthesizer;
@property (strong, nonatomic) AVSpeechUtterance* utterance;
@end