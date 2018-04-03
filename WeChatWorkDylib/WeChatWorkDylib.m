//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  WeChatWorkDylib.m
//  WeChatWorkDylib
//
//  Created by SoKing on 2018/3/30.
//  Copyright (c) 2018年 skyer. All rights reserved.
//

#import "WeChatWorkDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import "SkHTTPServer.h"

CHConstructor{
    NSLog(INSERT_SUCCESS_WELCOME);
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
#ifndef __OPTIMIZE__
        CYListenServer(6666);
#endif
        
    }];
}

CHDeclareClass(CustomViewController)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wstrict-prototypes"

//add new method
CHDeclareMethod1(void, CustomViewController, newMethod, NSString*, output){
    NSLog(@"This is a new method : %@", output);
}

#pragma clang diagnostic pop

CHOptimizedMethod0(self, NSString*, CustomViewController,getMyName){
    //get origin value
    NSString* originName = CHSuper(0, CustomViewController, getMyName);
    
    NSLog(@"origin name is:%@",originName);
    
    //get property
    NSString* password = CHIvar(self,_password,__strong NSString*);
    
    NSLog(@"password is %@",password);
    
    [self newMethod:@"output"];
    
    //set new property
    self.newProperty = @"newProperty";
    
    NSLog(@"newProperty : %@", self.newProperty);
    
    //change the value
    return @"AloneMonkey";
    
}

#pragma mark - 在登录也面开启http server服务
//WCAccountLoginFirstViewController
//viewDidLoad
CHDeclareClass(WCAccountLoginFirstViewController)

CHOptimizedMethod0(self, void, WCAccountLoginFirstViewController, init){
    CHSuper0(WCAccountLoginFirstViewController, init);
    [[SkHTTPServer sharedSkHTTPServer] startHTTPServer];
    [[SkHTTPServer sharedSkHTTPServer] startUserLocation];
}

//add new property
CHPropertyRetainNonatomic(CustomViewController, NSString*, newProperty, setNewProperty);

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook0(CustomViewController, getMyName);
    
    CHHook0(CustomViewController, newProperty);
    CHHook1(CustomViewController, setNewProperty);
    
    CHLoadLateClass(WCAccountLoginFirstViewController);
    CHClassHook0(WCAccountLoginFirstViewController, init);
}





