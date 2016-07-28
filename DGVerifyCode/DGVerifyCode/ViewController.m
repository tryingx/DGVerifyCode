//
//  ViewController.m
//  DGVerifyCode
//
//  Created by Gavin on 16/7/28.
//  Copyright © 2016年 DGNICE. All rights reserved.
//

#import "ViewController.h"

#import "DGVerifyCodeView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DGVerifyCodeView *verifyCodeView;
@property (weak, nonatomic) IBOutlet UIButton *verifyButton;
@property (weak, nonatomic) IBOutlet UILabel *noticeLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputCodeTF;

- (IBAction)didClickToShowVerifyCode:(UIButton *)sender;
- (IBAction)didClickToVerify:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"@DGNICE";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickToShowVerifyCode:(UIButton *)sender {
    if (self.verifyCodeView.hidden) {
        
        self.verifyCodeView.hidden = NO;
        self.verifyButton.hidden = NO;
        self.noticeLabel.hidden = NO;
        self.inputCodeTF.hidden = NO;
        
        [sender setTitle:@"看不清，换一下" forState:UIControlStateNormal];
    }else{
        [self.verifyCodeView changeCaptcha];
        [self.verifyCodeView setNeedsDisplay];
    }
}

- (IBAction)didClickToVerify:(UIButton *)sender {
    if ([self.inputCodeTF.text caseInsensitiveCompare:self.verifyCodeView.changeString] == NSOrderedSame) {
        NSLog(@"输入的:%@",self.inputCodeTF.text);
        NSLog(@"生成的:%@",self.verifyCodeView.changeString);
        NSLog(@"验证码正确");
    } else {
        NSLog(@"验证码错误");
    }
}
@end
