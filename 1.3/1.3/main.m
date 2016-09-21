//
//  main.m
//  1.3
//
//  Created by parry on 9/9/16.
//  Copyright © 2016 parry. All rights reserved.
//

// URLify:
// Write a method to replace all spaces in a string with '%20'. You may assume that
// the string has sufficient space at the end to hold the additional characters,
// and that you are giveb the "true" length of the string.
// EXAMPLE
// Input: "Mr John Smith     ", 13
// Output: "Mr%20John%20Smith"
// pg 90


#import <Foundation/Foundation.h>


NSString *replaceSpaces(NSString *string, int trueLength) {
    NSLog(@"%lu", (unsigned long)string.length);
    NSMutableString *mutableString = [string mutableCopy];
    int spaceCount = 0;
    for (int i = 0; i < trueLength; i++) {
        if ([mutableString characterAtIndex:i] == ' ') {
            spaceCount++;
        }
    }
    
    NSMutableString *testString = [@"   " mutableCopy];
    NSLog(@"%lu", (unsigned long)testString.length);

    [testString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"02%"];
    
    NSLog(@"%@", testString);
    NSLog(@"%lu", (unsigned long)testString.length);

    
    
    
    int index = trueLength + spaceCount * 2;
    for (int i = trueLength - 1; i >= 0; i--) {
        if ([mutableString characterAtIndex:i] == ' ') {
            [mutableString replaceCharactersInRange:NSMakeRange(index - 1, 1) withString:@"0"];
            [mutableString replaceCharactersInRange:NSMakeRange(index - 2, 1) withString:@"2"];
            [mutableString replaceCharactersInRange:NSMakeRange(index - 3, 1) withString:@"%"];
            
            index = index - 3;
        
        }else {
            [mutableString replaceCharactersInRange:NSMakeRange(index - 1, 1) withString:[mutableString substringWithRange:NSMakeRange(i, 1)]];
            index--;
        }
    }
    
    NSLog(@"%lu", (unsigned long)mutableString.length);
    return mutableString;
}

int findLastCharacter(NSString *string) {
    for (int i = (int)[string length] - 1; i >= 0; i--) {
        int value = [string characterAtIndex:i];
        if (value != ' ') {
            return i;
        }
    }
    
    return -1;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *inputString = @"Mr John Smith    ";
        
        int trueLength = findLastCharacter(inputString) + 1;
        
        NSString *outputString = replaceSpaces(inputString, trueLength);
        
        NSLog(@"Input: %@\nOutput: %@", inputString, outputString);
    }
    
    return 0;
}