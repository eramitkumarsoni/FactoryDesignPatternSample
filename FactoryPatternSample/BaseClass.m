//
//  BaseClass.m
//  FactoryPatternSample
//
//  Created by Amit Soni on 10/26/13.

//

#import "BaseClass.h"
#import "AudioPlayerClass.h"
#import "VideoPlayerClass.h"
#import "WallPaperClass.h"


@implementation BaseClass

- (id)initWithContentType:(NSString *)contnetType
{
    if ([contnetType isEqualToString:@"video"]) {
        self = [[VideoPlayerClass alloc] init];
    }
    else if ([contnetType isEqualToString:@"audio"]) {
        self = [[AudioPlayerClass alloc] init];
    }
    else {
        self = [[WallPaperClass alloc] init];
    }
    
    return self;
}

- (void)playContent
{
    
}

- (void)stopPlaying
{
    
}

@end
