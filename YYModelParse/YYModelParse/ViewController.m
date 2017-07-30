//
//  ViewController.m
//  YYModelParse
//
//  Created by mac on 2017/7/29.
//  Copyright © 2017年 ICorki. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+YYModel.h"
#import <objc/message.h>
#import "MJExtension.h"
@interface YYBook : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) uint64_t pages;
@property (nonatomic, strong) NSDate *publishDate;
@property (nonatomic, strong) void(^block)();

@end

@implementation YYBook

@end


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //类型编码
    //https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtTypeEncodings.html
    //https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtPropertyIntrospection.html#//apple_ref/doc/uid/TP40008048-CH101-SW6
    
    //https://github.com/apple/swift-corelibs-foundation/tree/173e9ea16cf1a0ed9b21cc11ea8a2d15b3f8dca9/CoreFoundation/Collections.subproj

    
    
    YYBook *book = [YYBook modelWithJSON:@"     \
                    {                                           \
                    \"name\": \"Harry Potter\",              \
                    \"pages\": 512,                          \
                    \"publishDate\": \"2010-01-01\"          \
                    }"];
    NSString *bookJSON = [book modelToJSONString];
    NSLog(@"Book: %@", bookJSON);
    
    YYBook *book1 = [YYBook mj_objectWithKeyValues:@"     \
                     {                                           \
                     \"name\": \"Harry Potter\",              \
                     \"pages\": 512,                          \
                     \"publishDate\": \"2010-01-01\"          \
                     }"];

}


- (void)property_t_att {
    unsigned int count = 0;
    objc_property_t *property_list = class_copyPropertyList(YYBook.class, &count);
    unsigned int attrCount = 0;
    
    for (int i = 0; i < count; i++) {
        
        objc_property_t p = property_list[i];
        
        objc_property_attribute_t *attrs = property_copyAttributeList(p, &attrCount);
        
        for (int j = 0; j < attrCount; j ++) {
            
            NSString *name = [NSString stringWithUTF8String:attrs[j].name];
            NSString *value = [NSString stringWithUTF8String:attrs[j].value];
            
            NSLog(@"%@ - %@",name, value);
        }
        
        NSLog(@"-----------------");
        
    }
}

@end
