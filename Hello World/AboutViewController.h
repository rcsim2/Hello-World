//
//  AboutViewController.h
//  Hello World
//
//  Created by Rik Goossens on 09/02/2020.
//  Copyright © 2020 Rik Goossens. All rights reserved.
//

#ifndef AboutViewController_h
#define AboutViewController_h

#import <Cocoa/Cocoa.h>

// Our macOS view controller.
@interface AboutViewController : NSViewController

//@property (assign) IBOutlet NSWindow *window;




// Show only one instance
//+(id) getInstance;


// Close Custom About Window
- (IBAction)buttonPushed:(id)sender;

@end



#endif /* AboutViewController_h */
