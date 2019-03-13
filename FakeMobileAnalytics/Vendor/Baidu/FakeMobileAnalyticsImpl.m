//
//  FakeMobileAnalyticsImpl.m
//  FakeMobileAnalytics
//
//  Created by 林恒龙 on 2019/3/13.
//

#import "FakeMobileAnalyticsImpl.h"
#import <BaiduMobStat/BaiduMobStat.h>

@implementation FakeMobileAnalyticsImpl

- (void)startWork:(NSString *)appKey appChannel:(NSString *)appChannel enableDebug:(BOOL)enableDebug {
    [BaiduMobStat defaultStat].shortAppVersion  = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [BaiduMobStat defaultStat].enableDebugOn = enableDebug;
    [[BaiduMobStat defaultStat] startWithAppId:appKey];
}

- (void)signUp:(NSString *)userId userNick:(NSString *)userNick {
    // 百度移动统计不支持此功能
}

- (void)signIn:(NSString *)userId userNick:(NSString *)userNick {
    // 百度移动统计不支持此功能
}

- (void)signOut {
    // 百度移动统计不支持此功能
}

- (void)trackEvent:(NSString *)eventId label:(NSString *)eventLabel {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel:eventLabel];
}

- (void)startEventTracking:(NSString *)eventId label:(NSString *)eventLabel {
    [[BaiduMobStat defaultStat] eventStart:eventId eventLabel:eventLabel];
}

- (void)stopEventTracking:(NSString *)eventId label:(NSString *)eventLabel {
    [[BaiduMobStat defaultStat] eventEnd:eventId eventLabel:eventLabel];
}

- (void)startPageTracking:(NSString *)pageName {
    [[BaiduMobStat defaultStat] pageviewStartWithName:pageName];
}

- (void)stopPageTracking:(NSString *)pageName {
    [[BaiduMobStat defaultStat] pageviewEndWithName:pageName];
}

@end
