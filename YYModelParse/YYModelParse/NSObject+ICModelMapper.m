//
//  NSObject+ICModelMapper.m
//  YYModelParse
//
//  Created by mac on 2017/7/30.
//  Copyright © 2017年 ICorki. All rights reserved.
//

#import "NSObject+ICModelMapper.h"
#import "NSObject+YYModel.h"
@implementation NSObject (ICModelMapper)
+ (nullable instancetype)ic_modelWithJSON:(id)json {
    
    return [self modelWithJSON:json];
}

+ (nullable instancetype)ic_modelWithDictionary:(NSDictionary *)dictionary {
    return [self modelWithDictionary:dictionary];
}

- (BOOL)ic_modelSetWithJSON:(id)json {
    return [self modelSetWithJSON:json];
}


- (BOOL)ic_modelSetWithDictionary:(NSDictionary *)dic {
    return [self modelSetWithDictionary:dic];
}

- (nullable id)ic_modelToJSONObject {
    return [self modelToJSONObject];
}


- (nullable NSData *)ic_modelToJSONData {
    return [self modelToJSONData];
}


- (nullable NSString *)ic_modelToJSONString {
    return [self modelToJSONString];
}


- (nullable id)ic_modelCopy {
    return [self modelCopy];
}


- (void)ic_modelEncodeWithCoder:(NSCoder *)aCoder {
    return [self modelEncodeWithCoder:aCoder];
}


- (id)ic_modelInitWithCoder:(NSCoder *)aDecoder {
    return [self modelInitWithCoder:aDecoder];
}


- (NSUInteger)ic_modelHash {
    return [self modelHash];
}

- (BOOL)ic_modelIsEqual:(id)model {
    return [self modelIsEqual:model];
}


- (NSString *)ic_modelDescription {
    return [self modelDescription];
}

@end
