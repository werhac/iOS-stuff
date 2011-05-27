//
//  PolygonShape.m
//  WhatATool
//
//  Created by Werner Hackl on 29.01.10.
//  Copyright 2010 FH Hagenberg. All rights reserved.
//

#import "PolygonShape.h"

@implementation PolygonShape

@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;


- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max {
	[self setMinimumNumberOfSides:min];
	[self setMaximumNumberOfSides:max];
	[self setNumberOfSides:sides];
	return self;
}

- (id)init {
	if(self = [super init]) {
		NSLog(@"Polygon created");
		return [self initWithNumberOfSides:10 minimumNumberOfSides:3 maximumNumberOfSides:10];
	}
	return self;
}


- (void)setNumberOfSides:(int) value {
	if(((value < minimumNumberOfSides) || (value >= maximumNumberOfSides)))
		NSLog(@"Failed...invalid numer. Value must be between %d and %d", minimumNumberOfSides, maximumNumberOfSides);
	else
		numberOfSides = value;
}

- (void)setMinimumNumberOfSides:(int) value {
	if(value < 3) 
		NSLog(@"Failed! Value must be greater than 2");
	else 
		minimumNumberOfSides = value;
	}
	
- (void)setMaximumNumberOfSides:(int) value {
	if(value > 12)
		NSLog(@"Failed! Value must be less than or equal 12");
	else
		maximumNumberOfSides = value;
	}
	
-(float)angleInDegrees {
		return 1.1;
	}
	
-(float)angleInRadians {
		return 1.1;
	}
		
-(NSString *)name {
	return [NSString stringWithFormat:@"Square"];	
}

- (void)dealloc {
	NSLog(@"dealloc called!");
	[super dealloc];
}

@end
