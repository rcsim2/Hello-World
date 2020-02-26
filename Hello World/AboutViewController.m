//
//  AboutViewController.m
//  Hello World
//
//  Created by Rik Goossens on 09/02/2020.
//  Copyright © 2020 Rik Goossens. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "AboutViewController.h"


@implementation AboutViewController

//@synthesize window;



// Show only one instance
//+(id) getInstance {
//
//    static AboutViewController *instance = nil;
//    static dispatch_once_t onceToken;
//
//    dispatch_once(&onceToken, ^{
//        instance = [[self alloc] init];
//    });
//    return instance;
//}



// Close Custom About Box
- (IBAction)buttonPushed:(id)sender {
    
    printf("Pushed!\n");
    //[secondWindow close];
    //[secondNib release];
    //[window close];
    //[self.window close];
    //[[self window] close];
    [self.view.window close]; // Yeeesss!!!
    
    
    // NOTE: Sucksssss!!!!
    // Title bar says Untitled even though in the Interface Designer we use About
    // Why? It is because for the Story Board Segue from the About menu
    // we used Modal in Attributes Inspector. Dialog boxes should be modal, right?
    // Not on Mac. About boxes are Modeless.
    // Using Modal gives Untitled in title bar. Use Show.
    // But then everytime user clicks About a new window opens...
    // So we have to check if About box is already open. If so do not open but bring it to foreground.
    // We therefore have to handle About menu click and do that check there and then:
    //[self.view.window makeKeyAndOrderFront: nil];
    // Also on Mac there is no OK button on the About box...
    // En alleen de grote apps (Xcode, Logic, Final Cut) hebben een custom About box.
    
    
    
    
}


@end
