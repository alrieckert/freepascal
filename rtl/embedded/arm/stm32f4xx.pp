//======================================================================
// Title        : STM32F4xx Register Definitions
// Authors      : Anton Rieckert
// Email        : anton@riecktron.co.za
// Last Updated : May, 2013
// Updates      : www.riecktron.co.za
//
// Copyright (c) 2013 Anton Rieckert (anton@riecktron.co.za)
//
// Permission is hereby granted, free of charge, to any person obtaining
// a copy of this software and associated documentation files
// (the "Software"), to deal in the Software without restriction,
// including without limitation the rights to use, copy, modify, merge,
// publish, distribute, sublicense, and/or sell copies of the Software,
// and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
// BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
// ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//======================================================================
unit stm32f4xx;

{$goto on}
{$define stm32f4xx}

//======================================================================
interface

{$PACKRECORDS 2}

//======================================================================
// Peripheral base offsets
//======================================================================
const
  PeripheralBase      = $40000000;

  APB1Base            = PeripheralBase;
  APB2Base            = PeripheralBase + $00010000;
  AHB1Base            = PeripheralBase + $00020000;
  AHB2Base            = PeripheralBase + $10000000;
  AHB3Base            = PeripheralBase + $20000000;

  FSMCBase            = AHB3Base;

  FSMCBank1Base1      = FSMCBase + $00000000;
  FSMCBank1Base2      = FSMCBase + $04000000;
  FSMCBank1Base3      = FSMCBase + $08000000;
  FSMCBank1Base4      = FSMCBase + $0C000000;

  FSMCBank2Base       = FSMCBase + $10000000;
  FSMCBank3Base       = FSMCBase + $20000000;
  FSMCBank4Base       = FSMCBase + $30000000;

//======================================================================
// RCC register type definitions
//======================================================================
type
  TRCCRegisters = record
    CR         : longword;    // 0x00
    PLLCFGR    : longword;    // 0x04
    CFGR       : longword;    // 0x08
    CIR        : longword;    // 0x0C
    AHB1RSTR   : longword;    // 0x10
    AHB2RSTR   : longword;    // 0x14
    AHB3RSTR   : longword;    // 0x18
    res1       : longword;    // 0x1C
    APB1RSTR   : longword;    // 0x20
    APB2RSTR   : longword;    // 0x24
    res2       : longword;    // 0x28
    res3       : longword;    // 0x2C
    AHB1ENR    : longword;    // 0x30
    AHB2ENR    : longword;    // 0x34
    AHB3ENR    : longword;    // 0x38
    res4       : longword;    // 0x3C
    APB1ENR    : longword;    // 0x40
    APB2ENR    : longword;    // 0x44
    res5       : longword;    // 0x48
    res6       : longword;    // 0x4C
    AHB1LPENR  : longword;    // 0x50
    AHB2LPENR  : longword;    // 0x54
    AHB3LPENR  : longword;    // 0x58
    res7       : longword;    // 0x5C
    APB1LPENR  : longword;    // 0x60
    APB2LPENR  : longword;    // 0x64
    res8       : longword;    // 0x68
    res9       : longword;    // 0x6C
    BDCR       : longword;    // 0x70
    CSR        : longword;    // 0x74
    res10      : longword;    // 0x78
    res11      : longword;    // 0x7C
    SSCGR      : longword;    // 0x80
    PLLI2SCFGR : longword;    // 0x84
  end;

//======================================================================
// PORT register type definitions
//======================================================================
type
  TPortRegisters = record
    MODER    : longword;      // 0x00
    OTYPER   : longword;      // 0x04
    OSPEEDR  : longword;      // 0x08
    PUPDR    : longword;      // 0x0C
    IDR      : longword;      // 0x10
    ODR      : longword;      // 0x14
    BSRR     : longword;      // 0x18
    LCKR     : longword;      // 0x1C
    AFR      : array[0..1] of longword;    // 0x20, 0x24
  end;

//======================================================================
// USRAT register type definitions
//======================================================================
type
  TUSARTRegisters = record
    SR, res1   : word;        // 0x00
    DR, res2   : word;        // 0x04
    BRR, res3  : word;        // 0x08
    CR1, res4  : word;        // 0x0C
    CR2, res5  : word;        // 0x10
    CR3, res6  : word;        // 0x14
    GTPR, res7 : word;        // 0x18
  end;

//======================================================================
// SPI register type definitions
//======================================================================
type
  TSPIRegisters = record
    CR1, res1     : word;     //0x00
    CR2, res2     : word;     //0x04
    SR, res3      : word;     //0x08
    DR, res4      : word;     //0x0C
    CRCPR, res5   : word;     //0x10
    RXCRCR, res6  : word;     //0x14
    TXCRCR, res7  : word;     //0x18
    I2SCFGR, res8 : word;     //0x1C
    I2SPR, res9   : word;     //0x20
  end;

//======================================================================
// I2C register type definitions
//======================================================================
type
  TI2CRegisters = record
    CR1         : longword;   //0x00
    CR2         : longword;   //0x04
    OAR1, res1  : word;       //0x08
    OAR2, res2  : word;       //0x0C
    TIMINGR     : longword;   //0x10
    TIMEOUTR    : longword;   //0x14
    ISR         : longword;   //0x18
    ICR, res3   : word;       //0x1C
    PECR, res4  : word;       //0x20
    RXDR, res5  : word;       //0x24
    TXDR, res6  : word;       //0x28
  end;

//======================================================================
// FLASH register type definitions
//======================================================================
type
  TFlashRegisters = record
    ACR     : longword;       //0x00
    KEYR    : longword;       //0x04
    OPTKEYR : longword;       //0x08
    SR      : longword;       //0x0C
    CR      : longword;       //0x10
    OPTCR   : longword;       //0x14
  end;

//======================================================================
// FSMC control register type definitions
//======================================================================
type
  TFSMC = record
    BCR1  : longword;      // 0x0000    \
    BTR1  : longword;      // 0x0004     |
    BCR2  : longword;      // 0x0008     |
    BTR2  : longword;      // 0x000C     |
    BCR3  : longword;      // 0x0010     | Bank 1
    BTR3  : longword;      // 0x0014     |
    BCR4  : longword;      // 0x0018     |
    BTR4  : longword;      // 0x001C    /

    res0  : array [0..16] of longword;  // 0x0020 - 0x005C

    PCR2  : longword;      // 0x0060    \
    SR2   : longword;      // 0x0064     |
    PMEM2 : longword;      // 0x0068     |
    PATT2 : longword;      // 0x006C     | Bank 2
    res1  : longword;      // 0x0070     |
    ECCR2 : longword;      // 0x0074    /

    res2  : array [0..1] of longword;   // 0x0078 - 0x007C

    PCR3  : longword;      // 0x0080    \
    SR3   : longword;      // 0x0084     |
    PMEM3 : longword;      // 0x0088     |
    PATT3 : longword;      // 0x008C     | Bank 3
    res3  : longword;      // 0x0090     |
    ECCR3 : longword;      // 0x0094    /

    res4  : array [0..1] of longword;   // 0x0098 - 0x009C

    PCR4  : longword;      // 0x00A0    \
    SR4   : longword;      // 0x00A4     |
    PMEM4 : longword;      // 0x00A8     | Bank 4
    PATT4 : longword;      // 0x00AC     |
    PIO4  : longword;      // 0x00B0    /

    res5  : array [0..20] of longword;   // 0x00B4 - 0x0100

    BWTR1 : longword;      // 0x0104   \
    res6  : longword;      // 0x0108    |
    BWTR2 : longword;      // 0x010C    |
    res7  : longword;      // 0x0110    | Bank 1E
    BWTR3 : longword;      // 0x0114    |
    res8  : longword;      // 0x0118    |
    BWTR4 : longword;      // 0x011C   /
  end;

//======================================================================
// DMA register type definitions
//======================================================================
type
  TDMAChannel = record                    // Channel 0        // Channel 1        // Channel 2         // Channel 3        // Channel 4        // Channel 5        // Channel 6         // Channel 7
    CR         : longword;                // 0x0010           // 0x0028           // 0x0040            // 0x0058           // 0x0070           // 0x0088           // 0x00A0            // 0x00B8
    NDTR       : longword;                // 0x0014           // 0x002C           // 0x0044            // 0x005C           // 0x0074           // 0x008C           // 0x00A4            // 0x00BC
    PAR        : longword;                // 0x0018           // 0x0030           // 0x0048            // 0x0060           // 0x0078           // 0x0090           // 0x00A8            // 0x00C0
    M0AR       : longword;                // 0x001C           // 0x0034           // 0x004C            // 0x0064           // 0x007C           // 0x0094           // 0x00AC            // 0x00C4
    M1AR       : longword;                // 0x0020           // 0x0038           // 0x0050            // 0x0068           // 0x0080           // 0x0098           // 0x00B0            // 0x00C8
    FCR        : longword;                // 0x0024           // 0x003C           // 0x0054            // 0x006C           // 0x0084           // 0x009C           // 0x00B4            // 0x00CC
  end;

  TDMARegisters = record
    ISR     : array[0..1] of longword;     // 0x0000 - 0x0004
    IFCR    : array[0..1] of longword;     // 0x0008 - 0x000C
    CHANNEL : array[0..7] of TDMAChannel;
  end;

//======================================================================
// Timer register type definitions
//======================================================================
type
  TTimerRegisters = record
    CR1, res1,
    CR2, res2,
    SMCR, res3,
    DIER, res4,
    SR, res5,
    EGR, res     : word;
    CCMR1        : longword;
    CCMR2        : longword;
    CCER         : longword;
    CNT,
    PSC, res10,
    ARR, res11,
    RCR, res12,
    CCR1, res13,
    CCR2, res14,
    CCR3, res15,
    CCR4, res16,
    BDTR, res17,
    DCR, res18,
    DMAR, res19 : Word;
  end;

  TRTCRegisters = record
    CRH, res1,
    CRL, res2,
    PRLH, res3,
    PRLL, res4,
    DIVH, res5,
    DIVL, res6,
    CNTH, res7,
    CNTL, res8,
    ALRH, res9,
    ALRL, res10: Word;
    end;

    TIWDGRegisters = record
    KR, res1,
    PR, res2,
    RLR, res3,
    SR, res4: word;
    end;

    TWWDGRegisters = record
    CR, res2,
    CFR, res3,
    SR, res4: word;
    end;

    TUSBRegisters = record
    EPR: array[0..7] of longword;

    res: array[0..7] of longword;

    CNTR, res1,
    ISTR, res2,
    FNR, res3: Word;
    DADDR: byte; res4: word; res5: byte;
    BTABLE: Word;
    end;

    TUSBMem = packed array[0..511] of byte;

    TCANMailbox = record
    IR,
    DTR,
    DLR,
    DHR: longword;
    end;

    TCANRegisters = record
    MCR,
    MSR,
    TSR,
    RF0R,
    RF1R,
    IER,
    ESR,
    BTR: longword;

    res5: array[$020..$17F] of byte;

    TX: array[0..2] of TCANMailbox;
    RX: array[0..2] of TCANMailbox;

    res6: array[$1D0..$1FF] of byte;

    FMR,
    FM1R,
    res9: longword;
    FS1R, res10: word;
    res11: longword;
    FFA1R, res12: word;
    res13: longword;
    FA1R, res14: word;
    res15: array[$220..$23F] of byte;

    FOR1,
    FOR2: longword;

    FB: array[1..13] of array[1..2] of longword;
    end;

    TBKPRegisters = record
    DR: array[1..10] of record data, res: word; end;

    RTCCR,
    CR,
    CSR,
    res1,res2: longword;

    DR2: array[11..42] of record data, res: word; end;
    end;

    TPwrRegisters = record
    CR, res: word;
    CSR: Word;
    end;

    TDACRegisters = record
    CR,
    SWTRIGR: longword;

    DHR12R1, res2,
    DHR12L1, res3,
    DHR8R1, res4,
    DHR12R2, res5,
    DHR12L2, res6,
    DHR8R2, res7: word;

    DHR12RD,
    DHR12LD: longword;

    DHR8RD, res8,

    DOR1, res9,
    DOR2, res10: Word;
    end;

    TAFIORegisters = record
    EVCR,
    MAPR: longword;
    EXTICR: array[0..3] of longword;
    end;

    TEXTIRegisters = record
    IMR,
    EMR,
    RTSR,
    FTSR,
    SWIER,
    PR: longword;
    end;


    TADCRegisters = record
    SR,
    CR1,
    CR2,
    SMPR1,
    SMPR2: longword;
    JOFR1, res2,
    JOFR2, res3,
    JOFR3, res4,
    JOFR4, res5,
    HTR, res6,
    LTR, res7: word;
    SQR1,
    SQR2,
    SQR3,
    JSQR: longword;
    JDR1, res8,
    JDR2, res9,
    JDR3, res10,
    JDR4, res11: Word;
    DR: longword;
    end;

    TSDIORegisters = record
    POWER,
    CLKCR,
    ARG: longword;
    CMD, res3,
    RESPCMD, res4: Word;
    RESP1,
    RESP2,
    RESP3,
    RESP4,
    DTIMER,
    DLEN: longword;
    DCTRL, res5: word;
    DCOUNT,
    STA,
    ICR,
    MASK,
    FIFOCNT,
    FIFO: longword;
    end;


    TCRCRegisters = record
    DR: longword;
    IDR: byte; res1: word; res2: byte;
    CR: byte;
    end;

{$ALIGN 2}

//======================================================================
// Register variables definitions
//======================================================================
var
  { RCC }
  RCC : TRCCRegisters       absolute (AHB1Base + $3800);

  { Flash }
  Flash : TFlashRegisters   absolute (AHB1Base + $3C00);

  { GPIO }
  PortA : TPortRegisters    absolute (AHB1Base + $0000);
  PortB : TPortRegisters    absolute (AHB1Base + $0400);
  PortC : TPortRegisters    absolute (AHB1Base + $0800);
  PortD : TPortRegisters    absolute (AHB1Base + $0C00);
  PortE : TPortRegisters    absolute (AHB1Base + $1000);
  PortF : TPortRegisters    absolute (AHB1Base + $1400);
  PortG : TPortRegisters    absolute (AHB1Base + $1800);
  PortH : TPortRegisters    absolute (AHB1Base + $1C00);
  PortI : TPortRegisters    absolute (AHB1Base + $2000);

  { USART/UART }
  USART1 : TUSARTRegisters  absolute (APB2Base + $1000);
  USART2 : TUSARTRegisters  absolute (APB1Base + $4400);
  USART3 : TUSARTRegisters  absolute (APB1Base + $4800);
  UART4  : TUSARTRegisters  absolute (APB1Base + $4C00);
  UART5  : TUSARTRegisters  absolute (APB1Base + $5000);
  USART6 : TUSARTRegisters  absolute (APB2Base + $1400);

  { SPI }
  SPI1 : TSPIRegisters      absolute (APB2Base + $3000);
  SPI2 : TSPIRegisters      absolute (APB1Base + $3800);
  SPI3 : TSPIRegisters      absolute (APB1Base + $3C00);

  { I2C }
  I2C1 : TI2CRegisters      absolute (APB1Base + $5400);
  I2C2 : TI2CRegisters      absolute (APB1Base + $5800);
  I2C3 : TI2CRegisters      absolute (APB1Base + $5C00);

  { FSMC }
  FSMC : TFSMC              absolute (AHB3Base + $40000000);

  { DMA }
  DMA2 : TDMARegisters      absolute (AHB1Base + $6000);
  DMA2 : TDMARegisters      absolute (AHB1Base + $6400);

  { TIMER }
  Timer1  : TTimerRegisters absolute (APB2Base + $0000);
  Timer2  : TTimerRegisters absolute (APB1Base + $0000);
  Timer3  : TTimerRegisters absolute (APB1Base + $0400);
  Timer4  : TTimerRegisters absolute (APB1Base + $0800);
  Timer5  : TTimerRegisters absolute (APB1Base + $0C00);
  Timer6  : TTimerRegisters absolute (APB1Base + $1000);
  Timer7  : TTimerRegisters absolute (APB1Base + $1400);
  Timer8  : TTimerRegisters absolute (APB2Base + $0400);
  Timer9  : TTimerRegisters absolute (APB2Base + $4000);
  Timer10 : TTimerRegisters absolute (APB2Base + $4400);
  Timer11 : TTimerRegisters absolute (APB2Base + $4800);
  Timer12 : TTimerRegisters absolute (APB1Base + $1800);
  Timer13 : TTimerRegisters absolute (APB1Base + $1C00);
  Timer14 : TTimerRegisters absolute (APB1Base + $2000);

(*





  AFIO: TAFIORegisters   absolute (APB2Base+$0);
  EXTI: TEXTIRegisters   absolute (APB2Base+$0400);


  { Timers }
  Timer1: TTimerRegisters  absolute (APB2Base+$2C00);
  Timer2: TTimerRegisters  absolute (APB1Base+$0000);
  Timer3: TTimerRegisters  absolute (APB1Base+$0400);
  Timer4: TTimerRegisters  absolute (APB1Base+$0800);
  Timer5: TTimerRegisters  absolute (APB1Base+$0C00);
  Timer6: TTimerRegisters  absolute (APB1Base+$1000);
  Timer7: TTimerRegisters  absolute (APB1Base+$1400);
  Timer8: TTimerRegisters  absolute (APB2Base+$3400);

  { RTC }
  RTC: TRTCRegisters       absolute (APB1Base+$2800);

  { WDG }
  WWDG: TWWDGRegisters     absolute (APB1Base+$2C00);
  IWDG: TIWDGRegisters     absolute (APB1Base+$3000);


  { USB }
  USB: TUSBRegisters     absolute (APB1Base+$5C00);
  USBMem: TUSBMem                        absolute (APB1Base+$6000);

  { CAN }
  CAN: TCANRegisters     absolute (APB1Base+$6800);

  { BKP }
  BKP: TBKPRegisters     absolute (APB1Base+$6C00);

  { PWR }
  PWR: TPwrRegisters     absolute (APB1Base+$7000);

  { DAC }
  DAC: TDACRegisters     absolute (APB1Base+$7400);

  { ADC }
  ADC1: TADCRegisters      absolute (APB2Base+$2400);
  ADC2: TADCRegisters      absolute (APB2Base+$2800);
  ADC3: TADCRegisters      absolute (APB2Base+$3C00);

  { SDIO }
  SDIO: TSDIORegisters   absolute (APB2Base+$8000);

  { DMA }
  DMA2: TDMARegisters      absolute (AHBBase+$0000);
  DMA2: TDMARegisters      absolute (AHBBase+$0400);



  { CRC }
  CRC: TCRCRegisters     absolute (AHBBase+$3000);      *)

implementation

procedure NMI_interrupt; external name 'NMI_interrupt';
procedure Hardfault_interrupt; external name 'Hardfault_interrupt';
procedure MemManage_interrupt; external name 'MemManage_interrupt';
procedure BusFault_interrupt; external name 'BusFault_interrupt';
procedure UsageFault_interrupt; external name 'UsageFault_interrupt';
procedure SWI_interrupt; external name 'SWI_interrupt';
procedure DebugMonitor_interrupt; external name 'DebugMonitor_interrupt';
procedure PendingSV_interrupt; external name 'PendingSV_interrupt';
procedure SysTick_interrupt; external name 'SysTick_interrupt';


procedure WWDG_IRQHandler; external name 'WWDG_IRQHandler';
procedure PVD_IRQHandler; external name 'PVD_IRQHandler';
procedure TAMP_STAMP_IRQHandler; external name 'TAMP_STAMP_IRQHandler';
procedure RTC_WKUP_IRQHandler; external name 'RTC_WKUP_IRQHandler';
procedure FLASH_IRQHandler; external name 'FLASH_IRQHandler';
procedure RCC_IRQHandler; external name 'RCC_IRQHandler';
procedure EXTI0_IRQHandler; external name 'EXTI0_IRQHandler';
procedure EXTI1_IRQHandler; external name 'EXTI1_IRQHandler';
procedure EXTI2_IRQHandler; external name 'EXTI2_IRQHandler';
procedure EXTI3_IRQHandler; external name 'EXTI3_IRQHandler';
procedure EXTI4_IRQHandler; external name 'EXTI4_IRQHandler';
procedure DMA2_Stream0_IRQHandler; external name 'DMA2_Stream0_IRQHandler';
procedure DMA2_Stream1_IRQHandler; external name 'DMA2_Stream1_IRQHandler';
procedure DMA2_Stream2_IRQHandler; external name 'DMA2_Stream2_IRQHandler';
procedure DMA2_Stream3_IRQHandler; external name 'DMA2_Stream3_IRQHandler';
procedure DMA2_Stream4_IRQHandler; external name 'DMA2_Stream4_IRQHandler';
procedure DMA2_Stream5_IRQHandler; external name 'DMA2_Stream5_IRQHandler';
procedure DMA2_Stream6_IRQHandler; external name 'DMA2_Stream6_IRQHandler';
procedure ADC_IRQHandler; external name 'ADC_IRQHandler';
procedure CAN1_TX_IRQHandler; external name 'CAN1_TX_IRQHandler';
procedure CAN1_RX0_IRQHandler; external name 'CAN1_RX0_IRQHandler';
procedure CAN1_RX1_IRQHandler; external name 'CAN1_RX1_IRQHandler';
procedure CAN1_SCE_IRQHandler; external name 'CAN1_SCE_IRQHandler';
procedure EXTI9_5_IRQHandler; external name 'EXTI9_5_IRQHandler';
procedure TIM1_BRK_TIM9_IRQHandler; external name 'TIM1_BRK_TIM9_IRQHandler';
procedure TIM1_UP_TIM10_IRQHandler; external name 'TIM1_UP_TIM10_IRQHandler';
procedure TIM1_TRG_COM_TIM11_IRQHandler; external name 'TIM1_TRG_COM_TIM11_IRQHandler';
procedure TIM1_CC_IRQHandler; external name 'TIM1_CC_IRQHandler';
procedure TIM2_IRQHandler; external name 'TIM2_IRQHandler';
procedure TIM3_IRQHandler; external name 'TIM3_IRQHandler';
procedure TIM4_IRQHandler; external name 'TIM4_IRQHandler';
procedure I2C1_EV_IRQHandler; external name 'I2C1_EV_IRQHandler';
procedure I2C1_ER_IRQHandler; external name 'I2C1_ER_IRQHandler';
procedure I2C2_EV_IRQHandler; external name 'I2C2_EV_IRQHandler';
procedure I2C2_ER_IRQHandler; external name 'I2C2_ER_IRQHandler';
procedure SPI1_IRQHandler; external name 'SPI1_IRQHandler';
procedure SPI2_IRQHandler; external name 'SPI2_IRQHandler';
procedure USART1_IRQHandler; external name 'USART1_IRQHandler';
procedure USART2_IRQHandler; external name 'USART2_IRQHandler';
procedure USART3_IRQHandler; external name 'USART3_IRQHandler';
procedure EXTI15_10_IRQHandler; external name 'EXTI15_10_IRQHandler';
procedure RTC_Alarm_IRQHandler; external name 'RTC_Alarm_IRQHandler';
procedure OTG_FS_WKUP_IRQHandler; external name 'OTG_FS_WKUP_IRQHandler';
procedure TIM8_BRK_TIM12_IRQHandler; external name 'TIM8_BRK_TIM12_IRQHandler';
procedure TIM8_UP_TIM13_IRQHandler; external name 'TIM8_UP_TIM13_IRQHandler';
procedure TIM8_TRG_COM_TIM14_IRQHandler; external name 'TIM8_TRG_COM_TIM14_IRQHandler';
procedure TIM8_CC_IRQHandler; external name 'TIM8_CC_IRQHandler';
procedure DMA2_Stream7_IRQHandler; external name 'DMA2_Stream7_IRQHandler';
procedure FSMC_IRQHandler; external name 'FSMC_IRQHandler';
procedure SDIO_IRQHandler; external name 'SDIO_IRQHandler';
procedure TIM5_IRQHandler; external name 'TIM5_IRQHandler';
procedure SPI3_IRQHandler; external name 'SPI3_IRQHandler';
procedure UART4_IRQHandler; external name 'UART4_IRQHandler';
procedure UART5_IRQHandler; external name 'UART5_IRQHandler';
procedure TIM6_DAC_IRQHandler; external name 'TIM6_DAC_IRQHandler';
procedure TIM7_IRQHandler; external name 'TIM7_IRQHandler';
procedure DMA2_Stream0_IRQHandler; external name 'DMA2_Stream0_IRQHandler';
procedure DMA2_Stream1_IRQHandler; external name 'DMA2_Stream1_IRQHandler';
procedure DMA2_Stream2_IRQHandler; external name 'DMA2_Stream2_IRQHandler';
procedure DMA2_Stream3_IRQHandler; external name 'DMA2_Stream3_IRQHandler';
procedure DMA2_Stream4_IRQHandler; external name 'DMA2_Stream4_IRQHandler';
procedure ETH_IRQHandler; external name 'ETH_IRQHandler';
procedure ETH_WKUP_IRQHandler; external name 'ETH_WKUP_IRQHandler';
procedure CAN2_TX_IRQHandler; external name 'CAN2_TX_IRQHandler';
procedure CAN2_RX0_IRQHandler; external name 'CAN2_RX0_IRQHandler';
procedure CAN2_RX1_IRQHandler; external name 'CAN2_RX1_IRQHandler';
procedure CAN2_SCE_IRQHandler; external name 'CAN2_SCE_IRQHandler';
procedure OTG_FS_IRQHandler; external name 'OTG_FS_IRQHandler';
procedure DMA2_Stream5_IRQHandler; external name 'DMA2_Stream5_IRQHandler';
procedure DMA2_Stream6_IRQHandler; external name 'DMA2_Stream6_IRQHandler';
procedure DMA2_Stream7_IRQHandler; external name 'DMA2_Stream7_IRQHandler';
procedure USART6_IRQHandler; external name 'USART6_IRQHandler';
procedure I2C3_EV_IRQHandler; external name 'I2C3_EV_IRQHandler';
procedure I2C3_ER_IRQHandler; external name 'I2C3_ER_IRQHandler';
procedure OTG_HS_EP1_OUT_IRQHandler; external name 'OTG_HS_EP1_OUT_IRQHandler';
procedure OTG_HS_EP1_IN_IRQHandler; external name 'OTG_HS_EP1_IN_IRQHandler';
procedure OTG_HS_WKUP_IRQHandler; external name 'OTG_HS_WKUP_IRQHandler';
procedure OTG_HS_IRQHandler; external name 'OTG_HS_IRQHandler';
procedure DCMI_IRQHandler; external name 'DCMI_IRQHandler';
procedure CRYP_IRQHandler; external name 'CRYP_IRQHandler';
procedure HASH_RNG_IRQHandler; external name 'HASH_RNG_IRQHandler';
procedure FPU_IRQHandler; external name 'FPU_IRQHandler';

{$i cortexm4f_start.inc}

procedure Vectors; assembler; nostackframe;
label interrupt_vectors;
asm
   .section ".init.interrupt_vectors"
interrupt_vectors:
   .long _stack_top
   .long Startup
   .long NMI_interrupt
   .long Hardfault_interrupt
   .long MemManage_interrupt
   .long BusFault_interrupt
   .long UsageFault_interrupt
   .long 0
   .long 0
   .long 0
   .long 0
   .long SWI_interrupt
   .long DebugMonitor_interrupt
   .long 0
   .long PendingSV_interrupt
   .long SysTick_interrupt

   .long WWDG_IRQHandler
   .long PVD_IRQHandler
   .long TAMP_STAMP_IRQHandler
   .long RTC_WKUP_IRQHandler
   .long FLASH_IRQHandler
   .long RCC_IRQHandler
   .long EXTI0_IRQHandler
   .long EXTI1_IRQHandler
   .long EXTI2_IRQHandler
   .long EXTI3_IRQHandler
   .long EXTI4_IRQHandler
   .long DMA2_Stream0_IRQHandler
   .long DMA2_Stream1_IRQHandler
   .long DMA2_Stream2_IRQHandler
   .long DMA2_Stream3_IRQHandler
   .long DMA2_Stream4_IRQHandler
   .long DMA2_Stream5_IRQHandler
   .long DMA2_Stream6_IRQHandler
   .long ADC_IRQHandler
   .long CAN1_TX_IRQHandler
   .long CAN1_RX0_IRQHandler
   .long CAN1_RX1_IRQHandler
   .long CAN1_SCE_IRQHandler
   .long EXTI9_5_IRQHandler
   .long TIM1_BRK_TIM9_IRQHandler
   .long TIM1_UP_TIM10_IRQHandler
   .long TIM1_TRG_COM_TIM11_IRQHandler
   .long TIM1_CC_IRQHandler
   .long TIM2_IRQHandler
   .long TIM3_IRQHandler
   .long TIM4_IRQHandler
   .long I2C1_EV_IRQHandler
   .long I2C1_ER_IRQHandler
   .long I2C2_EV_IRQHandler
   .long I2C2_ER_IRQHandler
   .long SPI1_IRQHandler
   .long SPI2_IRQHandler
   .long USART1_IRQHandler
   .long USART2_IRQHandler
   .long USART3_IRQHandler
   .long EXTI15_10_IRQHandler
   .long RTC_Alarm_IRQHandler
   .long OTG_FS_WKUP_IRQHandler
   .long TIM8_BRK_TIM12_IRQHandler
   .long TIM8_UP_TIM13_IRQHandler
   .long TIM8_TRG_COM_TIM14_IRQHandler
   .long TIM8_CC_IRQHandler
   .long DMA2_Stream7_IRQHandler
   .long FSMC_IRQHandler
   .long SDIO_IRQHandler
   .long TIM5_IRQHandler
   .long SPI3_IRQHandler
   .long UART4_IRQHandler
   .long UART5_IRQHandler
   .long TIM6_DAC_IRQHandler
   .long TIM7_IRQHandler
   .long DMA2_Stream0_IRQHandler
   .long DMA2_Stream1_IRQHandler
   .long DMA2_Stream2_IRQHandler
   .long DMA2_Stream3_IRQHandler
   .long DMA2_Stream4_IRQHandler
   .long ETH_IRQHandler
   .long ETH_WKUP_IRQHandler
   .long CAN2_TX_IRQHandler
   .long CAN2_RX0_IRQHandler
   .long CAN2_RX1_IRQHandler
   .long CAN2_SCE_IRQHandler
   .long OTG_FS_IRQHandler
   .long DMA2_Stream5_IRQHandler
   .long DMA2_Stream6_IRQHandler
   .long DMA2_Stream7_IRQHandler
   .long USART6_IRQHandler
   .long I2C3_EV_IRQHandler
   .long I2C3_ER_IRQHandler
   .long OTG_HS_EP1_OUT_IRQHandler
   .long OTG_HS_EP1_IN_IRQHandler
   .long OTG_HS_WKUP_IRQHandler
   .long OTG_HS_IRQHandler
   .long DCMI_IRQHandler
   .long CRYP_IRQHandler
   .long HASH_RNG_IRQHandler
   .long FPU_IRQHandler

   .weak NMI_interrupt
   .weak Hardfault_interrupt
   .weak MemManage_interrupt
   .weak BusFault_interrupt
   .weak UsageFault_interrupt
   .weak SWI_interrupt
   .weak DebugMonitor_interrupt
   .weak PendingSV_interrupt
   .weak SysTick_interrupt

   .weak WWDG_IRQHandler
   .weak PVD_IRQHandler
   .weak TAMP_STAMP_IRQHandler
   .weak RTC_WKUP_IRQHandler
   .weak FLASH_IRQHandler
   .weak RCC_IRQHandler
   .weak EXTI0_IRQHandler
   .weak EXTI1_IRQHandler
   .weak EXTI2_IRQHandler
   .weak EXTI3_IRQHandler
   .weak EXTI4_IRQHandler
   .weak DMA2_Stream0_IRQHandler
   .weak DMA2_Stream1_IRQHandler
   .weak DMA2_Stream2_IRQHandler
   .weak DMA2_Stream3_IRQHandler
   .weak DMA2_Stream4_IRQHandler
   .weak DMA2_Stream5_IRQHandler
   .weak DMA2_Stream6_IRQHandler
   .weak ADC_IRQHandler
   .weak CAN1_TX_IRQHandler
   .weak CAN1_RX0_IRQHandler
   .weak CAN1_RX1_IRQHandler
   .weak CAN1_SCE_IRQHandler
   .weak EXTI9_5_IRQHandler
   .weak TIM1_BRK_TIM9_IRQHandler
   .weak TIM1_UP_TIM10_IRQHandler
   .weak TIM1_TRG_COM_TIM11_IRQHandler
   .weak TIM1_CC_IRQHandler
   .weak TIM2_IRQHandler
   .weak TIM3_IRQHandler
   .weak TIM4_IRQHandler
   .weak I2C1_EV_IRQHandler
   .weak I2C1_ER_IRQHandler
   .weak I2C2_EV_IRQHandler
   .weak I2C2_ER_IRQHandler
   .weak SPI1_IRQHandler
   .weak SPI2_IRQHandler
   .weak USART1_IRQHandler
   .weak USART2_IRQHandler
   .weak USART3_IRQHandler
   .weak EXTI15_10_IRQHandler
   .weak RTC_Alarm_IRQHandler
   .weak OTG_FS_WKUP_IRQHandler
   .weak TIM8_BRK_TIM12_IRQHandler
   .weak TIM8_UP_TIM13_IRQHandler
   .weak TIM8_TRG_COM_TIM14_IRQHandler
   .weak TIM8_CC_IRQHandler
   .weak DMA2_Stream7_IRQHandler
   .weak FSMC_IRQHandler
   .weak SDIO_IRQHandler
   .weak TIM5_IRQHandler
   .weak SPI3_IRQHandler
   .weak UART4_IRQHandler
   .weak UART5_IRQHandler
   .weak TIM6_DAC_IRQHandler
   .weak TIM7_IRQHandler
   .weak DMA2_Stream0_IRQHandler
   .weak DMA2_Stream1_IRQHandler
   .weak DMA2_Stream2_IRQHandler
   .weak DMA2_Stream3_IRQHandler
   .weak DMA2_Stream4_IRQHandler
   .weak ETH_IRQHandler
   .weak ETH_WKUP_IRQHandler
   .weak CAN2_TX_IRQHandler
   .weak CAN2_RX0_IRQHandler
   .weak CAN2_RX1_IRQHandler
   .weak CAN2_SCE_IRQHandler
   .weak OTG_FS_IRQHandler
   .weak DMA2_Stream5_IRQHandler
   .weak DMA2_Stream6_IRQHandler
   .weak DMA2_Stream7_IRQHandler
   .weak USART6_IRQHandler
   .weak I2C3_EV_IRQHandler
   .weak I2C3_ER_IRQHandler
   .weak OTG_HS_EP1_OUT_IRQHandler
   .weak OTG_HS_EP1_IN_IRQHandler
   .weak OTG_HS_WKUP_IRQHandler
   .weak OTG_HS_IRQHandler
   .weak DCMI_IRQHandler
   .weak CRYP_IRQHandler
   .weak HASH_RNG_IRQHandler
   .weak FPU_IRQHandler


   .set NMI_interrupt                    , HaltProc
   .set Hardfault_interrupt              , HaltProc
   .set MemManage_interrupt              , HaltProc
   .set BusFault_interrupt               , HaltProc
   .set UsageFault_interrupt             , HaltProc
   .set SWI_interrupt                    , HaltProc
   .set DebugMonitor_interrupt           , HaltProc
   .set PendingSV_interrupt              , HaltProc
   .set SysTick_interrupt                , HaltProc

   .set WWDG_IRQHandler                  , HaltProc
   .set PVD_IRQHandler                   , HaltProc
   .set TAMP_STAMP_IRQHandler            , HaltProc
   .set RTC_WKUP_IRQHandler              , HaltProc
   .set FLASH_IRQHandler                 , HaltProc
   .set RCC_IRQHandler                   , HaltProc
   .set EXTI0_IRQHandler                 , HaltProc
   .set EXTI1_IRQHandler                 , HaltProc
   .set EXTI2_IRQHandler                 , HaltProc
   .set EXTI3_IRQHandler                 , HaltProc
   .set EXTI4_IRQHandler                 , HaltProc
   .set DMA2_Stream0_IRQHandler          , HaltProc
   .set DMA2_Stream1_IRQHandler          , HaltProc
   .set DMA2_Stream2_IRQHandler          , HaltProc
   .set DMA2_Stream3_IRQHandler          , HaltProc
   .set DMA2_Stream4_IRQHandler          , HaltProc
   .set DMA2_Stream5_IRQHandler          , HaltProc
   .set DMA2_Stream6_IRQHandler          , HaltProc
   .set ADC_IRQHandler                   , HaltProc
   .set CAN1_TX_IRQHandler               , HaltProc
   .set CAN1_RX0_IRQHandler              , HaltProc
   .set CAN1_RX1_IRQHandler              , HaltProc
   .set CAN1_SCE_IRQHandler              , HaltProc
   .set EXTI9_5_IRQHandler               , HaltProc
   .set TIM1_BRK_TIM9_IRQHandler         , HaltProc
   .set TIM1_UP_TIM10_IRQHandler         , HaltProc
   .set TIM1_TRG_COM_TIM11_IRQHandler    , HaltProc
   .set TIM1_CC_IRQHandler               , HaltProc
   .set TIM2_IRQHandler                  , HaltProc
   .set TIM3_IRQHandler                  , HaltProc
   .set TIM4_IRQHandler                  , HaltProc
   .set I2C1_EV_IRQHandler               , HaltProc
   .set I2C1_ER_IRQHandler               , HaltProc
   .set I2C2_EV_IRQHandler               , HaltProc
   .set I2C2_ER_IRQHandler               , HaltProc
   .set SPI1_IRQHandler                  , HaltProc
   .set SPI2_IRQHandler                  , HaltProc
   .set USART1_IRQHandler                , HaltProc
   .set USART2_IRQHandler                , HaltProc
   .set USART3_IRQHandler                , HaltProc
   .set EXTI15_10_IRQHandler             , HaltProc
   .set RTC_Alarm_IRQHandler             , HaltProc
   .set OTG_FS_WKUP_IRQHandler           , HaltProc
   .set TIM8_BRK_TIM12_IRQHandler        , HaltProc
   .set TIM8_UP_TIM13_IRQHandler         , HaltProc
   .set TIM8_TRG_COM_TIM14_IRQHandler    , HaltProc
   .set TIM8_CC_IRQHandler               , HaltProc
   .set DMA2_Stream7_IRQHandler          , HaltProc
   .set FSMC_IRQHandler                  , HaltProc
   .set SDIO_IRQHandler                  , HaltProc
   .set TIM5_IRQHandler                  , HaltProc
   .set SPI3_IRQHandler                  , HaltProc
   .set UART4_IRQHandler                 , HaltProc
   .set UART5_IRQHandler                 , HaltProc
   .set TIM6_DAC_IRQHandler              , HaltProc
   .set TIM7_IRQHandler                  , HaltProc
   .set DMA2_Stream0_IRQHandler          , HaltProc
   .set DMA2_Stream1_IRQHandler          , HaltProc
   .set DMA2_Stream2_IRQHandler          , HaltProc
   .set DMA2_Stream3_IRQHandler          , HaltProc
   .set DMA2_Stream4_IRQHandler          , HaltProc
   .set ETH_IRQHandler                   , HaltProc
   .set ETH_WKUP_IRQHandler              , HaltProc
   .set CAN2_TX_IRQHandler               , HaltProc
   .set CAN2_RX0_IRQHandler              , HaltProc
   .set CAN2_RX1_IRQHandler              , HaltProc
   .set CAN2_SCE_IRQHandler              , HaltProc
   .set OTG_FS_IRQHandler                , HaltProc
   .set DMA2_Stream5_IRQHandler          , HaltProc
   .set DMA2_Stream6_IRQHandler          , HaltProc
   .set DMA2_Stream7_IRQHandler          , HaltProc
   .set USART6_IRQHandler                , HaltProc
   .set I2C3_EV_IRQHandler               , HaltProc
   .set I2C3_ER_IRQHandler               , HaltProc
   .set OTG_HS_EP1_OUT_IRQHandler        , HaltProc
   .set OTG_HS_EP1_IN_IRQHandler         , HaltProc
   .set OTG_HS_WKUP_IRQHandler           , HaltProc
   .set OTG_HS_IRQHandler                , HaltProc
   .set DCMI_IRQHandler                  , HaltProc
   .set CRYP_IRQHandler                  , HaltProc
   .set HASH_RNG_IRQHandler              , HaltProc
   .set FPU_IRQHandler                   , HaltProc

   .text
end;

end.
