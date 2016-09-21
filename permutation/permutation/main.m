//
//  main.m
//  permutation
//
//  Created by parry on 9/8/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>

int number = 0;

void permutation(NSString *str, NSString *prefix)
{

    if (str.length == 0)
    {
        number++;

        NSLog(@"%@", prefix);
        NSLog(@"%i", number);

    }
    else
    {
     
        for (int i = 0 ; i < str.length; i++)
        {
            NSString *rem = [[str substringWithRange:NSMakeRange(0, i)] stringByAppendingString:[str substringFromIndex:i + 1]];
            permutation(rem, [prefix stringByAppendingString:[str substringWithRange:NSMakeRange(i, 1)]]);
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        permutation(@"golf", @"");
    }
    return 0;
}
