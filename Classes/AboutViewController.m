//
//  AboutViewController.m
//  SimpleDeathStar
//
//  Created by Sebastien Tanguy on 12/28/10.
//  Copyright 2010 dthg.net. All rights reserved.
//

#import "AboutViewController.h"


@implementation AboutViewController

@synthesize type = type_;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL* fileUrl = nil;
	NSLocale *locale = [NSLocale currentLocale];
	NSString *currentLocale = [locale objectForKey:NSLocaleLanguageCode];
	NSLog( @"%@", currentLocale );
	switch ( self.type ) {
        case ABOUT_ABOUT:
            self.navigationItem.title = NSLocalizedString( @"À propos", @"" );
            fileUrl = [NSURL fileURLWithPath: [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"about_%@", currentLocale] ofType:@"html"]];
            break;
        case ABOUT_PANIC:
            self.navigationItem.title = NSLocalizedString( @"Pas de panique", @"" );
            fileUrl = [NSURL fileURLWithPath: [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"panic_%@", currentLocale] ofType:@"html"]];
            break;
        default:
            return;
            break;
    }
    NSString* filePath = [fileUrl path];
    NSString* content = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    [webView loadHTMLString:content baseURL:[fileUrl baseURL]];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
