//
//  ViewControllerSpaceStart.m
//  Heli
//
//  Created by TheTechsd1 on 3/21/14.
//  Copyright (c) 2014 TheTechsd. All rights reserved.
//

#import "ViewControllerSpaceStart.h"

@interface ViewControllerSpaceStart ()

@end

@implementation ViewControllerSpaceStart

- (void)Collision {
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster1.frame) && Monster1Hit == NO)  {
        Monster1Hit = NO;
        _Monster1.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster2.frame) && Monster2Hit == NO)  {
        Monster2Hit = NO;
        _Monster2.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster3.frame) && Monster3Hit == NO)  {
        Monster3Hit = NO;
        _Monster3.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster4.frame) && Monster4Hit == NO)  {
        Monster4Hit = NO;
        _Monster4.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster5.frame) && Monster5Hit == NO)  {
        Monster5Hit = NO;
        _Monster5.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster6.frame) && Monster6Hit == NO)  {
        Monster6Hit = NO;
        _Monster6.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster7.frame) && Monster7Hit == NO)  {
        Monster7Hit = NO;
        _Monster7.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster8.frame) && Monster8Hit == NO)  {
        Monster8Hit = NO;
        _Monster8.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster9.frame) && Monster9Hit == NO)  {
        Monster9Hit = NO;
        _Monster9.hidden = YES;
        
        [self MonsterKilled];
    }
    
    if (CGRectIntersectsRect(_Bullet.frame, _Monster10.frame) && Monster10Hit == NO)  {
        Monster10Hit = NO;
        _Monster10.hidden = YES;
        
        [self MonsterKilled];
    }






    
    
}





- (void)MonsterKilled {
    
    MonstersKilled = MonstersKilled + 1;
    BulletsOnScreen = 0;
    _Bullet.hidden = YES;
    BulletMovement = 0;
    
    _Bullet.center = CGPointMake(200, 564);
}




- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
    if (point.x < 160) {
        ShipMovement = -7;
    } else {
        ShipMovement = 7;
    }
    
    
    
}




- (void)Movement {
    
    _Ship.center = CGPointMake(_Ship.center.x + ShipMovement, _Ship.center.y);
    _Bullet.center = CGPointMake(_Bullet.center.x, _Bullet.center.y - BulletMovement);
    
    if (_Bullet.center.y < 0) {
        _Bullet.hidden = YES;
        BulletsOnScreen = 0;
        BulletMovement = 0;
    }
    
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    ShipMovement = 0;
}


- (IBAction)Start:(id)sender {
    _Start.hidden = YES;
    _Shoot.hidden = NO;
    
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
    
}


- (IBAction)Shoot:(id)sender {
    
    if (BulletsOnScreen == 0 || BulletsOnScreen == 1) {
        _Bullet.hidden = NO;
        _Bullet.center = CGPointMake(_Ship.center.x, 478);
        _Bullet.center = CGPointMake(_Ship.center.x, 479);
        BulletsOnScreen = BulletsOnScreen + 1;
        BulletMovement = 7;
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    _Bullet.hidden = YES;
    _Shoot.hidden = YES;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
