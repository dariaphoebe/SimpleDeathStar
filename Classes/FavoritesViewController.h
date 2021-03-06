//
//  FavoritesViewController.h
//  SimpleDeathStar
//
//  Created by Sebastien Tanguy on 01/26/11.
//  Copyright 2011 dthg.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableWithAdViewController.h"

@interface FavoritesViewController : TableWithAdViewController <UIAlertViewDelegate> {
@private
    NSFetchedResultsController* fetchedResultsController_;
}
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;

@end
