//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  WeChatWorkDylib.h
//  WeChatWorkDylib
//
//  Created by SoKing on 2018/3/30.
//  Copyright (c) 2018年 skyer. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INSERT_SUCCESS_WELCOME @"\n               🎉!!！congratulations!!！🎉\n👍----------------insert dylib success----------------👍"

@interface CustomViewController

@property (nonatomic, copy) NSString* newProperty;

- (NSString*)getMyName;

- (void)newMethod:(NSString*) output;

@end
