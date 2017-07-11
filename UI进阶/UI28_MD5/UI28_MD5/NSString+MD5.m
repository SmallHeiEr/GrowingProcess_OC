//
//  NSString+MD5.m
//  
//
//  Created by 周琦 on 16/3/18.
//
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)

// 小写
- (NSString*)stringFromMD5Lowercase
{
    if(self == nil || [self length] == 0)
        return nil;
    
    const char *value = [self UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, (int)strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    
    return outputString;
}

// 大写
- (NSString*)stringFromMD5Capital
{
    // 转化成utf-8
    const char *cStr = [self UTF8String];
    // 开辟一个16字节(128位:MD5加密出来就是128位/bit(字节)，1字节=8位)的空间
    unsigned char result[16];
    // 加密存储到result中，将cStr字符串转换成了32位，一般来说，此过程不可逆，即只能加密，不能解密
    CC_MD5( cStr, (int)strlen(cStr), result );
    // 其中%02x是格式控制符：‘x’表示以16进制输出，‘02’表示不足两位，前面补0
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}



@end
