//
//  Node.m
//  LinkedList
//
//  Created by parry on 9/15/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import "Node.h"

@implementation Node

- (id) initWithData:(int)data
{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}


- (void)appendToTail:(int)d
{
    Node *end = [[Node alloc] initWithData:d];
    Node *currentNode = self;
    
    while (currentNode.next != nil)
    {
        currentNode = currentNode.next;
    }
    
    currentNode.next = end;
}

- (Node *)removeNode:(int)d withHead:(Node *)head {
    Node *n = head;
    
        if (n.data == d)
        {
            return head.next;
        }
    
        while (n.next != nil)
        {
            if (n.next.data == d)
            {
                n.next = n.next.next;
                return head;                //head didn't change
            }
            n = n.next;
        }
    
    return head;
}



- (void)removeDups:(Node *)head
{
    Node *n = head;
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    if(n == nil)
    {
        return;
    }
    
    while (n.next != nil) {
        
       NSString *stringNum = [NSString stringWithFormat:@"%d",n];

        
        dict[stringNum] = dict[stringNum] + 1;
        
        
        
        
    }
    
    
    

}


@end
