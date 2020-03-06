
#import <Cordova/CDV.h>
#import "ToastyPlugin.h"


@interface ToastyPlugin ()


@end



@implementation ToastyPlugin

- (void)show:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* callbackId = command.callbackId;
    [self.commandDelegate sendPluginResult:pluginResult callbackId:callbackId];
}

@end