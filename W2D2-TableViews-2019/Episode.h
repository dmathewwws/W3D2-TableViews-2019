//
//  Episode.h
//  W2D2-TableViews-2019
//
//  Created by Daniel Mathews on 2019-01-22.
//  Copyright © 2019 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Episode : NSObject

@property (nonatomic) NSString* title;

- (instancetype)initWithTitle:(NSString*)title;

@end
