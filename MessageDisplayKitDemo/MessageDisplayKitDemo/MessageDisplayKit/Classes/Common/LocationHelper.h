
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void(^DidGetGeolocationsCompledBlock)(NSArray *placemarks);

@interface LocationHelper : NSObject

- (void)getCurrentGeolocationsCompled:(DidGetGeolocationsCompledBlock)compled;

@end
