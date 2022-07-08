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

/// 入栈字符串
/// @param element 字符串
- (BOOL)pushElement:(NSString *)element;

/// 出栈
- (NSString *)popElement;


+ (BOOL)pushLinkData:(LinkData *)data withHeadNode:(LinkData *)headNode;
+ (LinkData *)popLinkDataWithHeadNode:(LinkData *)headNode;

@end

NS_ASSUME_NONNULL_END
