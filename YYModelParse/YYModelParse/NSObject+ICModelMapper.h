//
//  NSObject+ICModelMapper.h
//  YYModelParse
//
//  Created by mac on 2017/7/30.
//  Copyright © 2017年 ICorki. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (ICModelMapper)

/**
 json -> model

 @param json NSDictionary/NSString/NSData
 @return model/nil
 */
+ (nullable instancetype)ic_modelWithJSON:(id)json;

/**
 json -> model

 @param dictionary NSDictionary
 @return model/nil
 */
+ (nullable instancetype)ic_modelWithDictionary:(NSDictionary *)dictionary;

/**
 json -> model

 @param json NSDictionary/NSString/NSData
 @return YES/NO
 */
- (BOOL)ic_modelSetWithJSON:(id)json;


/**
 json -> model
 
 @param dic NSDictionary
 @return YES/NO
 */
- (BOOL)ic_modelSetWithDictionary:(NSDictionary *)dic;

/**
 model -> json

 @return NSArray/NSDictionary/nil
 */
- (nullable id)ic_modelToJSONObject;


/**
 model -> json

 @return NSData
 */
- (nullable NSData *)ic_modelToJSONData;


/**
 model -> json

 @return NSString
 */
- (nullable NSString *)ic_modelToJSONString;


- (nullable id)ic_modelCopy;


- (void)ic_modelEncodeWithCoder:(NSCoder *)aCoder;


- (id)ic_modelInitWithCoder:(NSCoder *)aDecoder;


- (NSUInteger)ic_modelHash;

- (BOOL)ic_modelIsEqual:(id)model;


- (NSString *)ic_modelDescription;

@end

NS_ASSUME_NONNULL_END
