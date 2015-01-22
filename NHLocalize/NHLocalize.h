//
//  NHLocalize.h
//  NHLocalize
//
//  Created by Robert Mao on 1/21/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NHLocalize : NSObject

+ (NSString *) localizedStringForKey:(NSString *)key;

@end

#undef NSLocalizedString
#define NSLocalizedString(key, comment) \
[NHLocalize localizedStringForKey:(key)]
