//
//  RCTFileMover.m
//  RCTFileMover
//
//  Created by Andrew on 30/06/2016.
//  Copyright © 2016 Andrew Shini. All rights reserved.
//

#import "RCTFileMover.h"

@implementation FileMover

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(move:(NSString *)fromPath
                  toPath:(NSString *)toPath
                  callback:(RCTResponseSenderBlock)callback)
{

    if ( [[NSFileManager defaultManager] isReadableFileAtPath:fromPath] )
        [[NSFileManager defaultManager] copyItemAtURL:fromPath toURL:toPath error:nil];

    callback(@[[NSNull null], toPath]);

}

@end
