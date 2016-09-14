
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, BubbleMessageType) {
    BubbleMessageTypeSending = 0, // 发送
    BubbleMessageTypeReceiving, // 接收
    BubbleMessageTypeSendSuccess, // 发送成功
    BubbleMessageTypeSendFailed //发送失败
};

typedef NS_ENUM(NSUInteger, BubbleImageViewStyle) {
    BubbleImageViewStyleWeChat = 0
};

typedef NS_ENUM(NSInteger, BubbleMessageMediaType) {
    BubbleMessageMediaTypeText = 0,
    BubbleMessageMediaTypePhoto = 1,
    BubbleMessageMediaTypeVideo = 2,
    BubbleMessageMediaTypeVoice = 3,
    BubbleMessageMediaTypeEmotion = 4,
    BubbleMessageMediaTypeLocalPosition = 5,
};

typedef NS_ENUM(NSInteger, BubbleMessageMenuSelecteType) {
    BubbleMessageMenuSelecteTypeTextCopy = 0,
    BubbleMessageMenuSelecteTypeTextTranspond = 1,
    BubbleMessageMenuSelecteTypeTextFavorites = 2,
    BubbleMessageMenuSelecteTypeTextMore = 3,
    
    BubbleMessageMenuSelecteTypePhotoCopy = 4,
    BubbleMessageMenuSelecteTypePhotoTranspond = 5,
    BubbleMessageMenuSelecteTypePhotoFavorites = 6,
    BubbleMessageMenuSelecteTypePhotoMore = 7,
    
    BubbleMessageMenuSelecteTypeVideoTranspond = 8,
    BubbleMessageMenuSelecteTypeVideoFavorites = 9,
    BubbleMessageMenuSelecteTypeVideoMore = 10,
    
    BubbleMessageMenuSelecteTypeVoicePlay = 11,
    BubbleMessageMenuSelecteTypeVoiceFavorites = 12,
    BubbleMessageMenuSelecteTypeVoiceTurnToText = 13,
    BubbleMessageMenuSelecteTypeVoiceMore = 14,
};

@interface MessageBubbleFactory : NSObject

+ (UIImage *)bubbleImageViewForType:(BubbleMessageType)type
                                  style:(BubbleImageViewStyle)style
                              meidaType:(BubbleMessageMediaType)mediaType;


@end
