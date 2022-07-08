//
//  LinkData.m
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import "LinkData.h"

@implementation LinkData


+ (instancetype)constructNodeWithData:(NSInteger)data{
    LinkData *node = [LinkData new];
    node.data = data;
    node.next = nil;
    return node;
}

@end


