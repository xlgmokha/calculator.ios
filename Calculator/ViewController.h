#import <UIKit/UIKit.h>

@class Brain;

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel * display;
@property (strong, nonatomic) Brain * myBrain;
-(IBAction) numberPressed:(id)sender;
-(IBAction) operationPressed:(id)sender;
-(IBAction) enterPressed:(id)sender;
@end
