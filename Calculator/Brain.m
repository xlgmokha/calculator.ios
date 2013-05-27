#import "Brain.h"

@interface Brain()
@property (strong, nonatomic) NSMutableArray * arrOperands;
@end

@implementation Brain
-(void) addObject:(double)operand
{
  if (!self.arrOperands)
  {
    self.arrOperands = [[NSMutableArray alloc] init];
  }

  [self.arrOperands addObject:[NSNumber numberWithDouble:operand]];
}

-(double) performOperation:(NSString *)operation
{
  double result = 0;

  if (self.arrOperands.count > 1)
  {
    if([operation isEqualToString:@"+"])
    {
      result = [self removeLastObject] + [self removeLastObject];
    }

    if ([operation isEqualToString:@"-"])
    {
      result = -[self removeLastObject] + [self removeLastObject];
    }

    if ([operation isEqualToString:@"x"])
    {
      result = [self removeLastObject] * [self removeLastObject];
    }

    if ([operation isEqualToString:@"/"] && [[self.arrOperands lastObject] doubleValue] != 0)
    {
      double tempDivisor = [self removeLastObject];
      result = [self removeLastObject] / tempDivisor;
    }
  }

    [self addObject:result];
    return result;
}

-(double) removeLastObject
{
  NSNumber * lastObject = [self.arrOperands lastObject];
  if (self.arrOperands)
  {
    [self.arrOperands removeLastObject];
  }
  return [lastObject doubleValue];
}

-(void) clear
{
  [self.arrOperands removeAllObjects];
}
@end
