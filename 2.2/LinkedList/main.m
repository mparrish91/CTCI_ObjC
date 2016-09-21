//
//  main.m
//  LinkedList
//
//  Created by parry on 9/15/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Node *node = [[Node alloc] initWithData:1];
        [node appendToTail:5];
        [node appendToTail:2];
        [node appendToTail:13];
        [node appendToTail:7];
        [node appendToTail:3];

        NSLog(@"%d", node.next.next.next.data);
        
//       Node *removed = [node removeNode:1 withHead: node];
//        
//        NSLog(@"%d", node.next.next.next.data);
        
        [node printKthToLast:4 withHead:node];
        
        
       Node *returnNode = [node nthToLast:4 withHead:node];
        NSLog(@"%d", returnNode.data);
        
        Node *lastNode = [node kthToLast:4 withHead:node];
        NSLog(@"%d", lastNode.data);




    }
    return 0;
}
