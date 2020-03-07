//
//  ToastyPlugin.h
//  ToastyPluginTest
//
//  Created by Ashwin on 05/03/20.
//

#import <Cordova/CDV.h>

@interface ToastyPlugin : CDVPlugin


- (void)show:(CDVInvokedUrlCommand*)command;
+ (void) startScanning:(NSString *)string;

@end
