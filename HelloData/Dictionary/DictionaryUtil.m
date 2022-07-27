//
//  DictionaryUtil.m
//  HelloData
//
//  Created by Bob on 2022/7/26.
//

#import "DictionaryUtil.h"

@implementation Student

 
@end

@interface Person (){
    NSString *_name;//遵守KVC命名规则
}

@property (nonatomic, strong) Student *student;
@end

@implementation Person

// 默认返回YES，改写之后，不去访问_is
+ (BOOL)accessInstanceVariablesDirectly{
    return NO;
}

- (id)valueForUndefinedKey:(NSString *)key{
    NSLog(@"取值出现异常，该key不存在:%@", key);
    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"存值出现异常，该key不存在:%@", key);
}

//- (NSString *)getName{
//    return @"hello Name";
//}
@end

@implementation DictionaryUtil

+ (void)testCopyingDictionary{
    
//    NSMutableString *muKey = [[NSMutableString alloc] initWithString:@"key1"];
//    NSMutableDictionary *muDic = [NSMutableDictionary dictionary];
//
////    1、 key是值拷贝（深拷贝）， value是引用拷贝（浅拷贝）
//    NSString *muValue = @"value1";
//    muDic[muKey] = muValue;
//    [muKey appendString:@"xxx"];
//    NSLog(@"=====%@", muDic[muKey]);
    
    
    /*
     (lldb) p muKey
    (__NSCFString *) $0 = 0x0000600003c85ec0 @"key1xxx"
     (lldb) p [muDic allKeys][0]
     (NSTaggedPointerString *) $1 = 0xa7c69430f5661b5c @"key1"
     /Users/bob/Desktop/code/DataLearn/HelloData/Dictionary/DictionaryUtil.m
     (lldb) p muValue
     (__NSCFConstantString *) $0 = 0x0000000102a44268 @"value1"
     (lldb) p [muDic allValues][0]
     (__NSCFConstantString *) $1 = 0x0000000102a44268 @"value1"
     */
    
    
    Person *p  = [Person new];
    [p setValue:@"nickName" forKey:@"name"];
    NSLog(@"kvc name = :%@", [p valueForKey:@"name"]);
    
    Student *s = [Student new];
    s.room = @"1001";
    [p setValue:s forKey:@"student"];
    NSLog(@"keyPath student.room = %@", [p valueForKeyPath:@"student.room"]);
}
@end
