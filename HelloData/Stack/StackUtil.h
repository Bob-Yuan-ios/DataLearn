//
//  StackUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import <Foundation/Foundation.h>
#import "LinkData.h"

NS_ASSUME_NONNULL_BEGIN

@interface StackUtil : NSObject
 
/// 入栈
/// @param data 入栈节点
/// @param headNode 头节点
+ (BOOL)pushLinkData:(LinkData *)data withHeadNode:(LinkData *)headNode;


///  出栈
/// @param headNode 头节点
+ (LinkData *)popLinkDataWithHeadNode:(LinkData *)headNode;


@end

NS_ASSUME_NONNULL_END
