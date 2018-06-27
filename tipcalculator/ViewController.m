//
//  ViewController.m
//  tipcalculator
//
//  Created by Zelalem Tenaw Terefe on 6/26/18.
//  Copyright © 2018 Zelalem Tenaw Terefe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *tiplabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UITextField *billfield;
@property (weak, nonatomic) IBOutlet UILabel *Tip;
@property (weak, nonatomic) IBOutlet UILabel *Total;
@property (weak, nonatomic) IBOutlet UISegmentedControl *Tipcontrol;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    [self.view endEditing:YES];
}

- (IBAction)editor:(id)sender {
    
    
    double bill=[self.billfield.text doubleValue];
    NSArray *tiparray=@[@(0.15),@(0.20),@(0.22)];
    double perecentage=[tiparray[self.Tipcontrol.selectedSegmentIndex] doubleValue];
    
    
    double tipo=perecentage*bill;
    double totalo=bill+tipo;
    self.tiplabel.text=[NSString stringWithFormat:@"$%f",tipo];
    self.totalLabel.text=[NSString stringWithFormat:@"$%f", totalo];
    
}

- (IBAction)onEdit:(id)sender {
    [UIView animateWithDuration:1 animations:^{self.Tip.alpha=0;
        self.tiplabel.alpha=0;
        self.Total.alpha=0;
        self.totalLabel.alpha=0;
        self.Tipcontrol.alpha=0;}];
    
    [UIView animateWithDuration:1.0 animations:^{ self.billfield.frame=CGRectMake(self.billfield.frame.origin.x, self.billfield.frame.origin.y, self.billfield.frame.size.width, self.billfield.frame.size.height+100);}];
    
    
}

- (IBAction)editEnd:(id)sender {
    [UIView animateWithDuration:1 animations:^{self.Tip.alpha=1;
        self.tiplabel.alpha=1;
        self.Total.alpha=1;
        self.totalLabel.alpha=1;
        self.Tipcontrol.alpha=1;}];
    [UIView animateWithDuration:1 animations:^{self.billfield.frame=self.billfield.frame=CGRectMake(self.billfield.frame.origin.x, self.billfield.frame.origin.y, self.billfield.frame.size.width, self.billfield.frame.size.height-100);}];

}


@end

