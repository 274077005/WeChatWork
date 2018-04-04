//
//  SkHTTPServer.h
//  WeChatWorkDylib
//
//  Created by SoKing on 2018/3/30.
//  Copyright © 2018年 skyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SkyerTools.h>
#import "HTTPServer.h"

@interface SkHTTPServer : NSObject
SkyerSingletonH(SkHTTPServer)
@property (nonatomic, strong) HTTPServer * localHttpServer;

/**
 开启服务
 */
-(void)startHTTPServer;

/**
 开启后台定位
 */
-(void)startUserLocation;

@end
