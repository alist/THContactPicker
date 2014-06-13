//
//  ContactPickerViewController.h
//  ContactPicker
//
//  Created by Tristan Himmelman on 11/2/12.
//  Copyright (c) 2012 Tristan Himmelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBookUI/AddressBookUI.h>
#import "THContactPickerView.h"
#import "THContact.h"

@class THContactPickerViewController;

@protocol THContactPickerViewControllerDelegate <NSObject>
//contacts = [THContact]
-(void)contactPickerViewControllerDidFinish:(THContactPickerViewController*)pickerVC withContacts:(NSArray*)contacts;
@end

@interface THContactPickerViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, THContactPickerDelegate, ABPersonViewControllerDelegate>

@property (nonatomic, strong) THContactPickerView *contactPickerView;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *contacts; //THContact
@property (nonatomic, strong) NSMutableArray *selectedContacts; //THContact
@property (nonatomic, strong) NSArray *filteredContacts; //THContact
@property (nonatomic, strong) NSMutableDictionary * contactsByRecordIDNumber; //THContact by NSNumber(ABRecordID)

@property (nonatomic, weak) id<THContactPickerViewControllerDelegate> delegate;

@end
