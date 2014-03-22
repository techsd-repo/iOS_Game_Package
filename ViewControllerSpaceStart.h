//
//  ViewControllerSpaceStart.h
//  Heli
//
//  Created by TheTechsd1 on 3/21/14.
//  Copyright (c) 2014 TheTechsd. All rights reserved.
//

#import <UIKit/UIKit.h>

int ShipMovement;
int BulletMovement;
int BulletsOnScreen;
int MonstersKilled;
BOOL Monster1Hit;
BOOL Monster2Hit;
BOOL Monster3Hit;
BOOL Monster4Hit;
BOOL Monster5Hit;
BOOL Monster6Hit;
BOOL Monster7Hit;
BOOL Monster8Hit;
BOOL Monster9Hit;
BOOL Monster10Hit;





@interface ViewControllerSpaceStart : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *Start;
@property (strong, nonatomic) IBOutlet UIButton *Exit;
@property (strong, nonatomic) IBOutlet UIButton *Shoot;

@property (strong, nonatomic) IBOutlet UIImageView *Ship;
@property (strong, nonatomic) IBOutlet UIImageView *Bullet;


@property (strong, nonatomic) IBOutlet UIImageView *Monster1;
@property (strong, nonatomic) IBOutlet UIImageView *Monster2;
@property (strong, nonatomic) IBOutlet UIImageView *Monster3;
@property (strong, nonatomic) IBOutlet UIImageView *Monster4;
@property (strong, nonatomic) IBOutlet UIImageView *Monster5;
@property (strong, nonatomic) IBOutlet UIImageView *Monster6;
@property (strong, nonatomic) IBOutlet UIImageView *Monster7;
@property (strong, nonatomic) IBOutlet UIImageView *Monster8;
@property (strong, nonatomic) IBOutlet UIImageView *Monster9;
@property (strong, nonatomic) IBOutlet UIImageView *Monster10;


- (IBAction)Start:(id)sender;

- (IBAction)Shoot:(id)sender;
- (void)Movement;
- (void)Collision;
- (void)MonsterKilled;

@end

NSTimer *MovementTimer;
