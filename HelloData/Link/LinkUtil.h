//
//  LinkUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import <Foundation/Foundation.h>
#import "LinkData.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkUtil : NSObject


/// 单链表：在头部插入节点
/// @param newNode   新节点
/// @param headNode 头节点
+ (void)insertNodeAfterHead:(LinkData *)newNode headNode:(LinkData *)headNode;


///  单链表：正序遍历链表
/// @param headNode 头节点
/// @param text 文本
+ (NSArray<NSNumber *> *)printFromHeadWithNode:(LinkData *)headNode printPrefixText:(NSString *)text;

/// 单链表：在头部插入节点（控制链表大小）
/// @param newNode 新节点
/// @param headNode 头节点
+ (LinkData *)insertNode:(LinkData *)newNode fromHeadWithNode:(LinkData *)headNode;


/// 单链表： 如果在链表中查找到对应的Key，把Node移动到表头 同时返回YES；否则返回NO
/// @param data 需要命中的Key
/// @param headNode 头节点
+ (BOOL)refreshLinkWithData:(NSInteger)data  fromHeadWithNode:(LinkData *)headNode;


/// 链表反转
+ (void)reverseNode;

@end

NS_ASSUME_NONNULL_END
