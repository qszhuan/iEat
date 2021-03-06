//
// Created by twer on 2/17/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "GroupListProtocol.h"
#import "GroupListController.h"
#import "GroupListUIView.h"
#import "GroupListTableViewLogic.h"

@implementation GroupListController {
    GroupListTableViewLogic *groupTableLogic;
}

- (id)init {
    self = [super init];
    if (self) {
        self.title = @"Group List";
        groupTableLogic = [[GroupListTableViewLogic alloc] init];
    }

    return self;
}

- (void)loadView {
    GroupListUIView *groupListUIView = [[GroupListUIView alloc] initWithDelegate:groupTableLogic andFrame:CGRectMake(0, 0, 320, [UIScreen mainScreen].bounds.size.height - 49)];
    self.view = groupListUIView;
    groupTableLogic.delegate = self;
}

- (IBAction) createPress:(id) sender {

}

- (IBAction)reChargePress:(id) sender {

}

-(void) createBarButtonOnNavigationBar{
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Recharge" style:UIBarButtonItemStylePlain target:self action:@selector(reChargePress:)];
    self.navigationItem.rightBarButtonItem = rightButton;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self createBarButtonOnNavigationBar];


}


@end