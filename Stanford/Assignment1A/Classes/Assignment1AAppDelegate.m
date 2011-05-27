//
//  Assignment1AAppDelegate.m
//  Assignment1A
//
//  Created by Werner Hackl on 23.01.10.
//  Copyright FH Hagenberg 2010. All rights reserved.
//

#import "Assignment1AAppDelegate.h"

@implementation Assignment1AAppDelegate

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
