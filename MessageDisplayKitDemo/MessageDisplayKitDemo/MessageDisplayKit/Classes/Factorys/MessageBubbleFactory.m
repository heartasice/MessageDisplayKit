

#import "MessageBubbleFactory.h"

#import "ConfigurationHelper.h"

@implementation MessageBubbleFactory

+ (UIImage *)bubbleImageViewForType:(BubbleMessageType)type
                                  style:(BubbleImageViewStyle)style
                              meidaType:(BubbleMessageMediaType)mediaType {
    NSString *messageTypeString;
    
    switch (style) {
        case BubbleImageViewStyleWeChat:
            // 类似微信的
            messageTypeString = @"weChatBubble";
            break;
        default:
            break;
    }
    
    switch (type) {
        case BubbleMessageTypeSending:
            // 发送
            messageTypeString = [messageTypeString stringByAppendingString:@"_Sending"];
            break;
        case BubbleMessageTypeReceiving:
            // 接收
            messageTypeString = [messageTypeString stringByAppendingString:@"_Receiving"];
            break;
        default:
            break;
    }
    
    switch (mediaType) {
        case BubbleMessageMediaTypePhoto:
        case BubbleMessageMediaTypeVideo:
            messageTypeString = [messageTypeString stringByAppendingString:@"_Solid"];
            break;
        case BubbleMessageMediaTypeText:
        case BubbleMessageMediaTypeVoice:
            messageTypeString = [messageTypeString stringByAppendingString:@"_Solid"];
            break;
        default:
            break;
    }
    
    if (type == BubbleMessageTypeReceiving) {
        NSString *receivingSolidImageName = [[ConfigurationHelper appearance].messageTableStyle objectForKey:kMessageTableReceivingSolidImageNameKey];
        if (receivingSolidImageName) {
            messageTypeString = receivingSolidImageName;
        }
    } else {
        NSString *sendingSolidImageName = [[ConfigurationHelper appearance].messageTableStyle objectForKey:kMessageTableSendingSolidImageNameKey];
        if (sendingSolidImageName) {
            messageTypeString = sendingSolidImageName;
        }
    }
    
    UIImage *bublleImage = [UIImage imageNamed:messageTypeString];
    UIEdgeInsets bubbleImageEdgeInsets = [self bubbleImageEdgeInsetsWithStyle:style];
    UIImage *edgeBubbleImage = XH_STRETCH_IMAGE(bublleImage, bubbleImageEdgeInsets);
    return edgeBubbleImage;
}

+ (UIEdgeInsets)bubbleImageEdgeInsetsWithStyle:(BubbleImageViewStyle)style {
    UIEdgeInsets edgeInsets;
    switch (style) {
        case BubbleImageViewStyleWeChat:
            // 类似微信的
            edgeInsets = UIEdgeInsetsMake(30, 28, 85, 28);
            break;
        default:
            break;
    }
    return edgeInsets;
}

@end
