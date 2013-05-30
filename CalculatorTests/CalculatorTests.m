//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by mo khan on 2013-05-20.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "CalculatorTests.h"
#import "Brain.h"

@implementation CalculatorTests
Brain * calculator;

- (void)setUp
{
    [super setUp];
    calculator = [[Brain alloc]init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testAddition
{
    [calculator addObject:1];
    [calculator addObject:1];
    double result = [calculator performOperation:@"+"];
    double expected = 2;
    STAssertEquals(result, expected, @"Addition is broken");
}

- (void)testSubtraction
{
    [calculator addObject:10];
    [calculator addObject:5];
    double result = [calculator performOperation:@"-"];
    double expected = 5;
    STAssertEquals(result, expected, @"subtraction is hard");
}

- (void)testMultiplication
{
    [calculator addObject:10];
    [calculator addObject:5];
    double result = [calculator performOperation:@"x"];
    double expected = 50;
    STAssertEquals(result, expected, @"multiplication is hard");
}

- (void)testDivision
{
    [calculator addObject:10];
    [calculator addObject:5];
    double result = [calculator performOperation:@"/"];
    double expected = 2;
    STAssertEquals(result, expected, @"division is hard");
}

@end
