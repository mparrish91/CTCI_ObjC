//
//  main.m
//  1.5
//
//  Created by parry on 9/25/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL editReplace(NSString *s1, NSString *s2)
{
    BOOL oneDifferentChar = false;
    for (int i = 0; i < s1.length; i++)
    {
        if ([s1 characterAtIndex:i] != [s2 characterAtIndex:i])
        {
            if (oneDifferentChar == true)
            {
                return false;
            }
            oneDifferentChar = true;
            
        }
    }
    return true;
}


BOOL editAdd(NSString *s1, NSString *s2)
{
    int index1 = 0;
    int index2 = 0;
    BOOL oneDifferentChar = false;
    while (index1 < s1.length && index2 < s2.length)
    {
        if ([s1 characterAtIndex:index1] != [s2 characterAtIndex:index2])
        {
            if (oneDifferentChar == true)
            {
                return false;
            }
            oneDifferentChar = true;
            index1++;
        }
        else
        {
            index1++;
            index2++;
        }
        
    }
    return true;
}


BOOL isOneEditAway(NSString *s1, NSString *s2)
{
    if (s1.length == s2.length)
    {
        return editReplace(s1, s2);
    }
    if (s1.length == s2.length - 1)
    {
        return editAdd(s1, s2);
    }
    if (s1.length - 1 == s2.length)
    {
        return editAdd(s2, s1);
        
    }
    return false;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        BOOL result = isOneEditAway(@"kappa", @"kapa");
        BOOL result2 = isOneEditAway(@"kappa", @"kada");
        NSLog(@"%hhd", result2);
        
    }
    return 0;
}
