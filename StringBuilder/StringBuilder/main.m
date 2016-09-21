//
//  main.m
//  StringBuilder
//
//  Created by parry on 9/13/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>


NSString* joinWords(NSArray *words)
{
    NSDate *methodStart = [NSDate date];
    
    
//    NSString *sentence = @"";
//    for (NSString * word in words)
//    {
//        sentence = [sentence stringByAppendingString:word];
//        
//    }
    
    NSMutableString *sentence = [NSMutableString string];
    for (NSString * word in words)
    {
        [sentence appendString:word];
    }
        
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime = %f", executionTime);
    
    return sentence;

    

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSArray *array = @[@"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa", @"dabu", @"muRat", @"kappa"];
        NSString *result = joinWords(array);
        
        NSLog(@"%@", result);

    }
    return 0;
}
