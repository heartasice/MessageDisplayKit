
#import "ConfigurationHelper.h"

// (Input Tool Bar Style Key)
NSString *kMessageInputViewVoiceNormalImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewVoiceNormalImageNameKey";
NSString *kMessageInputViewVoiceHLImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewVoiceHLImageNameKey";
NSString *kMessageInputViewVoiceHolderImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewVoiceHolderImageNameKey";
NSString *kMessageInputViewVoiceHolderHLImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewVoiceHolderHLImageNameKey";
NSString *kMessageInputViewExtensionNormalImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewExtensionNormalImageNameKey";
NSString *kMessageInputViewExtensionHLImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewExtensionHLImageNameKey";
NSString *kMessageInputViewKeyboardNormalImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewKeyboardNormalImageNameKey";
NSString *kMessageInputViewKeyboardHLImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewKeyboardHLImageNameKey";
NSString *kMessageInputViewEmotionNormalImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewEmotionNormalImageNameKey";
NSString *kMessageInputViewEmotionHLImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewEmotionHLImageNameKey";
NSString *kMessageInputViewBackgroundImageNameKey = @"com.HUAJIE.MDK.XHMessageInputViewBackgroundImageNameKey";
NSString *kMessageInputViewBackgroundColorKey = @"com.HUAJIE.MDK.XHMessageInputViewBackgroundColorKey";
NSString *kMessageInputViewBorderColorKey = @"com.HUAJIE.MDK.XHMessageInputViewBorderColorKey";
NSString *kMessageInputViewBorderWidthKey = @"com.HUAJIE.MDK.XHMessageInputViewBorderWidthKey";
NSString *kMessageInputViewCornerRadiusKey = @"com.HUAJIE.MDK.XHMessageInputViewCornerRadiusKey";
NSString *kMessageInputViewPlaceHolderTextColorKey = @"com.HUAJIE.MDK.XHMessageInputViewPlaceHolderTextColorKey";
NSString *kMessageInputViewPlaceHolderKey = @"com.HUAJIE.MDK.XHMessageInputViewPlaceHolderKey";
NSString *kMessageInputViewTextColorKey = @"com.HUAJIE.MDK.XHMessageInputViewTextColorKey";

// (Message Table Style Key)
NSString *kMessageTablePlaceholderImageNameKey = @"com.HUAJIE.MDK.XHMessageTablePlaceholderImageNameKey";
NSString *kMessageTableReceivingSolidImageNameKey = @"com.HUAJIE.MDK.XHMessageTableReceivingSolidImageNameKey";
NSString *kMessageTableSendingSolidImageNameKey = @"com.HUAJIE.MDK.XHMessageTableSendingSolidImageNameKey";
NSString *kMessageTableVoiceUnreadImageNameKey = @"com.HUAJIE.MDK.XHMessageTableVoiceUnreadImageNameKey";
NSString *kMessageTableAvatarPalceholderImageNameKey = @"com.HUAJIE.MDK.XHMessageTableAvatarPalceholderImageNameKey";
NSString *kMessageTableTimestampBackgroundColorKey = @"com.HUAJIE.MDK.XHMessageTableTimestampBackgroundColorKey";
NSString *kMessageTableTimestampTextColorKey = @"com.HUAJIE.MDK.XHMessageTableTimestampTextColorKey";
NSString *kMessageTableAvatarTypeKey = @"com.HUAJIE.MDK.XHMessageTableAvatarTypeKey";
NSString *kMessageTableCustomLoadAvatarNetworImageKey = @"com.HUAJIE.MDK.XHMessageTableCustomLoadAvatarNetworImageKey";

@interface ConfigurationHelper ()

@property (nonatomic, strong, readwrite) NSArray *popMenuTitles;

@property (nonatomic, strong, readwrite) NSDictionary *messageInputViewStyle;

@property (nonatomic, strong, readwrite) NSDictionary *messageTableStyle;

@end

@implementation ConfigurationHelper

+ (instancetype)appearance {
    static ConfigurationHelper *configurationHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        configurationHelper = [[ConfigurationHelper alloc] init];
    });
    return configurationHelper;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.popMenuTitles = @[NSLocalizedStringFromTable(@"copy", @"MessageDisplayKitString", @"复制文本消息"),
                               NSLocalizedStringFromTable(@"transpond", @"MessageDisplayKitString", @"转发"),
                               NSLocalizedStringFromTable(@"favorites", @"MessageDisplayKitString", @"收藏"),
                               NSLocalizedStringFromTable(@"more", @"MessageDisplayKitString", @"更多"),];
    }
    return self;
}

- (void)setupPopMenuTitles:(NSArray *)popMenuTitles {
    self.popMenuTitles = popMenuTitles;
}

- (void)setupMessageInputViewStyle:(NSDictionary *)messageInputViewStyle {
    self.messageInputViewStyle = messageInputViewStyle;
}

- (void)setupMessageTableStyle:(NSDictionary *)messageTableStyle {
    self.messageTableStyle = messageTableStyle;
}

@end
