//
//  BinaryTree.h
//  HelloData
//
//  Created by Bob on 2022/7/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/// 节点数据结构
@interface TreeNode : NSObject

/// 左子节点
@property (nonatomic, strong) TreeNode *leftNode;

/// 右子节点
@property (nonatomic, strong) TreeNode *rigthNode;

/// 初始化节点
/// @param value   保存值
- (instancetype)initWithValue:(NSInteger)value;

- (void)frontShow;
- (void)middleShow;
- (void)afterShow;

- (TreeNode *)frontSearch:(NSInteger)targetValue;
- (void)deleteTreeNode:(NSInteger)targetValue;
@end

@interface BinaryTree : NSObject

@property (nonatomic, strong) TreeNode *root;


/// 初始化顺序二叉树（存储只考虑完全二叉树）
/// @param data 数组
- (instancetype)initWithArrayBinaryTree:(NSArray *)data;

- (void)arrayBinaryTreeFrontShow;


- (void)frontShow;
- (void)middleShow;
- (void)afterShow;

- (void)deleteTreeNode:(NSInteger)targetValue;
- (TreeNode *)frontSearch:(NSInteger)targetValue;

@end

NS_ASSUME_NONNULL_END
