//
//  TheWindowController.m
//  EmailAddressFinder
//
//  Created by David Hoerl on 3/20/13.
//  Copyright (c) 2013 dhoerl. All rights reserved.
//

#import "TheWindowController.h"
#import "HTMLDecode.h"

@interface TheWindowController ()
@end

@implementation TheWindowController
{
	IBOutlet NSTextView *testString;
	IBOutlet NSTextView *resultsList;
	
	HTMLDecode *hd;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
	
	hd = [HTMLDecode new];
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)windowWillClose:(NSNotification *)notification
{
	dispatch_async(dispatch_get_main_queue(), ^
		{
			[[NSApplication sharedApplication] terminate:self];
		} );
}

- (IBAction)testAction:(id)sender
{
	NSString *str = [testString string];
	if(![str length]) {
		NSBeep();
	} else {
		[resultsList setString:@""];
	
		NSString *newStr = [hd decodeString:str];
		[resultsList setString:newStr];
	}
}
- (IBAction)quitAction:(id)sender
{
	dispatch_async(dispatch_get_main_queue(), ^
		{
			[[NSApplication sharedApplication] terminate:self];
		} );
}

@end
