//
//  SkHTTPServer.m
//  WeChatWorkDylib
//
//  Created by SoKing on 2018/3/30.
//  Copyright © 2018年 skyer. All rights reserved.
//

#import "SkHTTPServer.h"
#define webPath [[NSBundle mainBundle] pathForResource:@"Web" ofType:nil]

@implementation SkHTTPServer
SkyerSingletonM(SkHTTPServer)

-(void)startHTTPServer{
    _localHttpServer = [[HTTPServer alloc] init];
    [_localHttpServer setType:@"_http.tcp"];
    [_localHttpServer setPort:55555];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    
    if (![fileManager fileExistsAtPath:webPath]){
    }else{
        NSString *webLocalPath = webPath;
        [_localHttpServer setDocumentRoot:webLocalPath];
        NSError *error;
        if([_localHttpServer start:&error]){
            NSLog(@"port %hu",[_localHttpServer listeningPort]);
        }
        else{
            NSLog(@"Error starting HTTP Server: %@", error);
        }
    }
}

-(void)startUserLocation{
    SkLocation *sklocation=[SkLocation sharedSkLocation].skInitMannager().skStarUpdateLocation();
    
    sklocation.locations = ^(NSArray *locations) {
        
        NSLog(@"获取到的定位信息%@",[locations firstObject]);
    };
}

@end
