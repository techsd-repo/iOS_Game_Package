//
//  ViewController.h
//  Heli
//
//  Created by TheTechsd1 on 3/20/14.
//  Copyright (c) 2014 TheTechsd. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
BOOL Start;
int randomPos;
int ScoreNumber;
int HighScore;

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *tsdapps;
@property (strong, nonatomic) IBOutlet UILabel *tpstart;
@property (strong, nonatomic) IBOutlet UILabel *hscore;

@property (strong, nonatomic) IBOutlet UIImageView *heli;


@property (strong, nonatomic) IBOutlet UIImageView *ob;
@property (strong, nonatomic) IBOutlet UIImageView *ob2;
@property (strong, nonatomic) IBOutlet UIImageView *obt7;
@property (strong, nonatomic) IBOutlet UIImageView *obt6;
@property (strong, nonatomic) IBOutlet UIImageView *obt5;
@property (strong, nonatomic) IBOutlet UIImageView *obt4;
@property (strong, nonatomic) IBOutlet UIImageView *obt3;
@property (strong, nonatomic) IBOutlet UIImageView *obt2;
@property (strong, nonatomic) IBOutlet UIImageView *obt;
@property (strong, nonatomic) IBOutlet UIImageView *obb7;
@property (strong, nonatomic) IBOutlet UIImageView *obb6;
@property (strong, nonatomic) IBOutlet UIImageView *obb5;
@property (strong, nonatomic) IBOutlet UIImageView *obb4;
@property (strong, nonatomic) IBOutlet UIImageView *obb3;
@property (strong, nonatomic) IBOutlet UIImageView *obb2;
@property (strong, nonatomic) IBOutlet UIImageView *obb;

@property (strong, nonatomic) IBOutlet UILabel *score;





- (void)heliMove;
- (void)Collision;
- (void)endGame;
- (void)newGame;
- (void)scoreing;


@end

NSTimer *timer;
NSTimer *scorer;

