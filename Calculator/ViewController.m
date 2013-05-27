#import "ViewController.h"
#import "Brain.h"

@interface ViewController ()
@property BOOL enteringNumber;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (!self.myBrain)
    {
      self.myBrain = [[Brain alloc] init];
      self.display.textAlignment = NSTextAlignmentRight;
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) numberPressed:(UIButton *)sender
{
  NSString * number = sender.currentTitle;
  if (self.enteringNumber)
  {
    self.display.text = [self.display.text stringByAppendingString:number];
  }
  else
  {
    self.display.text = number;
    self.enteringNumber = YES;
  }
}

-(IBAction) operationPressed:(UIButton *)sender
{
  if(self.enteringNumber)
  {
    [self enterPressed:(UIButton *)sender];
  }
  self.display.text = [NSString stringWithFormat:@"%g", [self.myBrain performOperation:sender.currentTitle]];
}

-(IBAction) enterPressed:(id)sender
{
  [self.myBrain addObject:[self.display.text doubleValue]];
  self.enteringNumber = NO;
}
@end
