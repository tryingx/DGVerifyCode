//
//  DGVerifyCodeView.h
//  DGVerifyCode
//
//  Created by Gavin on 16/7/28.
//  Copyright © 2016年 DGNICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DGVerifyCodeView : UIView

@property (nonatomic, retain) NSArray *changeArray; //字符素材数组
@property (nonatomic, retain) NSMutableString *changeString;  //验证码的字符串

-(void)changeCaptcha;

@end
