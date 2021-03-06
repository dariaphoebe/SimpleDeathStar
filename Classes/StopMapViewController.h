//
//  StopMapViewController.h
//  SimpleDeathStar
//
//  Created by Sebastien Tanguy on 02/03/11.
//  Copyright 2011 dthg.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MKMapView;
@class XMMapController;
@class ADViewComposer;

#import "MaptimizeKit.h"

@interface StopMapViewController : UIViewController <XMMapControllerDelegate,MKMapViewDelegate,XMOptimizeServiceParser> {
@private
    MKMapView *mapView_;
    XMMapController* maptimizeController_;
    CLLocation* originalPosition_;
    int errorCount;
    NSMutableArray* stopAnnotations;
    UILabel* infoLabel_;
    ADViewComposer* viewComposer;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) IBOutlet UILabel* infoLabel;
@property (nonatomic, readonly) XMMapController *mapController;
@property (nonatomic, retain) CLLocation* originalPosition;


@end
