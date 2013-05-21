#import <Foundation/Foundation.h>

@interface Brain : NSObject
-(void) addObject:(double)operand;
-(double) performOperation:(NSString *)operation;
@end
