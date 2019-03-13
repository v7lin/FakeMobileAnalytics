//
//  FakeMobileAnalytics+Baidu.m
//  FakeMobileAnalytics
//
//  Created by 林恒龙 on 2019/3/13.
//

#import "FakeMobileAnalytics+Baidu.h"
#import <FakeMobileAnalytics/FakeMobileAnalyticsImpl.h>

@implementation FakeMobileAnalytics (Baidu)

+ (FakeMobileAnalytics *)shared {
    static FakeMobileAnalytics * sharedInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(& predicate, ^{
        sharedInstance = [[FakeMobileAnalyticsImpl alloc] init];
    });
    return sharedInstance;
}

@end
