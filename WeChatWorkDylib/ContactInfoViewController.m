//
//  ContactInfoViewController.m
//  WeChatWorkDylib
//
//  Created by SoKing on 2018/4/2.
//  Copyright © 2018年 skyer. All rights reserved.
//

#import "ContactInfoViewController.h"
#import <CaptainHook.h>

/*
 [<ContactInfoViewController: 0x10c16a000> onNewMessage:{m_nsUsrName=wxi*a21~19, m_nsEncodeUserName=v1_55329d88a921115bd8544a2630c268596bbdb8efdac1296439b0276f75c7901ed18db4553fe38e43cd7de7002a34a382@stranger, alias=sky*_-b~9, m_nsNickName=氣生莫, m_uiType=32771, m_uiConType=0, m_nsRemark=,  m_nsCountry=CN m_nsProvince=Guangdong m_nsCity=Shenzhen m_nsSignature=梦想是一定要有的，万一实现了呢？👣      m_uiSex=1 m_uiCerFlag=0 m_nsCer=(null) scene=0 } ]
 */
#pragma mark - 在登录也面开启http server服务
//WCAccountLoginFirstViewController
//viewDidLoad
CHDeclareClass(ContactInfoViewController)

CHOptimizedMethod1(self, void, ContactInfoViewController, onNewMessage, id, arg1){
    
    NSLog(@"------>%@",[arg1 classNameForClass:arg1]);
//    NSMutableDictionary *newDic=[[NSMutableDictionary alloc] initWithDictionary:arg1];
//
//    [newDic setObject:@"wxi*a21~19" forKey:@"m_nsUsrName"];
//    [newDic setObject:@"v1_55329d88a921115bd8544a2630c268596bbdb8efdac1296439b0276f75c7901ed18db4553fe38e43cd7de7002a34a382@stranger" forKey:@"m_nsEncodeUserName"];
//    [newDic setObject:@"sky*_-b~9" forKey:@"alias"];
//    [newDic setObject:@"氣生莫" forKey:@"m_nsNickName"];
//    [newDic setObject:@"m_uiType" forKey:@"32771"];
//    [newDic setObject:@"0" forKey:@"m_uiConType"];
//    [newDic setObject:@"" forKey:@"m_nsRemark"];
//    [newDic setObject:@"CN" forKey:@"m_nsCountry"];
//    [newDic setObject:@"Guangdong" forKey:@"m_nsProvince"];
//    [newDic setObject:@"Shenzhen" forKey:@"m_nsCity"];
//    [newDic setObject:@"CN" forKey:@"m_nsSignature"];
//    [newDic setObject:@"梦想是一定要有的，万一实现了呢？👣" forKey:@"m_nsCountry"];
//    [newDic setObject:@"1" forKey:@"m_uiSex"];
//    [newDic setObject:@"0" forKey:@"m_uiCerFlag"];
//    [newDic setObject:@"" forKey:@"m_nsCer"];
//    [newDic setObject:@"0" forKey:@"scene"];
    
    
    CHSuper1(ContactInfoViewController, onNewMessage, arg1);
}

CHConstructor{
    
    CHLoadLateClass(ContactInfoViewController);
    CHClassHook1(ContactInfoViewController, onNewMessage);
}
