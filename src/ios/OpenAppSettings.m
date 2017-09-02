/**
 * src/ios: OpenAppSettings.m
**/

#import <Cordova/CDVPlugin.h>
#import "OpenAppSettings.h"

@implementation OpenAppSettings
    - (void) open: (CDVInvokedUrlCommand*) command {
        @try {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        }

        @catch (NSException *exception) {
            NSString* reason = [exception reason];
            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:reason];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        }
    }
@end;
