//
//  GameViewController.m
//  Mafia
//
//  Created by Jeff Huang on 2015-07-13.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "GameViewController.h"
#import "MafiaViewController.h"
#import "SherrifViewController.h"

@interface GameViewController ()

@property (nonatomic) BOOL isMafia;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)randomGame:(BOOL)isMafia{
    self.isMafia = isMafia;
    return true;
}

- (IBAction)endGame:(UIButton *)sender {
    if(self.isMafia)
        [self performSegueWithIdentifier:@"toMafia" sender:self];
    else
        [self performSegueWithIdentifier:@"toSherrif" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"toMafia"]){
        MafiaViewController *mVC = segue.destinationViewController;
    }
    else if([segue.identifier isEqualToString:@"toSherrif"]){
        SherrifViewController *sVC = segue.destinationViewController;
    }
}

@end
