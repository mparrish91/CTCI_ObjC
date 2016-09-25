//
//  main.m
//  1.4
//
//  Created by parry on 9/24/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL isPalindromePermutation(NSString *str)
{
         
    /* Assumes extended ASCII */
    int letters[256];
    memset(letters, 0, 256 * sizeof(int));
    
    int length = sizeof(letters)/sizeof(letters[0]);
         
    for (int i = 0; i < str.length; i++)
    {
        int value = [str characterAtIndex:i];
        
        if (value != 32)
        {
            letters[value]++;
            NSLog(@"%d", letters[value]);
        }
     
    }
    
    
    int oddFlag = false;
    for (int i = 0; i < length; i++)
    {
        if (letters[i] % 2 != 0)
        {
            if (oddFlag == true)
            {
                return false;
            }
            oddFlag = true;
        }
        
    }
    return true;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *palindrome1 = @"tact coa";
        NSString *palindrome2 = @"tcat oac";
        NSString *palindrome3 = @"hannah";
        NSString *palindrome4 = @"figger";
        
        BOOL one = isPalindromePermutation(palindrome1);
        BOOL two = isPalindromePermutation(palindrome2);
        BOOL three =  isPalindromePermutation(palindrome3);
        BOOL four =  isPalindromePermutation(palindrome4);

        



    }
    return 0;
}
