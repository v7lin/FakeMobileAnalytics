//
//  FakeMobileAnalyticsImpl.m
//  FakeMobileAnalytics
//
//  Created by 林恒龙 on 2019/3/13.
//

#import "FakeMobileAnalyticsImpl.h"
#import <FakeTalkingdataAnalytics/TalkingData.h>

@implementation FakeMobileAnalyticsImpl

- (void)startWork:(NSString *)appKey appChannel:(NSString *)appChannel enableDebug:(BOOL)enableDebug {
    [TalkingData sessionStarted:appKey withChannelId:appChannel];
    [TalkingData setLogEnabled:enableDebug];
}

- (void)signUp:(NSString *)userId userNick:(NSString *)userNick {
    [TalkingData onRegister:userId type:TDAccountTypeRegistered name:userNick];
}

- (void)signIn:(NSString *)userId userNick:(NSString *)userNick {
    [TalkingData onLogin:userId type:TDAccountTypeRegistered name:userNick];
}

- (void)signOut {
    // Talkingdata不支持此功能
}

- (void)trackEvent:(NSString *)eventId label:(NSString *)eventLabel {
    [TalkingData trackEvent:eventId label:eventLabel];
}

- (void)startEventTracking:(NSString *)eventId label:(NSString *)eventLabel {
    // Talkingdata不支持此功能
}

- (void)stopEventTracking:(NSString *)eventId label:(NSString *)eventLabel {
    // Talkingdata不支持此功能
}

- (void)startPageTracking:(NSString *)pageName {
    [TalkingData trackPageBegin:pageName];
}

- (void)stopPageTracking:(NSString *)pageName {
    [TalkingData trackPageEnd:pageName];
}

@end
