//
//  BinaryTree.m
//  HelloData
//
//  Created by Bob on 2022/7/21.
//

#import "BinaryTree.h"

@interface BinaryTree ()

@property (nonatomic, strong) NSMutableArray<NSNumber *> *dataArr;
@end

@implementation BinaryTree

- (instancetype)initWithArrayBinaryTree:(NSArray *)data{
    self = [super init];
    if (self) {
        _dataArr = [data mutableCopy];
    }
    return self;
}

- (void)arrayBinaryTreeFrontShow{
    [self printFrontShow:0];
}

- (void)printFrontShow:(NSInteger)index{
    
    if (!_dataArr || 0 == _dataArr.count) return;
    
    NSLog(@"%@ ", _dataArr[index]);
    
    if (2 * index + 1 < _dataArr.count) {
        [self printFrontShow:2 * index + 1];
    }
    
    if (2 * index + 2 < _dataArr.count) {
        [self printFrontShow:2 * index + 2];
    }
}

- (void)frontShow{
    if (_root != Nil) {
        NSLog(@"start front show");
        [_root frontShow];
        NSLog(@"end front show");
    }
}

- (void)middleShow{
    if (_root != Nil) {
        NSLog(@"start middle show");
        [_root middleShow];
        NSLog(@"end middle show");
    }
}

- (void)afterShow{
    if (_root != Nil) {
        NSLog(@"start after show");
        [_root afterShow];
        NSLog(@"end after show");
    }
}

- (TreeNode *)frontSearch:(NSInteger)targetValue{
    if (_root != Nil) {
        return [_root frontSearch:targetValue];
    }
    return Nil;
}

- (void)deleteTreeNode:(NSInteger)targetValue{
    if (_root != Nil) {
        [_root deleteTreeNode:targetValue];
    }
}
@end


@interface TreeNode ()

@property (nonatomic, assign) NSInteger value;

@end

@implementation TreeNode

- (instancetype)initWithValue:(NSInteger)value{
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

- (void)frontShow{
    NSLog(@"front value is:%ld", _value);
    
    if (_leftNode != Nil) {
        [_leftNode frontShow];
    }
    
    if (_rigthNode != Nil) {
        [_rigthNode frontShow];
    }
}

-  (void)middleShow{
    
    if (_leftNode != Nil) {
        [_leftNode middleShow];
    }
    
    NSLog(@"middle value is:%ld", _value);

    if (_rigthNode != Nil) {
        [_rigthNode middleShow];
    }
}

- (void)afterShow{
    
    if (_leftNode != Nil) {
        [_leftNode afterShow];
    }
     if (_rigthNode != Nil) {
        [_rigthNode afterShow];
    }
    
    NSLog(@"after value is:%ld", _value);
}

//先序查找
- (TreeNode *)frontSearch:(NSInteger)targetValue{
    if (self.value == targetValue)  return self;

    TreeNode *target = Nil;
    if (_leftNode != Nil) {
        target = [_leftNode frontSearch:targetValue];
    }
    
    if (target != nil) {
        return target;
    }
    
    if (_rigthNode != Nil) {
        target = [_rigthNode frontSearch:targetValue];
    }
    
    return target;
}

- (void)deleteTreeNode:(NSInteger)targetValue{

    if (_leftNode != Nil && (0 == _leftNode.value - targetValue)) {
        _leftNode = Nil;
    }
    
    if (_rigthNode != Nil && (0 == _rigthNode.value - targetValue)) {
        _rigthNode = Nil;
    }
    
    if (_leftNode != Nil) {
        [_leftNode deleteTreeNode:targetValue];
    }
    
    if (_rigthNode != Nil) {
        [_rigthNode deleteTreeNode:targetValue];
    }
}
@end
