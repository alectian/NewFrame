//
//  ViewController.m
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "ViewController.h"

#import "ReqTest.h"
#import "ReqReg.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)startReq:(UIButton *)sender {
    
    NSString *chnStr = @"一元旺旺";
    NSString *utf8ChnStr = [chnStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSString *appcode = @"d78f139759b241b8b10f6735df97faeb";
    NSString *host = @"http://sms.market.alicloudapi.com";
    NSString *path = @"/singleSendSms";
    NSString *method = @"GET";
    
//    NSDictionary *dict = @{@"code":@"123456",@"product":@"一元旺旺"};
    
    NSString *paramStr = @"{\"code\":\"123456\",\"product\":\"一元旺旺\"}";
    NSString *utf8ParamStr = [paramStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *querys = [NSString stringWithFormat:@"?ParamString=%@&RecNum=13622009648&SignName=一元旺旺&TemplateCode=SMS_48540105",paramStr];
    
    NSString *utf8Querys = [querys stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//
//    NSString *url = [NSString stringWithFormat:@"%@%@%@",  host,  path , utf8Querys];
//    NSString *bodys = @"";
//    
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString: url]  cachePolicy:1  timeoutInterval:  5];
//    request.HTTPMethod  =  method;
//    [request addValue:  [NSString  stringWithFormat:@"APPCODE %@" ,  appcode]  forHTTPHeaderField:  @"Authorization"];
//    NSURLSession *requestSession = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//    NSURLSessionDataTask *task = [requestSession dataTaskWithRequest:request
//                                                   completionHandler:^(NSData * _Nullable body , NSURLResponse * _Nullable response, NSError * _Nullable error) {
//                                                       NSLog(@"Response object: %@" , response);
//                                                       NSString *bodyString = [[NSString alloc] initWithData:body encoding:NSUTF8StringEncoding];
//                                                       
//                                                       //打印应答中的body
//                                                       NSLog(@"Response body: %@" , bodyString);
//                                                   }];
//    [task resume];
    
    
//    NSString *str = @"{\"no\":\"123456\"}";
//    
//    NSString *utf8Str = [NSString stringWithCString:[str UTF8String] encoding:NSUTF8StringEncoding];
    ReqReg *req = [[ReqReg alloc] initWithQuery:utf8Querys];
    [req startReqForFinishBlockWithSuccess:^(id success) {
        
        NSLog(@"%@",success);
    } failure:^(YTKBaseRequest *failure) {
        
        NSLog(@"%@",failure);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
