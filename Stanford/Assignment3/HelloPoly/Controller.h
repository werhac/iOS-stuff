#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface Controller : NSObject {
	IBOutlet UIButton *decreaseButton;
	IBOutlet UIButton *increaseButton;
  IBOutlet UILabel *numberOfSidesLabel;
	IBOutlet UILabel *maxNumberOfSideLabel;
	IBOutlet UILabel *minNumberOfSideLabel;
	IBOutlet UILabel *polygonNameLabel;
	IBOutlet PolygonShape *polygonshape;
}
- (IBAction)decrease;
- (IBAction)increase;
@end
