//
//  ViewController.h
//  iCar
//
//  Created by Pascual on 18/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController <NSStreamDelegate, UIAccelerometerDelegate>{
    
    NSOutputStream * outputStream;
    NSInputStream * inputStream;
    
    IBOutlet UILabel * info;
    IBOutlet UIButton * botonDisconnect;
    IBOutlet UIButton * botonConnect;
    IBOutlet UIButton * botonCamara;
    IBOutlet UIButton * botonTelemetry;
    IBOutlet UIButton * botonLights;
    IBOutlet UIButton * botonBeep;
    IBOutlet UIButton * botonON;
    IBOutlet UIButton * botonOFF;
    IBOutlet UIButton * botonAUTO;
    IBOutlet UIButton * botonBack;
    IBOutlet UIButton * botonRefresh;
    IBOutlet UIButton * botonPower;
    IBOutlet UIButton * botonPowerON;
    IBOutlet UIButton * botonPowerOFF;
    IBOutlet UITextField * ip;
    
    UIView * marco1;
    UIView * marco2;
    UIView * mando1;
    UIView * mando2;
    
    UIImageView * marcoCamara;
    UIView * mandoCamara;
    
    
    UILabel * sen1;
    UILabel * sen2;
    UILabel * sen3;
    UILabel * sen4;
  
    UIView * sen1Ind;
    UIView * sen2Ind;
    UIView * sen3Ind;
    
    NSInteger avance;
    NSInteger direccion;
    
    char dato;
    char motor1;
    char motor2;
    
    float aux1;
    float aux2;
    float x;
    float y;
    int dir1;
    int dir2;
    int dir;
    
    float xAnt;
    float yAnt;
    char datoAnt;
    char motor1Ant;
    char motor2Ant;
    int dirAnt;
    
    BOOL PHOTO;
    
    
    NSMutableData* buffer;
    
    NSInteger bytesRead;
    NSInteger totalBytesRead;
    
    uint32_t max_size;
    

}

@property (nonatomic, retain) NSOutputStream *outputStream;
@property (nonatomic, retain) NSInputStream * inputStream;

@property (nonatomic, retain) IBOutlet UILabel * info;
@property (nonatomic, retain) IBOutlet UIButton * botonDisconnect;
@property (nonatomic, retain) IBOutlet UIButton * botonConnect;
@property (nonatomic, retain) IBOutlet UIButton * botonCamara;
@property (nonatomic, retain) IBOutlet UIButton * botonTelemetry;
@property (nonatomic, retain) IBOutlet UIButton * botonLights;
@property (nonatomic, retain) IBOutlet UIButton * botonBeep;
@property (nonatomic, retain) IBOutlet UIButton * botonON;
@property (nonatomic, retain) IBOutlet UIButton * botonOFF;
@property (nonatomic, retain) IBOutlet UIButton * botonAUTO;
@property (nonatomic, retain) IBOutlet UIButton * botonBack;
@property (nonatomic, retain) IBOutlet UIButton * botonRefresh;
@property (nonatomic, retain) IBOutlet UIButton * botonPower;
@property (nonatomic, retain) IBOutlet UIButton * botonPowerON;
@property (nonatomic, retain) IBOutlet UIButton * botonPowerOFF;
@property (nonatomic, retain) IBOutlet UITextField * ip;
@property (nonatomic, retain) UIImageView * marcoCamara;
@property (nonatomic, retain) UIView * mandoCamara;

@property (nonatomic, retain) UIView * marco1;
@property (nonatomic, retain) UIView * marco2;
@property (nonatomic, retain) UIView * mando1;
@property (nonatomic, retain) UIView * mando2;
@property (nonatomic, retain) UIView * tocar1;
@property (nonatomic, retain) UIView * tocar2;

@property (nonatomic, retain) UILabel * sen1;
@property (nonatomic, retain) UILabel * sen2;
@property (nonatomic, retain) UILabel * sen3;
@property (nonatomic, retain) UILabel * sen4;

@property (nonatomic, retain) UIView * sen1Ind;
@property (nonatomic, retain) UIView * sen2Ind;
@property (nonatomic, retain) UIView * sen3Ind;

@property (nonatomic, retain) NSMutableData* buffer;


-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *) event;
-(void) dispatchTouchEvent:(UIView *)theView toPosition:(CGPoint)position;

- (void) initNetworkCommunication;

- (IBAction) conectar:(id)sender;
- (IBAction) desconectar:(id)sender;

- (IBAction) luces:(id)sender;
- (IBAction) lucesON:(id)sender;
- (IBAction) lucesOFF:(id)sender;
- (IBAction) lucesAUTO:(id)sender;

- (IBAction) power:(id)sender;
- (IBAction) powerON:(id)sender;
- (IBAction) powerOFF:(id)sender;

- (IBAction) pito:(id)sender;
- (IBAction) quitarPito:(id)sender;

- (IBAction) telemetria:(id)sender;
- (IBAction) refresh:(id)sender;
- (IBAction) camara:(id)sender;
- (IBAction) teclado:(id)sender;
- (IBAction) goBack:(id)sender;


@end
