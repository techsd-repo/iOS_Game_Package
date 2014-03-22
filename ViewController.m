//
//  ViewController.m
//  Heli
//
//  Created by TheTechsd1 on 3/20/14.
//  Copyright (c) 2014 TheTechsd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)Collision {
    
    if (CGRectIntersectsRect(_heli.frame, _ob.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _ob2.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb2.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb3.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb4.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb5.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb6.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obb7.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt2.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt3.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt4.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt5.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt6.frame)) {
        [self endGame];
    }
    
    if (CGRectIntersectsRect(_heli.frame, _obt7.frame)) {
        [self endGame];
    }

    if (_heli.center.y > 249) {
        [self endGame];
    }
    
    if (_heli.center.y < 28) {
        [self endGame];
    }

    
}



- (void)endGame {
    if (ScoreNumber > HighScore) {
        HighScore = ScoreNumber;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScoreSaved"];
    }
    
    _heli.hidden = YES;
    [timer invalidate];
    [scorer invalidate];
    
    
    [self performSelector:@selector(newGame) withObject:nil afterDelay:2];
     
}


- (void)newGame {
    
    _ob.hidden = YES;
    _ob2.hidden = YES;
    _obb.hidden = YES;
    _obb2.hidden = YES;
    _obb3.hidden = YES;
    _obb4.hidden = YES;
    _obb5.hidden = YES;
    _obb6.hidden = YES;
    _obb7.hidden = YES;
    _obt.hidden =  YES;
    _obt2.hidden =  YES;
    _obt3.hidden =  YES;
    _obt4.hidden =  YES;
    _obt5.hidden =  YES;
    _obt6.hidden =  YES;
    _obt7.hidden =  YES;
    
    
    _tpstart.hidden = NO;
    _tsdapps.hidden = NO;
    _hscore.hidden = NO;
    
    _heli.hidden = NO;
    
    _heli.center = CGPointMake(49, 129);
    _heli.image = [UIImage imageNamed:@"heli_up.png"];
    
    Start = YES;
    
    ScoreNumber = 0;
    _score.text = @"000";
    
    _hscore.text = [NSString stringWithFormat:@"High Score: %d", HighScore];

    
}



- (void)heliMove {
    
    [self Collision];
    
    
    _heli.center = CGPointMake(_heli.center.x, _heli.center.y + Y);
    
    _ob.center = CGPointMake(_ob.center.x - 10, _ob.center.y);
    _ob2.center = CGPointMake(_ob2.center.x - 10, _ob2.center.y);
    _obb.center = CGPointMake(_obb.center.x - 10, _obb.center.y);
    _obb2.center = CGPointMake(_obb2.center.x - 10, _obb2.center.y);
    _obb3.center = CGPointMake(_obb3.center.x - 10, _obb3.center.y);
    _obb4.center = CGPointMake(_obb4.center.x - 10, _obb4.center.y);
    _obb5.center = CGPointMake(_obb5.center.x - 10, _obb5.center.y);
    _obb6.center = CGPointMake(_obb6.center.x - 10, _obb6.center.y);
    _obb7.center = CGPointMake(_obb7.center.x - 10, _obb7.center.y);
    _obt.center = CGPointMake(_obt.center.x - 10, _obt.center.y);
    _obt2.center = CGPointMake(_obt2.center.x - 10, _obt2.center.y);
    _obt3.center = CGPointMake(_obt3.center.x - 10, _obt3.center.y);
    _obt4.center = CGPointMake(_obt4.center.x - 10, _obt4.center.y);
    _obt5.center = CGPointMake(_obt5.center.x - 10, _obt5.center.y);
    _obt6.center = CGPointMake(_obt6.center.x - 10, _obt6.center.y);
    _obt7.center = CGPointMake(_obt7.center.x - 10, _obt7.center.y);
    
    
    if (_ob.center.x < 0) {
        randomPos = arc4random() %75;
        randomPos = randomPos + 110;
        _ob.center =CGPointMake(510, randomPos);
     }
    
    if (_ob2.center.x < 0) {
        randomPos = arc4random() %75;
        randomPos = randomPos + 110;
        _ob2.center = CGPointMake(510, randomPos);
    }
    
    if (_obt.center.x < -30) {
        randomPos = arc4random() %55;
        _obt.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb.center = CGPointMake(510, randomPos);
    }
    
    if (_obt2.center.x < -30) {
        randomPos = arc4random() %55;
        _obt2.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb2.center = CGPointMake(510, randomPos);
    }
    
    if (_obt3.center.x < -30) {
        randomPos = arc4random() %55;
        _obt3.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb3.center = CGPointMake(510, randomPos);
    }
    
    if (_obt4.center.x < -30) {
        randomPos = arc4random() %55;
        _obt4.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb4.center = CGPointMake(510, randomPos);
    }
    
    if (_obt5.center.x < -30) {
        randomPos = arc4random() %55;
        _obt5.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb5.center = CGPointMake(510, randomPos);
    }
    
    if (_obt6.center.x < -30) {
        randomPos = arc4random() %55;
        _obt6.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb6.center = CGPointMake(510, randomPos);
    }
    
    if (_obt7.center.x < -30) {
        randomPos = arc4random() %55;
        _obt7.center = CGPointMake(510, randomPos);
        randomPos = randomPos + 265;
        _obb7.center = CGPointMake(510, randomPos);
    }







}


- (void)scoreing {
    ScoreNumber = ScoreNumber + 1;
    _score.text = [NSString stringWithFormat:@"Score: %d", ScoreNumber];
    
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    if(Start == YES) {
        _tsdapps.hidden = YES;
        _tpstart.hidden = YES;
        _hscore.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.11 target:self selector:@selector(heliMove) userInfo:nil repeats:YES];
        
        scorer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(scoreing) userInfo:nil repeats:YES];
        
        Start = NO;
        
        _obt.hidden = NO;
        _obt2.hidden = NO;
        _obt3.hidden = NO;
        _obt4.hidden = NO;
        _obt5.hidden = NO;
        _obt6.hidden = NO;
        _obt7.hidden = NO;
        _obb.hidden = NO;
        _obb2.hidden = NO;
        _obb3.hidden = NO;
        _obb4.hidden = NO;
        _obb5.hidden = NO;
        _obb6.hidden = NO;
        _obb7.hidden = NO;
        _ob.hidden = NO;
        _ob2.hidden = NO;
        
        
        randomPos = arc4random() %75;
        randomPos = randomPos + 110;
        _ob.center = CGPointMake(570, randomPos);
        
        
        randomPos = arc4random() %75;
        randomPos = randomPos + 110;
        _ob2.center = CGPointMake(855, randomPos);
        
        randomPos = arc4random() %55;
        _obt.center = CGPointMake(560, randomPos);
        randomPos = randomPos + 265;
        _obb.center = CGPointMake(560, randomPos);
        
        randomPos = arc4random() %55;
        _obt2.center = CGPointMake(640, randomPos);
        randomPos = randomPos + 265;
        _obb2.center = CGPointMake(640, randomPos);
        
        randomPos = arc4random() %55;
        _obt3.center = CGPointMake(720, randomPos);
        randomPos = randomPos + 265;
        _obb3.center = CGPointMake(720, randomPos);
        
        randomPos = arc4random() %55;
        _obt4.center = CGPointMake(800, randomPos);
        randomPos = randomPos + 265;
        _obb4.center = CGPointMake(800, randomPos);
        
        randomPos = arc4random() %55;
        _obt5.center = CGPointMake(880, randomPos);
        randomPos = randomPos + 265;
        _obb5.center = CGPointMake(880, randomPos);
        
        randomPos = arc4random() %55;
        _obt6.center = CGPointMake(960, randomPos);
        randomPos = randomPos + 265;
        _obb6.center = CGPointMake(960, randomPos);
        
        randomPos = arc4random() %55;
        _obt7.center = CGPointMake(1040, randomPos);
        randomPos = randomPos + 265;
        _obb7.center = CGPointMake(1040, randomPos);


    }
    
    Y = -7;
    _heli.image = [UIImage imageNamed:@"heli_up.png"];
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    Y = 7;
    _heli.image = [UIImage imageNamed:@"heli_dn.png"];
    
    
}


- (void)viewDidLoad
{
    
    Start = YES;
    
    _ob.hidden = YES;
    _ob2.hidden = YES;
    _obb.hidden = YES;
    _obb2.hidden = YES;
    _obb3.hidden = YES;
    _obb4.hidden = YES;
    _obb5.hidden = YES;
    _obb6.hidden = YES;
    _obb7.hidden = YES;
    _obt.hidden =  YES;
    _obt2.hidden =  YES;
    _obt3.hidden =  YES;
    _obt4.hidden =  YES;
    _obt5.hidden =  YES;
    _obt6.hidden =  YES;
    _obt7.hidden =  YES;
    
    
    HighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    _hscore.text = [NSString stringWithFormat:@"High Score: %d", HighScore];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
