//
//  ToastyPlugin.h
//  ToastyPluginTest
//
//  Created by Ashwin on 05/03/20.
//

#import <Cordova/CDVViewController.h>
#import <Cordova/CDVCommandDelegateImpl.h>
#import <Cordova/CDVCommandQueue.h>

@interface ToastyPlugin : CDVViewController
{
    
}
- (void)show:(CDVInvokedUrlCommand*)command;

@end


@interface MainCommandDelegate : CDVCommandDelegateImpl
@end

@interface MainCommandQueue : CDVCommandQueue
@end
