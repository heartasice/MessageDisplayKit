#import <Foundation/Foundation.h>

#import <AVFoundation/AVFoundation.h>

typedef void(^DidOutputSampleBufferBlock)(CMSampleBufferRef sampleBuffer);

@interface CaptureHelper : NSObject <AVCaptureVideoDataOutputSampleBufferDelegate>

- (void)setDidOutputSampleBufferHandle:(DidOutputSampleBufferBlock)didOutputSampleBuffer;

- (void)showCaptureOnView:(UIView *)preview;

@end
