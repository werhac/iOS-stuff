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
	if(value < minimumNumberOfSides)
		NSLog(@"invalid number of sides!");
	else if(value > maximumNumberOfSides) 
		NSLog(@"invalud number of sider!");
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
	if(numberOfSides == 2)
		return [NSString stringWithFormat:@"digon"];	
	else if(numberOfSides == 3)
		return [NSString stringWithFormat:@"triangle"];	
	else if(numberOfSides == 4)
		return [NSString stringWithFormat:@"quadrilatereal"];
	else if(numberOfSides == 5)
		return [NSString stringWithFormat:@"pentagon"];
	else if(numberOfSides == 6)
		return [NSString stringWithFormat:@"hexagon"];
	else if(numberOfSides == 7)
		return [NSString stringWithFormat:@"heptagon"];
	else if(numberOfSides == 8)
		return [NSString stringWithFormat:@"octagon"];
	else if(numberOfSides == 9)
		return [NSString stringWithFormat:@"eneagon"];
	else if(numberOfSides == 10)
		return [NSString stringWithFormat:@"decagon"];
	else if(numberOfSides == 11)
		return [NSString stringWithFormat:@"hendecagon"];
	else if(numberOfSides == 12)
		return [NSString stringWithFormat:@"dodecagon"];
	else return [NSString stringWithFormat:@"Invalid"];
}

- (void)dealloc {
	NSLog(@"dealloc called!");
	[super dealloc];
}

@end
