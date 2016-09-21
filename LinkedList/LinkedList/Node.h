//
//  Node.h
//  LinkedList
//
//  Created by parry on 9/15/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property Node *next;
@property int data;


- (id)initWithData:(int)data;
- (void)appendToTail:(int)d;

- (Node *)removeNode:(int)d withHead:(Node *)head;





@end
