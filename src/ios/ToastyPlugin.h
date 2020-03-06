//
//  ToastyPlugin.h
//  ToastyPluginTest
//
//  Created by Ashwin on 05/03/20.
//


#import <Cordova/CDVPlugin.h>

@interface ToastyPlugin : CDVPlugin {
}

//- (void)saveScreenshot:(NSArray*)arguments withDict:(NSDictionary*)options;
- (void)show:(CDVInvokedUrlCommand*)command;
@end
