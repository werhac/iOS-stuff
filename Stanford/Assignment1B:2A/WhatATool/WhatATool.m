#import <Foundation/Foundation.h>
#import "PolygonShape.h"

void PrintPolygonInfo() {
	NSMutableArray *polygons = [[NSMutableArray alloc]init];
	
	[polygons addObject:[[PolygonShape alloc]initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7]];
	[polygons addObject:[[PolygonShape alloc]initWithNumberOfSides:6 minimumNumberOfSides:5 maximumNumberOfSides:9]];
	[polygons addObject:[[PolygonShape alloc]initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12]];
	
	for (int i = 0; i < [polygons count]; i++) {
		PolygonShape *polygon = (PolygonShape *)[polygons objectAtIndex:i];
		NSLog(@"Hello I am a %@ with angles of %0.2f degrees", [polygon name], [polygon angleInDegrees]);
	}
	
	for (int i = 0; i < [polygons count]; i++) {
		PolygonShape *polygon = (PolygonShape *)[polygons objectAtIndex:i];
		[polygon setNumberOfSides:12];
	}

	for (int i = 0; i < [polygons count]; i++) {
		PolygonShape *polygon = (PolygonShape *)[polygons objectAtIndex:i];
		[polygon release];
	}
	
	[polygons release];
}


void PrintPathInfo() {
	NSString *path = @"~";
	NSString *fullpath = [path stringByExpandingTildeInPath];
	NSLog(@"My home folder is '%@'", fullpath);
	
	NSArray *pathComponents = [fullpath pathComponents];
	
	for(NSString *currentPath in pathComponents) {
		NSLog(currentPath);
	}
}

void PrintProcessInfo() {
	NSProcessInfo *procInfo = [NSProcessInfo processInfo];
	NSLog(@"Process Name: '%@' Process ID: '%d'", [procInfo processName], [procInfo processIdentifier]);
}	

void PrintBookmarkInfo() {
	NSMutableDictionary *bookmarks = [NSMutableDictionary dictionary];
	[bookmarks setObject:[NSURL URLWithString:@"http://www.stanford.edu"] forKey:@"Stanford Uiversity"];
	[bookmarks setObject:[NSURL URLWithString:@"http://www.apple.com"] forKey:@"Apple"];
	[bookmarks setObject:[NSURL URLWithString:@"http://cs193p.stanford.edu"] forKey:@"CS193P"];
	[bookmarks setObject:[NSURL URLWithString:@"http://itunes.stanford.edu"] forKey:@"Stanford on iTunes U"];
	[bookmarks setObject:[NSURL URLWithString:@"http://stanfordshop.com"] forKey:@"Stanford Mall"];

	for(NSString *key in bookmarks) {
		if([key hasPrefix:@"Stanford"])		
			NSLog(@"Key: '%@' URL: '%@'",key, [bookmarks valueForKey:key]);
	}
}

void PrintIntrospectionInfo() {
	}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	PrintPathInfo(); 
	PrintProcessInfo();
	PrintBookmarkInfo(); 
	PrintIntrospectionInfo(); 
	PrintPolygonInfo();
	
    [pool release];
    return 0;
}
