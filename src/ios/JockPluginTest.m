/********* JockPluginTest.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface JockPluginTest : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)showNativeAlert:(CDVInvokedUrlCommand*)command;

@end

@implementation JockPluginTest

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)showNativeAlert:(CDVInvokedUrlCommand*)command {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"this ios native alert"
                                                    message:nil
                                                   delegate:nil
                                          cancelButtonTitle:@"cancel"
                                          otherButtonTitles:@"sure", nil];
    
    [alert show];
}

@end
