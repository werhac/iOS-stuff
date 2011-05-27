//
//  HelloPolyAppDelegate.m
//  HelloPoly
//
//  Created by Werner Hackl on 08.02.10.
//  Copyright FH Hagenberg 2010. All rights reserved.
//

#import "HelloPolyAppDelegate.h"

@implementation HelloPolyAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
