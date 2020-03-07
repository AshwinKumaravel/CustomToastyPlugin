//
//  ToastyPlugin.m
//  ToastyPluginTest
//
//  Created by Ashwin on 05/03/20.
//

#import <Cordova/CDV.h>
#import "ToastyPlugin.h"



@interface ToastyPlugin ()


@end



@implementation ToastyPlugin


+ (void) setLabel:(NSString *)string {

  
    NSLog(@"setLabel called with string: %@", string);

}

- (void)show:(CDVInvokedUrlCommand*)command
{
    
   
   
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    pluginResult.keepCallback = [NSNumber numberWithBool:YES];
    
    [self showResult:@"Hai"
                   completion:^{
                       // Enable recognizing barcodes when the result is not shown anymore.
                   }];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}



- (void)showResult:(nonnull NSString *)result completion:(nonnull void (^)(void))completion {
    dispatch_async(dispatch_get_main_queue(), ^{
       UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"ERROR"
                                                         message:@"sadsa"
                                                         delegate:self
                                                         cancelButtonTitle:@"OK"
                                                         otherButtonTitles:nil];
           [alertView show];
        
       // [self.viewController presentViewController:alert animated:YES completion:nil];
                
    });
}




@end
