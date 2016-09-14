#import <Foundation/Foundation.h>

// 头像大小以及头像与其他控件的距离
static CGFloat const kAvatarImageSize = 40.0f;
static CGFloat const kAlbumAvatarSpacing = 15.0f;

typedef NS_ENUM(NSInteger, MessageAvatarType) {
    MessageAvatarTypeNormal = 0,
    MessageAvatarTypeSquare,
    MessageAvatarTypeCircle
};

@interface MessageAvatarFactory : NSObject

+ (UIImage *)avatarImageNamed:(UIImage *)originImage
            messageAvatarType:(MessageAvatarType)type;

@end
