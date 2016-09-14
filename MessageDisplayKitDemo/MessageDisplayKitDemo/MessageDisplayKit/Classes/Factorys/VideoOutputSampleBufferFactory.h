#import <Foundation/Foundation.h>

#import <AVFoundation/AVFoundation.h>

@interface VideoOutputSampleBufferFactory : NSObject

+ (UIImage *)imageFromSampleBuffer:(CMSampleBufferRef)sampleBuffer;

@end
