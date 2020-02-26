//
//  GameViewController.m
//  Hello World
//
//  Created by Rik Goossens on 07/02/2020.
//  Copyright © 2020 Rik Goossens. All rights reserved.
//

#import "GameViewController.h"
#import "Renderer.h"
#import "AboutViewController.h"


@implementation GameViewController
{
    MTKView *_view;

    Renderer *_renderer;
    
    //NSWindowController *aboutWc;
    
    NSWindowController *wc;
}


// For custom About window
//@synthesize wc;



- (void)viewDidLoad
{
    [super viewDidLoad];

    _view = (MTKView *)self.view;

    _view.device = MTLCreateSystemDefaultDevice();

    if(!_view.device)
    {
        NSLog(@"Metal is not supported on this device");
        self.view = [[NSView alloc] initWithFrame:self.view.frame];
        return;
    }

    _renderer = [[Renderer alloc] initWithMetalKitView:_view];

    [_renderer mtkView:_view drawableSizeWillChange:_view.bounds.size];

    _view.delegate = _renderer;
}


// Custom About Box
- (IBAction)menuAboutPushed:(id)sender {
    
    // "Interface Builder". Before Xcode 4, the interface files (XIBs and NIBs) were edited
    // in a separate program called Interface Builder, hence the prefix. IBAction is defined
    // to void, and IBOutlet to nothing. They are just clues to Interface Builder when parsing
    // files to make them available for connections.
    
    // SSSsuuuckkks!1! We konden geen menu item verbinden met deze IBAction. Why???
    // It is because a menu item is in its own Scene, not in this Game View Controller Scene,
    // en dan lukt het niet. Je moet het menu item eerst verbinden met de First Responder en
    // dan zie je deze IBAction tussen een hele lijst staan. Maar wat als deze method nou
    // toevallig een name collision gaf. Hadden we dan een waarschuwing gekregen?
    // Dit is zo fout IDE design.
    
    printf("\nIn About handler!\n");
    
    // Show Messagebox
    //NSAlert *alert = [NSAlert alertWithMessageText:@"Alert" defaultButton:@"OK" alternateButton:@"Cancel" otherButton:nil informativeTextWithFormat:@"Alert pop up displayed"];
    //[alert runModal];
    
    // TEST:
    //NSAlert *alert = [[NSAlert alloc] init];
    //[alert setMessageText:@"Hi there."];
    //[alert runModal];
    
    
    //NSAlert *alert = [[NSAlert alloc] init];
    //[alert setMessageText:@"Message text."];
    //[alert setInformativeText:@"Informative text."];
    //[alert addButtonWithTitle:@"Cancel"];
    //[alert addButtonWithTitle:@"OK"];
    //[alert runModal];
    
    
    
    
        // Open About box only when there is no box showing
    //    if( aboutWc == nil ) {
    //        //aboutWc = [[NSWindowController alloc] initWithWindowNibName:@"About"];
    //        NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    //        aboutWc = [storyboard instantiateControllerWithIdentifier:@"QQQ"];
    //    }
    
    
    
    
    // TODO: show About box programmatically
    // DONE
    //aboutWc = [self.storyboard instantiateControllerWithIdentifier:@"QQQ"];
    //[aboutWc showWindow:sender];
    
    //NSWindow *aboutWindow = [NSWindow.contentViewController:aboutWc];
    
    
    // NOTE: MAJOR SUCK:
    // We were getting:
    // initialController='NSWindowController-B8D-0N-5wS'>) doesn't contain a controller
    // with identifier 'QQQ'
    // See: https://stackoverflow.com/questions/45119813/how-do-i-open-another-window-in-macos-in-swift-with-cocoa
    // That was it. Turns out clicking the window controller window in the storyboard
    // selects the window inside the controller. You have to click the window controller
    // "title bar" (where the controller and first responder icons live), instead. Thanks very much for the assist.
    // NB: Je krijgt ook niet eens een basic window te zien als de resource niet gevonden wordt. Sucks.

    // Open About box only when there is no box showing
    if (wc == nil) {
        wc = [[NSWindowController alloc] init];
        NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
        wc = [storyboard instantiateControllerWithIdentifier:@"QQQ"];
        [wc showWindow:self];
    }
    
    // Bring existing About box to foreground
    [wc showWindow:sender];
    
    
    // NOTE: On Mac About boxes are modeless. Let ook op hoe het menu item automatisch grays out.
    
    
    
    // NOTE: Nib's are old stuff
    //NSWindowController *wc = [[NSWindowController alloc] initWithWindowNibName:@"QQQ"];
    
    
    // NOTE: if you're using ARC, your window goes foom because you don't have a
    // strong reference for your instance of NSWindowController. When the method ends,
    // so does your reference. So must make wc non-local.
    // Well, that does not seem to be the case here. We can perfectly open a window.
    //NSWindowController *wc2 = [self.storyboard instantiateControllerWithIdentifier:@"QQQ"];
    //[wc2 showWindow:self];
    
    // Even shorter. Obj-C rules:
    //[[self.storyboard instantiateControllerWithIdentifier:@"QQQ"] showWindow:self];
    

        
    
  
    
    //printf("Pushed!\n");
    //[secondWindow close];
    //[secondNib release];
    //[window close];
    //[self.window close];
    //[[self window] close];
    //[self.view.window close]; // Yeeesss!!!
}

@end
