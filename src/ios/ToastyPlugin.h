#import <Cordova/CDVViewController.h>
#import <Cordova/CDVCommandDelegateImpl.h>
#import <Cordova/CDVCommandQueue.h>

@interface ToastyPlugin : CDVViewController
{
    
}
- (void)show:(CDVInvokedUrlCommand*)command;

@end