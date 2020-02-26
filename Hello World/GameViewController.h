//
//  GameViewController.h
//  Hello World
//
//  Created by Rik Goossens on 07/02/2020.
//  Copyright © 2020 Rik Goossens. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>
#import "Renderer.h"

// Our macOS view controller.
@interface GameViewController : NSViewController


// Custom About Window
- (IBAction)menuAboutPushed:(id)sender;

// For custom About Window
//@property(strong) NSWindowController *wc;


@end
