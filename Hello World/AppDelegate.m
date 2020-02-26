//
//  AppDelegate.m
//  Hello World
//
//  Created by Rik Goossens on 07/02/2020.
//  Copyright © 2020 Rik Goossens. All rights reserved.
//

#import "AppDelegate.h"



@interface AppDelegate ()

@end


@implementation AppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    
    // Show Messagebox
    //NSAlert *alert = [[[NSAlert alloc] init] autorelease];
    //[alert setMessageText:@"Hi there."];
    //[alert runModal];
    
    //NSAlert *alert = [NSAlert alertWithMessageText:@"Alert" defaultButton:@"OK" alternateButton:@"Cancel" otherButton:nil informativeTextWithFormat:@"Alert pop up displayed"];
    //[alert runModal];
    
    //NSAlert *alert = [[NSAlert alloc] init];
    //[alert setMessageText:@"Message text."];
    //[alert setInformativeText:@"Informative text."];
    //[alert addButtonWithTitle:@"Cancel"];
    //[alert addButtonWithTitle:@"OK"];
    //[alert runModal];
    
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}




@end
