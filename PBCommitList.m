//
//  PBCommitList.m
//  GitX
//
//  Created by Pieter de Bie on 9/11/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "PBCommitList.h"


@implementation PBCommitList

- (void) keyDown: (id) event
{
	NSString* character = [event charactersIgnoringModifiers];

	if ([character isEqualToString:@" "])
	{
		if ([event modifierFlags] & NSShiftKeyMask)
			[webView scrollPageUp: self];
		else
			[webView scrollPageDown: self];
	}
	else if ([character rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"jkv"]].location == 0)
		[webController sendKey: character];
	else
		[super keyDown: event];
}

@end
