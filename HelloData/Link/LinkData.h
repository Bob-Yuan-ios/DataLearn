//
//  LinkData.h
//  HelloData
//
//  Created by Bob on 2022/7/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinkData : NSObject

@property (nonatomic, assign) NSInteger data;
@property (nonatomic, strong, nullable) LinkData *pre;
@property (nonatomic, strong, nullable) LinkData *next;

+ (instancetype)constructNodeWithData:(NSInteger)data;

@end

NS_ASSUME_NONNULL_END
