//
//  Mafia.m
//  Mafia
//
//  Created by Jeff Huang on 2015-07-13.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "Mafia.h"

@implementation Mafia

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.numCivilian = 5;
        self.numMafia = 2;
        self.numSherrif = 2;
    }
    return self;
}

@end
