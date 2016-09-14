
//

#import <Foundation/Foundation.h>

// (Input Tool Bar Style Key)
extern NSString *kMessageInputViewVoiceNormalImageNameKey;
extern NSString *kMessageInputViewVoiceHLImageNameKey;
extern NSString *kMessageInputViewVoiceHolderImageNameKey;
extern NSString *kMessageInputViewVoiceHolderHLImageNameKey;
extern NSString *kMessageInputViewExtensionNormalImageNameKey;
extern NSString *kMessageInputViewExtensionHLImageNameKey;
extern NSString *kMessageInputViewKeyboardNormalImageNameKey;
extern NSString *kMessageInputViewKeyboardHLImageNameKey;
extern NSString *kMessageInputViewEmotionNormalImageNameKey;
extern NSString *kMessageInputViewEmotionHLImageNameKey;
extern NSString *kMessageInputViewBackgroundImageNameKey;
extern NSString *kMessageInputViewBackgroundColorKey;
extern NSString *kMessageInputViewBorderColorKey;
extern NSString *kMessageInputViewBorderWidthKey;
extern NSString *kMessageInputViewCornerRadiusKey;
extern NSString *kMessageInputViewPlaceHolderTextColorKey;
extern NSString *kMessageInputViewPlaceHolderKey;
extern NSString *kMessageInputViewTextColorKey;


// (Message Table Style Key)
extern NSString *kMessageTablePlaceholderImageNameKey;
extern NSString *kMessageTableReceivingSolidImageNameKey;
extern NSString *kMessageTableSendingSolidImageNameKey;
extern NSString *kMessageTableVoiceUnreadImageNameKey;
extern NSString *kMessageTableAvatarPalceholderImageNameKey;
extern NSString *kMessageTableTimestampBackgroundColorKey;
extern NSString *kMessageTableTimestampTextColorKey;
extern NSString *kMessageTableAvatarTypeKey; // XHMessageAvatarType for NSNumber， if kXHMessageTableCustomLoadAvatarNetworImageKey is YES, kXHMessageTableAvatarTypeKey is invalid
extern NSString *kMessageTableCustomLoadAvatarNetworImageKey; // for NSNumber(BOOL)

// 优先控制MDK的UI控件样式，比如输入框的按钮图
@interface ConfigurationHelper : NSObject

@property (nonatomic, strong, readonly) NSArray *popMenuTitles;

@property (nonatomic, strong, readonly) NSDictionary *messageInputViewStyle;

@property (nonatomic, strong, readonly) NSDictionary *messageTableStyle;

+ (instancetype)appearance;

- (void)setupPopMenuTitles:(NSArray *)popMenuTitles;

// The key from (Input Tool Bar Style Key)
- (void)setupMessageInputViewStyle:(NSDictionary *)messageInputViewStyle;

// The key from (Message Table Style Key)
- (void)setupMessageTableStyle:(NSDictionary *)messageTableStyle;

@end
