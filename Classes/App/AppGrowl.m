//
//  AppGrowl.m
//  Bubble
//
//  Created by Luke on 11/7/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppGrowl.h"
#define GrowlNotification @"GrowlNotification"

@implementation AppGrowl
- (id) init {
    if ( self = [super init] ) {
        /* Tell growl we are going to use this class to hand growl notifications */
        [GrowlApplicationBridge setGrowlDelegate:self];
		[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(makeGrowl:)
				   name:GrowlNotification
				 object:nil];
    }
    return self;
}

-(void)makeGrowl:(NSNotification*)notification{
	[GrowlApplicationBridge notifyWithTitle:@"new hometimline"
								description:@"new home timeline"
						   notificationName:@"NewHomeTimeline"
								   iconData:nil
								   priority:0
								   isSticky:NO
							   clickContext:nil];
}
@end
