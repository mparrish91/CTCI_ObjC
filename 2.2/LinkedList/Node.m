//
//  Node.m
//  LinkedList
//
//  Created by parry on 9/15/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import "Node.h"
#import "Index.h"


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

- (Node *)removeNode:(int)d withHead:(Node *)head
{
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

// MARK: Not Returning Element Solution
- (int)printKthToLast:(int)k withHead:(Node *)head
{
    if (head == nil) {
        return 0;
    }
    int index = [self printKthToLast:k withHead:head.next] + 1;

    if (index == k)
    {
        NSString *s = [NSString stringWithFormat:@"%dth to last node is %d", k, head.data];
        NSLog(@"%@", s);
    }
    return index;
    
}


// MARK: Pass By Reference (by pointer)
- (Node *)nthToLast:(int)k withHead:(Node *)head andCounter: (int *)i
{
    if (head == nil) {
        return 0;
    }
    Node *nd = [self nthToLast:k withHead:head.next andCounter:i];
    *i = *i + 1;
    if (*i == k)
    {
        return head;
    }
    return nd;
    
}

- (Node *)nthToLast:(int)k withHead:(Node *)head
{
    int i = 0;
    return [self nthToLast:k withHead:head andCounter:&i];
}


// MARK: Wrapper Class
- (Node *)kthToLast:(int)k withHead:(Node *)head andCounter: (Index *)idx
{
    if (head == nil) {
        return 0;
    }
    Node *nd = [self kthToLast:k withHead:head.next andCounter:idx];
    idx.value = idx.value + 1;
    if (idx.value == k)
    {
        return head;
    }
    return nd;
    
}

- (Node *)kthToLast:(int)k withHead:(Node *)head
{
    Index *idx = [[Index alloc] init];
    return [self kthToLast:k withHead:head andCounter:idx];
}




@end
