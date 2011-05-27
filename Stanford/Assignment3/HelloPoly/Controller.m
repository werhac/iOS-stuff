#import "Controller.h"

@implementation Controller

-(void)setInterface {
	
	decreaseButton.enabled = YES;
	increaseButton.enabled = YES;
	
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d",[polygonshape numberOfSides]];
	
	if([polygonshape numberOfSides] > [polygonshape maximumNumberOfSides])
		decreaseButton.enabled = NO;
	if([polygonshape numberOfSides] < [polygonshape minimumNumberOfSides])
		increaseButton.enabled = NO;
	
	polygonNameLabel.text = [NSString stringWithFormat:@"%@", [polygonshape name]];
	
}

- (void)awakeFromNib { // configure your polygon here
	polygonshape = [[PolygonShape alloc] init];
	maxNumberOfSideLabel.text = [NSString stringWithFormat:@"%d", [polygonshape maximumNumberOfSides]];
	minNumberOfSideLabel.text = [NSString stringWithFormat:@"%d", [polygonshape minimumNumberOfSides]]; 
	[self setInterface];
}

- (IBAction)decrease {
    NSLog(@"I’m in the increase method");
	[polygonshape setNumberOfSides:[polygonshape numberOfSides]  - 1];
	[self setInterface];
}

- (IBAction)increase {
    NSLog(@"I’m in the decrease method");
	[polygonshape setNumberOfSides:[polygonshape numberOfSides] + 1];
	[self setInterface];
}
@end
