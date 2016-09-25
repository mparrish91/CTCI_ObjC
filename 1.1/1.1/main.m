//
//  main.m
//  1.1
//
//  Created by parry on 9/8/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>

//BOOL isUnique(NSString *str)
//{
//    if (str.length > 128)    //Assumption
//    {
//        return false;
//    }
//    
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    for (int i = 0; i < str.length; i++)
//    {
//        NSString * key = [str substringWithRange:NSMakeRange(i, 1)];
//        if ([dict objectForKey:key] == nil)
//        {
//            [dict setObject:@"1" forKey:key];
//        }
//        else
//        {
//            //already a charachter entry
//            return false;
//        }
//    }
//    return true;
//}


BOOL isUnique(NSString *str)
{
    if (str.length > 128)    //Assumption
    {
        return false;
    }
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (int i = 0; i < str.length; i++)
    {
        NSString * key = [str substringWithRange:NSMakeRange(i, 1)];
        if ([dict objectForKey:key] == nil)
        {
            [dict setObject:@"1" forKey:key];
        }
        else
        {
            //already a charachter entry
            return false;
        }
    }
    return true;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        _Bool value = isUnique(@"kappakappa");
        NSLog(@"%d", value);
    }
    return 0;
}
