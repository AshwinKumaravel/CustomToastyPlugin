#import <Cordova/CDV.h>
#import "ToastyPlugin.h"

@implementation ToastyPlugin

@synthesize webView;


- (void)show:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult* pluginResult = nil;
	NSString* callbackId = command.callbackId;
	[self.commandDelegate sendPluginResult:pluginResult callbackId:callbackId];
}


@end