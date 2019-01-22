//
//  Episode.m
//  W2D2-TableViews-2019
//
//  Created by Daniel Mathews on 2019-01-22.
//  Copyright © 2019 Daniel Mathews. All rights reserved.
//

#import "Episode.h"

@implementation Episode

- (instancetype)initWithTitle:(NSString*)title
{
    self = [super init];
    if (self) {
        self.title = title;
    }
    return self;
}

@end
