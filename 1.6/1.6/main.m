//
//  main.m
//  1.6
//
//  Created by parry on 9/25/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>


NSString * returnCompressedString(NSString *str)
{
    NSMutableString *returnString = [NSMutableString string];
    
    int letterCount = 0;
    for (int i = 0; i < str.length; i++)
    {
        letterCount++;

        //if we have reached the end or if the next charachter does not match
        if (i + 1 >=  str.length || [str substringWithRange:NSMakeRange(i, 1)] != [str substringWithRange:NSMakeRange(i + 1, 1)] )
        {
            
            NSString *letter = [str substringWithRange:NSMakeRange(i, 1)];
            
            NSString *letterInt = [NSString stringWithFormat:@"%d", letterCount];
            
            [returnString appendString:letter];
            [returnString appendString:letterInt];
            
            letterCount = 0;
            
        }
        
    }
    return returnString;
}
    





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *result = returnCompressedString(@"aabcccccaaa");
        
        NSLog(@"%@", result);

        
        
        
    }
    return 0;
}
