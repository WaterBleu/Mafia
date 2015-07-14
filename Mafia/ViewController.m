//
//  ViewController.m
//  Mafia
//
//  Created by Jeff Huang on 2015-07-13.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "ViewController.h"
#import "MafiaViewController.h"
#import "SherrifViewController.h"
#import "Mafia.h"
#import "GameViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *mafiaView;
@property (weak, nonatomic) IBOutlet UIView *sherrifView;
@property (nonatomic) BOOL isMafia;
@property (nonatomic) Mafia* game;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.game = [[Mafia alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint currentionLocation = [[touches anyObject] locationInView:self.view];
    if([self checkView:self.mafiaView withCurrentLocation:currentionLocation])
        [self performSegueWithIdentifier:@"toMafia" sender:self];
    else if([self checkView:self.sherrifView withCurrentLocation:currentionLocation])
        [self performSegueWithIdentifier:@"toSherrif" sender:self];
    else
        NSLog(@"Invalid Selection");
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UINavigationController *nav = ((UINavigationController*)segue.destinationViewController);
    GameViewController *miniGame = (GameViewController *)nav.topViewController;
    if([segue.identifier isEqualToString:@"toMafia"]){
        if([miniGame randomGame:true])
            self.game.numCivilian--;
    }
    else if([segue.identifier isEqualToString:@"toSherrif"]){
        if([miniGame randomGame:false])
            self.game.numMafia--;
    }
}

- (BOOL)checkView:(UIView*) checkedView withCurrentLocation:(CGPoint) currLoc{
    if (CGRectContainsPoint(checkedView.frame, currLoc)) {
        return true;
    }
    else
        return false;
}

@end
