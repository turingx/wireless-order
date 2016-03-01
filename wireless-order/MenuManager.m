//
//  MenuManager.m
//  wireless-order
//
//  Created by turingx on 16/2/21.
//  Copyright © 2016年 turingx. All rights reserved.
//

#import "MenuManager.h"

@implementation MenuManager

-(void)syncMenu{   //同步菜单
    
    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"MenuTbl"];
    
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        for (BmobObject *obj in array) {
            
            NSLog(@"name = %@", [obj objectForKey:@"name"]);
            
            NSLog(@"objectId = %@", [obj objectId]);
            //获取菜单图片路径
            BmobFile *file = [obj objectForKey:@"picture"];
            NSString *url = file.url;
            NSLog(@"url = %@", url);
            
            [self donwload:url];
            
        }
    }];
    
}

//同步菜单分类
-(void)syncMenuType{
    
    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"MenuTypeTbl"];

    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        for (BmobObject *obj in array) {
      
            NSLog(@"name = %@", [obj objectForKey:@"name"]);
          
            NSLog(@"objectId = %@", [obj objectId]);

        }
    }];
    
}


-(void)donwload:(NSString *) url{   //创建图片下载方法，使用的是AFnetworking这个类

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        NSLog(@"File downloaded to: %@", filePath);
    }];
    [downloadTask resume];
    
}

@end
