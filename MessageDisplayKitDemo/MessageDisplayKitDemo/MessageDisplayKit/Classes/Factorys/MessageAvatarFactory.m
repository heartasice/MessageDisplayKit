
#import "MessageAvatarFactory.h"
#import "UIImage+RoundedCorner.h"

@implementation MessageAvatarFactory

+ (UIImage *)avatarImageNamed:(UIImage *)originImage
            messageAvatarType:(MessageAvatarType)messageAvatarType {
    CGFloat radius = 0.0;
    switch (messageAvatarType) {
        case MessageAvatarTypeNormal:
            return originImage;
            break;
        case MessageAvatarTypeCircle:
            radius = originImage.size.width / 2.0;
            break;
        case MessageAvatarTypeSquare:
            radius = 8;
            break;
        default:
            break;
    }
    UIImage *avatar = [originImage roundedCornerImage:radius borderSize:0];
    return avatar;
}

@end
