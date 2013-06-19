//
//  ViewController.m
//  iCar
//
//  Created by Pascual on 18/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize outputStream;
@synthesize inputStream;
@synthesize info;
@synthesize marco1;
@synthesize marco2;
@synthesize mando1;
@synthesize mando2;
@synthesize tocar1;
@synthesize tocar2;
@synthesize botonCamara;
@synthesize marcoCamara;
@synthesize mandoCamara;

@synthesize botonAUTO;
@synthesize botonBeep;
@synthesize botonConnect;
@synthesize botonDisconnect;
@synthesize botonLights;
@synthesize botonOFF;
@synthesize botonON;
@synthesize botonTelemetry;
@synthesize botonBack;
@synthesize botonRefresh;
@synthesize botonPowerOFF;
@synthesize botonPowerON;
@synthesize botonPower;
@synthesize ip;

@synthesize sen1;
@synthesize sen2;
@synthesize sen3;
@synthesize sen4;

@synthesize sen1Ind;
@synthesize sen2Ind;
@synthesize sen3Ind;


@synthesize buffer;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        marcoCamara = [[UIImageView alloc] initWithFrame:CGRectMake(200, 150, self.view.bounds.size.height-400, self.view.bounds.size.width-240) ];
        [self.view addSubview:marcoCamara];
        [[marcoCamara layer] setCornerRadius:2.0f];
        [[marcoCamara layer] setBorderWidth:1.0f];
        //[marcoCamara release];
        
        mandoCamara = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        mandoCamara.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mandoCamara];
        [[mandoCamara layer] setCornerRadius:7.5f];
        [[mandoCamara layer] setMasksToBounds:YES];
        mandoCamara.center = CGPointMake(marcoCamara.center.x, marcoCamara.center.y);
        [mandoCamara release];
        
        marco1 = [[UIView alloc] initWithFrame:CGRectMake(80, 70, 50, 400) ];
        marco1.backgroundColor = [UIColor darkGrayColor];
        [self.view addSubview:marco1];
        [[marco1 layer] setCornerRadius:5.0f];
        [[marco1 layer] setMasksToBounds:YES];
        [[marco1 layer] setBorderWidth:2.0f];
        marco1.center = CGPointMake(marco1.center.x, 410);
        [marco1 release];
        
        tocar1 = [[UIView alloc] initWithFrame:CGRectMake(30, 70, 110, 400) ];
        tocar1.backgroundColor = [UIColor clearColor];
        tocar1.center = CGPointMake(marco1.center.x, marco1.center.y);
        [self.view addSubview:tocar1];
        [tocar1 release];
        
        marco2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-130, 70, 50, 400) ];
        marco2.backgroundColor = [UIColor darkGrayColor];
        marco2.center = CGPointMake(marco2.center.x, 410);
        [self.view addSubview:marco2];
        [[marco2 layer] setCornerRadius:5.0f];
        [[marco2 layer] setMasksToBounds:YES];
        [[marco2 layer] setBorderWidth:2.0f];
        [marco2 release];
        
        tocar2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-115, 70, 110, 400) ];
        tocar2.backgroundColor = [UIColor clearColor];
        tocar2.center = CGPointMake(marco2.center.x, marco2.center.y);
        [self.view addSubview:tocar2];
        [tocar2 release];
        
        mando1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando1.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando1];
        [[mando1 layer] setCornerRadius:20.0f];
        [[mando1 layer] setMasksToBounds:YES];
        [[mando1 layer] setBorderWidth:1.0f];
        mando1.center = CGPointMake(marco1.center.x, marco1.center.y);
        [mando1 release];
        
        mando2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando2.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando2];
        [[mando2 layer] setCornerRadius:20.0f];
        [[mando2 layer] setMasksToBounds:YES];
        [[mando2 layer] setBorderWidth:1.0f];
        mando2.center = CGPointMake(marco2.center.x, marco2.center.y);
        [mando2 release];
        
        sen1 = [[UILabel alloc] initWithFrame:CGRectMake(250, 230, 450, 50) ];
        sen1.backgroundColor = [UIColor clearColor];
        sen1.font = [UIFont fontWithName:@"American TypeWriter" size:(37.0)];
        sen1.textColor = [UIColor blackColor];
        sen1.text = [NSString stringWithFormat:@"Temp Sensor 1 23.5 Cº"];
        [self.view addSubview:sen1];
        [sen1 release];
        
        sen2 = [[UILabel alloc] initWithFrame:CGRectMake(250, 300, 450, 60) ];
        sen2.backgroundColor = [UIColor clearColor];
        sen2.font = [UIFont fontWithName:@"American TypeWriter" size:(37.0)];
        sen2.textColor = [UIColor blackColor];
        sen2.text = [NSString stringWithFormat:@"Temp Sensor 2 23.5 Cº"];
        [self.view addSubview:sen2];
        [sen2 release];
        
        sen3 = [[UILabel alloc] initWithFrame:CGRectMake(250, 370, 450, 50) ];
        sen3.backgroundColor = [UIColor clearColor];
        sen3.font = [UIFont fontWithName:@"American TypeWriter" size:(37.0)];
        sen3.textColor = [UIColor blackColor];
        sen3.text = [NSString stringWithFormat:@"Light Level 300"];
        [self.view addSubview:sen3];
        [sen3 release];
        
        sen4 = [[UILabel alloc] initWithFrame:CGRectMake(250, 440, 450, 50) ];
        sen4.backgroundColor = [UIColor clearColor];
        sen4.font = [UIFont fontWithName:@"American TypeWriter" size:(37.0)];
        sen4.textColor = [UIColor blackColor];
        sen4.text = [NSString stringWithFormat:@"Detected obstacle YES"];
        [self.view addSubview:sen4];
        [sen4 release];
        
        sen1Ind = [[UIView alloc] initWithFrame:CGRectMake(730, 240, 50, 50) ];
        sen1Ind.backgroundColor = [UIColor blueColor];
        [self.view addSubview:sen1Ind];
        [[sen1Ind layer] setCornerRadius:6.0f];
        [[sen1Ind layer] setBorderWidth:2.0f];
        [sen1Ind release];
        
        sen2Ind = [[UIView alloc] initWithFrame:CGRectMake(730, 310, 50, 50) ];
        sen2Ind.backgroundColor = [UIColor blueColor];
        [self.view addSubview:sen2Ind];
        [[sen2Ind layer] setCornerRadius:6.0f];
        [[sen2Ind layer] setBorderWidth:2.0f];
        [sen2Ind release];
        
        sen3Ind = [[UIView alloc] initWithFrame:CGRectMake(730, 380, 50, 50) ];
        sen3Ind.backgroundColor = [UIColor blueColor];
        [self.view addSubview:sen3Ind];
        [[sen3Ind layer] setCornerRadius:6.0f];
        [[sen3Ind layer] setBorderWidth:2.0f];
        [sen3Ind release];

    }
    
    else
    {
        
        marcoCamara = [[UIImageView alloc] initWithFrame:CGRectMake(125, 55, self.view.bounds.size.height-250, self.view.bounds.size.width-70) ];
        [self.view addSubview:marcoCamara];
        [[marcoCamara layer] setCornerRadius:2.0f];
        [[marcoCamara layer] setBorderWidth:1.0f];
        [marcoCamara release];
        
        mandoCamara = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        mandoCamara.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mandoCamara];
        [[mandoCamara layer] setCornerRadius:7.5f];
        [[mandoCamara layer] setMasksToBounds:YES];
        mandoCamara.center = CGPointMake(marcoCamara.center.x, marcoCamara.center.y);
        [mandoCamara release];
        
        marco1 = [[UIView alloc] initWithFrame:CGRectMake(35, 70, 50, 200) ];
        marco1.backgroundColor = [UIColor darkGrayColor];
        [self.view addSubview:marco1];
        [[marco1 layer] setCornerRadius:5.0f];
        [[marco1 layer] setMasksToBounds:YES];
        [[marco1 layer] setBorderWidth:2.0f];
        [marco1 release];
        
        tocar1 = [[UIView alloc] initWithFrame:CGRectMake(15, 70, 90, 200) ];
        tocar1.backgroundColor = [UIColor clearColor];
        [self.view addSubview:tocar1];
        [tocar1 release];
        
        marco2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-85, 70, 50, 200) ];
        marco2.backgroundColor = [UIColor darkGrayColor];
        [self.view addSubview:marco2];
        [[marco2 layer] setCornerRadius:5.0f];
        [[marco2 layer] setMasksToBounds:YES];
        [[marco2 layer] setBorderWidth:2.0f];
        [marco2 release];
        
        tocar2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-105, 70, 90, 200) ];
        tocar2.backgroundColor = [UIColor clearColor];
        [self.view addSubview:tocar2];
        [tocar2 release];
        
        mando1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando1.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando1];
        [[mando1 layer] setCornerRadius:20.0f];
        [[mando1 layer] setMasksToBounds:YES];
        [[mando1 layer] setBorderWidth:1.0f];
        mando1.center = CGPointMake(marco1.center.x, marco1.center.y);
        [mando1 release];
        
        mando2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando2.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando2];
        [[mando2 layer] setCornerRadius:20.0f];
        [[mando2 layer] setMasksToBounds:YES];
        [[mando2 layer] setBorderWidth:1.0f];
        mando2.center = CGPointMake(marco2.center.x, marco2.center.y);
        [mando2 release];
        
        sen1 = [[UILabel alloc] initWithFrame:CGRectMake(90, 70, 400, 50) ];
        sen1.backgroundColor = [UIColor clearColor];
        sen1.font = [UIFont fontWithName:@"American TypeWriter" size:(30.0)];
        sen1.textColor = [UIColor blackColor];
        sen1.text = [NSString stringWithFormat:@"Temp Sensor 1 23.5 Cº"];
        [self.view addSubview:sen1];
        [sen1 release];
        
        sen2 = [[UILabel alloc] initWithFrame:CGRectMake(90, 120, 400, 50) ];
        sen2.backgroundColor = [UIColor clearColor];
        sen2.font = [UIFont fontWithName:@"American TypeWriter" size:(30.0)];
        sen2.textColor = [UIColor blackColor];
        sen2.text = [NSString stringWithFormat:@"Temp Sensor 2 23.5 Cº"];
        [self.view addSubview:sen2];
        [sen2 release];
        
        sen3 = [[UILabel alloc] initWithFrame:CGRectMake(90, 170, 400, 50) ];
        sen3.backgroundColor = [UIColor clearColor];
        sen3.font = [UIFont fontWithName:@"American TypeWriter" size:(30.0)];
        sen3.textColor = [UIColor blackColor];
        sen3.text = [NSString stringWithFormat:@"Light Level 300"];
        [self.view addSubview:sen3];
        [sen3 release];
        
        sen4 = [[UILabel alloc] initWithFrame:CGRectMake(90, 220, 400, 50) ];
        sen4.backgroundColor = [UIColor clearColor];
        sen4.font = [UIFont fontWithName:@"American TypeWriter" size:(30.0)];
        sen4.textColor = [UIColor blackColor];
        sen4.text = [NSString stringWithFormat:@"Detected obstacle YES"];
        [self.view addSubview:sen4];
        [sen4 release];
        
        sen1Ind = [[UIView alloc] initWithFrame:CGRectMake(450, 75, 40, 40) ];
        sen1Ind.backgroundColor = [UIColor blueColor];
        [self.view addSubview:sen1Ind];
        [[sen1Ind layer] setCornerRadius:6.0f];
        [[sen1Ind layer] setBorderWidth:2.0f];
        [sen1Ind release];
        
        sen2Ind = [[UIView alloc] initWithFrame:CGRectMake(450, 125, 40, 40) ];
        sen2Ind.backgroundColor = [UIColor blueColor];
        [self.view addSubview:sen2Ind];
        [[sen2Ind layer] setCornerRadius:6.0f];
        [[sen2Ind layer] setBorderWidth:2.0f];
        [sen2Ind release];
        
        sen3Ind = [[UIView alloc] initWithFrame:CGRectMake(450, 175, 40, 40) ];
        sen3Ind.backgroundColor = [UIColor blueColor];
        [self.view addSubview:sen3Ind];
        [[sen3Ind layer] setCornerRadius:6.0f];
        [[sen3Ind layer] setBorderWidth:2.0f];
        [sen3Ind release];

        
    }
        
    
    [self.view setMultipleTouchEnabled:YES];
    
    PHOTO = NO;
    
    motor1 = 0;
    motor2 = 0;
    
    x = 50;
    y = 40;
    
    dir1 = 1;
    dir2 = 1;
    aux1 = 0;
    aux2 = 0;
    
    
    //Anteriores
    xAnt = 0;
    yAnt = 0;
    motor1Ant = 1;
    motor2Ant = 1;
    datoAnt = 20;
    dirAnt = 10;
    
    [self modo1];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}


- (void) initNetworkCommunication {
	
    if(outputStream == nil){
        CFReadStreamRef readStream;
        CFWriteStreamRef writeStream;
        CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)ip.text, 2000, &readStream, &writeStream);
        
        inputStream = (NSInputStream *)readStream;
        outputStream = (NSOutputStream *)writeStream;
        [inputStream setDelegate:self];
        [outputStream setDelegate:self];
        [inputStream scheduleInRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        [outputStream scheduleInRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        [inputStream open];
        [outputStream open];
        
        
        
        loop = [NSTimer scheduledTimerWithTimeInterval: 0.05 target:self selector:@selector (funcion) userInfo:nil repeats:YES];
    }
    
	[self modo2];
}

- (void) deleteNetworkCommunication {
    if (outputStream!=nil) {
        
        NSString *response  = [NSString stringWithFormat:@"%c", 9];
        
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
        
       
        [outputStream close];
        [inputStream close];
        [outputStream removeFromRunLoop:[NSRunLoop currentRunLoop]
                                forMode:NSDefaultRunLoopMode];
        [inputStream removeFromRunLoop:[NSRunLoop currentRunLoop]
                                forMode:NSDefaultRunLoopMode];
        [outputStream release];
        [inputStream release];
        outputStream = nil; 
        inputStream = nil;
        
        [loop invalidate];
        
    }
    
    [self modo1];
}

-(void)funcion
{
    
    NSString *response;
    NSData *data;
    
    

        if([outputStream streamStatus])
        {
            if (motor1Ant != motor1 || motor2Ant != motor2 || dir != dir) {
                
                if (motor1 == 0 || motor2 == 0) {
                    
                    if (motor1 == 0 && motor2 == 0) {
                        
                        response  = [NSString stringWithFormat:@"%c", 9];
                    }
                    
                    else
                    {
                        if (motor1 == 0) {
                            if (dir1 == 1) {
                                response = [NSString stringWithFormat:@"%c%c",7,motor2];
                            }
                            else
                            {
                                response = [NSString stringWithFormat:@"%c%c",8,motor2];
                            }
                            
                        }
                        else
                        {
                            if (dir2 == 1) {
                                response = [NSString stringWithFormat:@"%c%c",5,motor1];
                            }
                            else
                            {
                                response = [NSString stringWithFormat:@"%c%c",6,motor1];
                            }                    }
                    }
                    
                }
                
                else
                {
                    response = [NSString stringWithFormat:@"%c%c%c",dir,motor1,motor2];
                    
                }
                
                data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
                [outputStream write:[data bytes] maxLength:[data length]];
                
                motor1Ant = motor1;
                motor2Ant = motor2;
                dirAnt = dir;
                
            }
            
            
            
            if (xAnt!= x || yAnt != y) {
                
                response = [NSString stringWithFormat:@"%c%c%c",20,(int)x,(int)y];
                data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
                [outputStream write:[data bytes] maxLength:[data length]];
                
                xAnt = x;
                yAnt = y;
                
            }
            
            
           
        }

}

- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent {
    
	//NSLog(@"stream event %i", streamEvent);
	switch (streamEvent) {
            
        case NSStreamEventOpenCompleted:
			NSLog(@"Stream opened");
			break;
            
        case NSStreamEventHasBytesAvailable:
            NSLog(@"Stream Available");
            
            if (theStream == inputStream) {
                
                int len;
                
                buffer = [[NSMutableData alloc] initWithLength: 64];
                
                bytesRead = [(NSInputStream *)theStream read: [buffer mutableBytes] maxLength: 64];
                
                if (bytesRead) {
                    
                    NSString * response= [[NSString alloc] initWithData:buffer encoding:NSASCIIStringEncoding];
                    const char * cadena = [response cStringUsingEncoding:NSASCIIStringEncoding];
                    
                    [buffer release];
                    
                    //info.text = response;
                    
                    NSLog(response);
                    
                    
                    char tmp[10];
                    
                    sscanf(cadena, "%s", tmp);
                    
                    if(strcmp(tmp,"PHOTO") == 0)
                    {
                        sscanf(cadena, "PHOTO -len %d", &len);
                        
                        max_size = len;
                        
                        buffer = [[NSMutableData alloc] initWithLength: max_size];
                        
                        totalBytesRead = 0;
                        
                        bytesRead = [(NSInputStream *)theStream read: [buffer mutableBytes] maxLength: max_size];
                        
                        if (bytesRead != 0) {
                            
                            while (bytesRead > 0 && totalBytesRead + bytesRead < max_size) {
                                
                                totalBytesRead += bytesRead;
                                
                                bytesRead = [(NSInputStream *)theStream read: [buffer mutableBytes] + totalBytesRead maxLength: max_size - totalBytesRead];
                                
                                NSLog(@"%d",totalBytesRead);
                            }
                            
                            
                            if (bytesRead >= 0) {
                                totalBytesRead += bytesRead;
                            }
                            else {
                                NSLog(@"Error");
                                // read failure, report error and bail (not forgetting to release buffer)
                            }
                            
                            [buffer setLength: totalBytesRead];
                            marcoCamara.image = [UIImage imageWithData: buffer];
                            [buffer release];
                        }
                        
                    }
                    
                    else if(strcmp(tmp,"TELE") == 0)
                    {
                        float temp1;
                        float temp2;
                        int luz;
                        int obstaculo;
                        sscanf(cadena, "TELE -s1 %f -s2 %f -s3 %d -s4 %d", &temp1, &temp2, &luz, &obstaculo);
                        
                        temp1 = temp1/10.0;
                        temp2 = temp2/10.0;
                        
                        sen1.text = [NSString stringWithFormat:@"Temp Sensor 1 %.1f Cº",temp1];
                        sen2.text = [NSString stringWithFormat:@"Temp Sensor 2 %.1f Cº",temp2];
                        sen3.text = [NSString stringWithFormat:@"Light Level %d", luz];
                        
                        if (obstaculo > 100) {
                            sen4.text = [NSString stringWithFormat:@"Detected obstacle NO"];
                        }
                        else
                        {
                            sen4.text = [NSString stringWithFormat:@"Detected obstacle YES"];
                        }
                        
                        if (temp1 < 20) {
                            sen1Ind.backgroundColor = [UIColor blueColor];
                        }
                        else if (temp1 < 30)
                        {
                            sen1Ind.backgroundColor = [UIColor greenColor];
                            
                        }
                        else if (temp1 < 40)
                        {
                            sen1Ind.backgroundColor = [UIColor redColor];
                        }
                        else
                        {
                            sen1Ind.backgroundColor = [UIColor purpleColor];
                        }
                        
                        if (temp2 < 20) {
                            sen2Ind.backgroundColor = [UIColor blueColor];
                        }
                        else if (temp2 < 30)
                        {
                            sen2Ind.backgroundColor = [UIColor greenColor];
                            
                        }
                        else if (temp2 < 40)
                        {
                            sen2Ind.backgroundColor = [UIColor redColor];
                        }
                        else
                        {
                            sen2Ind.backgroundColor = [UIColor purpleColor];
                        }
                        
                        
                        
                        
                        
                        if (luz < 50) {
                            sen3Ind.backgroundColor = [UIColor blackColor];
                        }
                        else if (luz < 100)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.1 alpha:1.0];
                            
                        }
                        else if (luz < 150)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.2 alpha:1.0];
                            
                        }
                        else if (luz < 200)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1.0];
                            
                        }
                        else if (luz < 250)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.4 alpha:1.0];
                            
                        }
                        else if (luz < 300)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1.0];
                            
                        }
                        else if (luz < 350)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.6 alpha:1.0];
                            
                        }
                        else if (luz < 400)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
                            
                        }
                        else if (luz < 450)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1.0];
                            
                        }
                        else if (luz < 500)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1.0];
                            
                        }
                        else if (luz < 550)
                        {
                            sen3Ind.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0];
                            
                        }
                        else
                        {
                            sen3Ind.backgroundColor = [UIColor whiteColor];
                        }
                        
                        //info.text = [NSString stringWithFormat:@"Temp1 %.1f, Temp2 %.1f, Luz %d, Obstaculo %d", temp1, temp2, luz, obstaculo];
                        
                        
                    }
                }
                
            }
            
            
			break;
            
        case NSStreamEventErrorOccurred:
			
			NSLog(@"Can not connect to the host!");
            [self deleteNetworkCommunication];
            
			break;
			
		case NSStreamEventEndEncountered:
            
            NSLog(@"CLOSE!");
            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            [theStream release];
            theStream = nil;
            
            [loop invalidate];
			
			break;
            
		default:
			NSLog(@"Unknown event");

            
            
    }
    
}


- (IBAction) conectar:(id)sender{
    [self initNetworkCommunication];
    
}

- (IBAction) desconectar:(id)sender{
    [self deleteNetworkCommunication];
    
}

- (IBAction) luces:(id)sender{
    [self modo3];
    
}



- (IBAction) lucesON:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 15;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
    [self modo2];
    
    
}

- (IBAction) lucesOFF:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 16;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
    [self modo2];
    
    
}

- (IBAction) lucesAUTO:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 17;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
    [self modo2];
    
    
}

- (IBAction) power:(id)sender{
    [self modo5];
}

- (IBAction) powerON:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 18;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    [self modo2];
    
}

- (IBAction) powerOFF:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 19;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
    [self modo2];
    
    
}
- (IBAction) pito:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 11;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}

- (IBAction) quitarPito:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 12;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}

- (IBAction) telemetria:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 30;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
    [self modo4];
    
    
}

- (IBAction) refresh:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 30;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
    
}


- (IBAction) camara:(id)sender{
    
    if ([outputStream streamStatus]) {
        
        NSLog(@"Take a Photo");
        
        NSString *response  = [NSString stringWithFormat:@"%c", 65];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}

- (IBAction) teclado:(id)sender{
    
}

- (IBAction) goBack:(id)sender{
    
    [self modo2];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        [self touchesMoved:touches withEvent:event];
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *) event{
    
    for (UITouch *touch in touches) {
        [self dispatchTouchEvent:[touch view] toPosition:[touch locationInView:self.view]];
    }

}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        if ([touch locationInView:self.view].x< self.view.frame.size.width) {
            mando1.center = CGPointMake(mando1.center.x, marco1.center.y);
            motor2 = 0;
        }
        else
        {
            mando2.center = CGPointMake(mando2.center.x, marco2.center.y);
            motor1 = 0;
        }
    }
    
}

-(void) dispatchTouchEvent:(UIView *)theView toPosition:(CGPoint)position
{
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        if (CGRectContainsPoint([tocar1 frame], position)) {
            mando1.center = CGPointMake(mando1.center.x, position.y);
            
            aux1 = position.y - 210;
            
            if (aux1 <= 195) {
                aux1 = 200-aux1;
                dir1 = 1;
            }
            
            else if (aux1 < 205) {
                aux1 = 0;
            }
            
            else
            {
                aux1 = aux1-200;
                dir1 = 2;
            }
            
            motor2 = aux1/1.9;
            
            
        }
        else if (CGRectContainsPoint([tocar2 frame], position)) {
            mando2.center = CGPointMake(mando2.center.x, position.y);
            
            aux2 = position.y - 210;
            
            if (aux2 <= 195) {
                aux2 = 200-aux2;
                dir2 = 1;
            }
            
            else if (aux2 < 205) {
                aux2 = 0;
            }
            
            else
            {
                aux2 = aux2-200;
                dir2 = 2;
            }
            
            motor1 = aux2/1.9;
            
        }
        
        else if (CGRectContainsPoint([marcoCamara frame], position)) {
            
            mandoCamara.center = CGPointMake(position.x, position.y);
            
            x = 133-((position.x-160)/6);
            y = 70 - ((position.y-145)/7.5);
        }
        
    }
    
    else
    {
        if (CGRectContainsPoint([tocar1 frame], position)) {
            mando1.center = CGPointMake(mando1.center.x, position.y);
            
            aux1 = position.y - 70;
            
            if (aux1 <= 95) {
                aux1 = 100-aux1;
                dir1 = 1;
            }
            
            else if (aux1 < 105) {
                aux1 = 0;
            }
            
            else
            {
                aux1 = aux1-100;
                dir1 = 2;
            }
            
            motor2 = aux1*1.05;
            
            
        }
        else if (CGRectContainsPoint([tocar2 frame], position)) {
            mando2.center = CGPointMake(mando2.center.x, position.y);
            
            aux2 = position.y - 70;
            
            if (aux2 <= 100) {
                aux2 = 100-aux2;
                dir2 = 1;
            }
            
            else if (aux2 < 105) {
                aux2 = 0;
            }
            
            else
            {
                aux2 = aux2-100;
                dir2 = 2;
            }
            
            motor1 = aux2*1.05;
            
        }
        
        else if (CGRectContainsPoint([marcoCamara frame], position)) {
            
            mandoCamara.center = CGPointMake(position.x, position.y);
            
            x = 133-((position.x-110)/2.8);
            y = 70 - ((position.y-65)/4);
        }
        
    }
    
	
  
    
    if (dir1 == dir2)
    {
        if(dir1==1)
        {
            dir = 1;
        }
        else
        {
            dir = 2;
        }
    }
    else
    {
        if(dir1> dir2)
        {
            dir = 3;
        }
        else
        {
            dir = 4;
        }
    }
    

}


- (void) modo1{
    
    botonConnect.hidden = NO;
    ip.hidden = NO;
    
    botonDisconnect.hidden = YES;
    botonTelemetry.hidden = YES;
    botonON.hidden = YES;
    botonOFF.hidden = YES;
    botonCamara.hidden = YES;
    botonAUTO.hidden = YES;
    botonLights.hidden = YES;
    botonBeep.hidden = YES;
    
    
    mando1.hidden = YES;
    mando2.hidden = YES;
    mandoCamara.hidden = YES;
    
    marco1.hidden = YES;
    marco2.hidden = YES;
    marcoCamara.hidden = YES;
    
    botonBack.hidden = YES;
    botonRefresh.hidden = YES;
    
    sen1.hidden = YES;
    sen2.hidden = YES;
    sen3.hidden = YES;
    sen4.hidden = YES;
    
    sen1Ind.hidden = YES;
    sen2Ind.hidden = YES;
    sen3Ind.hidden = YES;
    
    botonPower.hidden = YES;
    botonPowerON.hidden = YES;
    botonPowerOFF.hidden = YES;
    
}

- (void) modo2{
    
    botonConnect.hidden = YES;
    ip.hidden = YES;
    
    botonDisconnect.hidden = NO;
    botonTelemetry.hidden = NO;
    botonON.hidden = YES;
    botonOFF.hidden = YES;
    botonCamara.hidden = NO;
    botonAUTO.hidden = YES;
    botonLights.hidden = NO;
    botonBeep.hidden = NO;
    
    
    mando1.hidden = NO;
    mando2.hidden = NO;
    mandoCamara.hidden = NO;
    
    marco1.hidden = NO;
    marco2.hidden = NO;
    marcoCamara.hidden = NO;
    
    botonBack.hidden = YES;
    botonRefresh.hidden = YES;
    
    sen1.hidden = YES;
    sen2.hidden = YES;
    sen3.hidden = YES;
    sen4.hidden = YES;
    
    sen1Ind.hidden = YES;
    sen2Ind.hidden = YES;
    sen3Ind.hidden = YES;
    
    botonPower.hidden = NO;
    botonPowerON.hidden = YES;
    botonPowerOFF.hidden = YES;

    
}

- (void) modo3{
    
    botonConnect.hidden = YES;
    ip.hidden = YES;
    
    botonDisconnect.hidden = YES;
    botonTelemetry.hidden = YES;
    botonON.hidden = NO;
    botonOFF.hidden = NO;
    botonCamara.hidden = YES;
    botonAUTO.hidden = NO;
    botonLights.hidden = YES;
    botonBeep.hidden = YES;
    
    
    mando1.hidden = YES;
    mando2.hidden = YES;
    mandoCamara.hidden = YES;
    
    marco1.hidden = YES;
    marco2.hidden = YES;
    marcoCamara.hidden = YES;
    
    botonBack.hidden = YES;
    botonPower.hidden = YES;
    
}

- (void) modo4{
    
    botonConnect.hidden = YES;
    ip.hidden = YES;
    
    botonDisconnect.hidden = YES;
    botonTelemetry.hidden = YES;
    botonON.hidden = YES;
    botonOFF.hidden = YES;
    botonCamara.hidden = YES;
    botonAUTO.hidden = YES;
    botonLights.hidden = YES;
    botonBeep.hidden = YES;
    
    
    mando1.hidden = YES;
    mando2.hidden = YES;
    mandoCamara.hidden = YES;
    
    marco1.hidden = YES;
    marco2.hidden = YES;
    marcoCamara.hidden = YES;
    
    botonBack.hidden = NO;
    botonRefresh.hidden = NO;
    
    sen1.hidden = NO;
    sen2.hidden = NO;
    sen3.hidden = NO;
    sen4.hidden = NO;
    
    sen1Ind.hidden = NO;
    sen2Ind.hidden = NO;
    sen3Ind.hidden = NO;
    botonPower.hidden = YES;
    
}

- (void) modo5{
    
    botonConnect.hidden = YES;
    ip.hidden = YES;
    
    botonDisconnect.hidden = YES;
    botonTelemetry.hidden = YES;
    botonCamara.hidden = YES;
    botonLights.hidden = YES;
    botonBeep.hidden = YES;
    
    
    mando1.hidden = YES;
    mando2.hidden = YES;
    mandoCamara.hidden = YES;
    
    marco1.hidden = YES;
    marco2.hidden = YES;
    marcoCamara.hidden = YES;
    
    botonPower.hidden = YES;
    botonPowerON.hidden = NO;
    botonPowerOFF.hidden = NO;
    
    
}






@end
