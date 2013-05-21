#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel * display;
-(IBAction) numberPressed:(id)sender;
-(IBAction) operationPressed:(id)sender;
-(IBAction) enterPressed:(id)sender;
@end
