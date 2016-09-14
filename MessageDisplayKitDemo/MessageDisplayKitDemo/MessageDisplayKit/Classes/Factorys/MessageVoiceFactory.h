
#import <Foundation/Foundation.h>
#import "MessageBubbleFactory.h"

@interface MessageVoiceFactory : NSObject

+ (UIImageView *)messageVoiceAnimationImageViewWithBubbleMessageType:(BubbleMessageType)type;

@end
