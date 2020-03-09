
#import <Cordova/CDV.h>
#import "Controller.h"
@import ScanditBarcodeCapture;

static NSString *const _Nonnull licenseKey = @"AcwuTyW6OyCfAw/oXRAg/7w/zNFaMBqI/XXo8hZcKMWydVYgu0dYgktRqT72eZOoPX6vMTg7KxyjQRt78nZJXmJ7wf/sc2tvcmgdi+xugYNeL1NbHlbu5jhlSTEyR1jTb2M0f6BY26tVL4G1hzvXOdoxCg/iDwcrNt9dwzfiBs7HAR5mLKgxmsap6WBqG3OS/vob53Z5dr1dYtmCV4aKmuvU19tYB/9Hr4hFJi8lMji/0f/WJKaFlWcoqsFlQqD8gRONQNWcSiM4wUZiIQrz8Kz+dH1wGh43pHrqGJjklZfoEANoqEoNe+Oyyq9TVKDaRQAjFlZ4bLIBFIExqPn+xQAP3EDNeuYJdTcaOpllxA8QLHKb04tSZg2st0XEQ/WkbD551a8DwfeM4nJt5hHKcpTbREC9ZE4jCBZFndKMfOmQf/l7qhzU9nQSvHQcuYMGNBEVG5UMpCCyotp2m6lG9nSGP/yH5sz8DwMDlHSfbkdarrQKR01f1P4hbVnqIjN5QQ/v4Pvbz/Jj/0ae/aDIMng3aljRzxWWhLEoXEKiGU40LTR3mLR9EezkYYpC+/oOAbBwhjZudNwaUerRsM8h2ys03l0TvPZPvqDbC2njAIHSZxHF5AIKRzfPgzyrC1A0XA4aZ8bAFRQ68QEbEfF16qL6A76mpaZsGVN28cPOt1zEey9KzmiY8ZmJ9YQ+76YipnCVFz4zQcMohgwXhwGaUZQGQTo5ESUpwzodkAhkBG7gakf8D1XEr2SVNmDUERh9TSYrG7Z8TIWIWUToy8P8G6jM+50t+dKS+wnbcmzIwfFpuWI1XrQOd1oyQlV94LdChZjRN8iL";






@implementation Controller

- (void)show
{
    
    [self showResult:@"Hai"
                   completion:^{
                       // Enable recognizing barcodes when the result is not shown anymore.
                   }];

}



- (id)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
      
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

#pragma mark View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
    // View defaults to full size.  If you want to customize the view's size, or its subviews (e.g. webView),
    // you can do so here.

    [super viewWillAppear:animated];
  
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  
}


- (void)showResult:(nonnull NSString *)result completion:(nonnull void (^)(void))completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController
            alertControllerWithTitle:result
                             message:nil
                      preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK"
                                                  style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction *_Nonnull action) {
                                                    completion();
                                                }]];
        
      
    
        
           UIViewController *top = [UIApplication sharedApplication].keyWindow.rootViewController;
                 [top presentViewController:alert animated:YES completion: nil];
                
                
    });
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
   
}

@end
