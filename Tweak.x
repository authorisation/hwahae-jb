#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook UIApplication

- (BOOL)canOpenURL:(NSURL *)url {
    NSString *urlString = [url absoluteString];
    if ([urlString isEqualToString:@"sileo://"] ||
        [urlString isEqualToString:@"zbra://"] ||
        [urlString isEqualToString:@"filza://"]) {
        return NO;
    }
    
    return %orig(url);
}

%end

%ctor {
    %init(UIApplication = objc_getClass("UIApplication"));
}