//
//  HelloPolyAppDelegate.h
//  HelloPoly
//
//  Created by Werner Hackl on 08.02.10.
//  Copyright FH Hagenberg 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloPolyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

