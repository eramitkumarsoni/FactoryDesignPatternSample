//
//  BaseClass.h
//  FactoryPatternSample
//
//  Created by Amit Soni on 10/26/13.

//

#import <Foundation/Foundation.h>

@interface BaseClass : NSObject

- (id)initWithContentType:(NSString *)contnetType;
- (void)playContent;
- (void)stopPlaying;
@end
