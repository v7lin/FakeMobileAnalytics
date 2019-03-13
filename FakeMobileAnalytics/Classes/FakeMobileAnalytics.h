//
//  FakeMobileAnalytics.h
//  FakeMobileAnalytics
//
//  Created by v7lin on 2019/3/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FakeMobileAnalytics : NSObject

- (void)startWork:(NSString *)appKey appChannel:(NSString *)appChannel enableDebug:(BOOL)enableDebug;

- (void)signUp:(NSString *)userId userNick:(NSString *)userNick;

- (void)signIn:(NSString *)userId userNick:(NSString *)userNick;

- (void)signOut;

- (void)trackEvent:(NSString *)eventId eventLabel:(NSString *)eventLabel;

- (void)startEventTracking:(NSString *)eventId eventLabel:(NSString *)eventLabel;

- (void)stopEventTracking:(NSString *)eventId eventLabel:(NSString *)eventLabel;

- (void)startPageTracking:(NSString *)pageName;

- (void)stopPageTracking:(NSString *)pageName;

@end

NS_ASSUME_NONNULL_END
