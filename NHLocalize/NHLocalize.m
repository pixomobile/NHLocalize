//
//  NHLocalize.m
//  NHLocalize
//
//  Created by Robert Mao on 1/21/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import "NHLocalize.h"

@implementation NHLocalize

+ (NSString *) localizedStringForKey:(NSString *)key
{
    NSArray *keyitems = [key componentsSeparatedByString:@"."];
    
    if([keyitems count] != 2) {
        return [[NSBundle mainBundle] localizedStringForKey:key value:@"" table:nil];
    }
    else {
        return [[NSBundle mainBundle] localizedStringForKey:keyitems[1] value:@"" table:keyitems[0]];
    }
}

@end
