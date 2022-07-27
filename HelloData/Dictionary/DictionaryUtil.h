//
//  DictionaryUtil.h
//  HelloData
//
//  Created by Bob on 2022/7/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, copy) NSString *room;

@end

@interface Person : NSObject

@end

@interface DictionaryUtil : NSObject

+ (void)testCopyingDictionary;

@end

NS_ASSUME_NONNULL_END
