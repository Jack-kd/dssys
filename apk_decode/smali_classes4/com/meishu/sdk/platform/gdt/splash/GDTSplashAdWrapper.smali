.class public Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTSplashAdWrapper"


# instance fields
.field private bitmapBlur:Landroid/graphics/Bitmap;

.field private gdtSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

.field private height:I

.field private imgBitmap:Landroid/graphics/Bitmap;

.field private isVertical:Z

.field private showed:Z

.field private splashAD:Lcom/qq/e/ads/splash/SplashAD;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->width:I

    .line 6
    .line 7
    iput p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->height:I

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->imgBitmap:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->isVertical:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)Lcom/qq/e/ads/splash/SplashAD;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->reflectNewSplashAD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->loadNativeSplash()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showNativeSplash(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->gdtSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->width:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3002(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->width:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->gdtSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3102(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->height:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3202(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->imgBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3302(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->isVertical:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3402(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->bitmapBlur:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showNativeLayout(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3602(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$4900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$5800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/qq/e/ads/splash/SplashAD;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashAD;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private getImageUrl(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    const-string p1, ""

    .line 45
    .line 46
    return-object p1
.end method

.method private handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 11

    .line 1
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_root_view:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_app_name:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    sget v1, Lcom/meishu/sdk/R$id;->ms_download_layer_app_version:I

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    sget v2, Lcom/meishu/sdk/R$id;->ms_download_layer_app_size:I

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/TextView;

    .line 42
    .line 43
    sget v3, Lcom/meishu/sdk/R$id;->ms_download_layer_app_owner:I

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .line 51
    sget v4, Lcom/meishu/sdk/R$id;->ms_download_layer_app_privacy:I

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/widget/TextView;

    .line 58
    .line 59
    sget v5, Lcom/meishu/sdk/R$id;->ms_download_layer_app_permission:I

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/widget/TextView;

    .line 66
    .line 67
    sget v6, Lcom/meishu/sdk/R$id;->ms_download_layer_app_introduce:I

    .line 68
    .line 69
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppMiitInfo()Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAppName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getVersionName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPackageSizeBytes()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    const-wide/16 v9, 0x400

    .line 103
    .line 104
    div-long/2addr v7, v9

    .line 105
    mul-long/2addr v7, v9

    .line 106
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "Mb"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAuthorName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$8;

    .line 129
    .line 130
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$8;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$9;

    .line 137
    .line 138
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$9;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$10;

    .line 145
    .line 146
    invoke-direct {v0, p0, p2, p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$10;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    return-void
.end method

.method private loadNativeSplash()V
    .locals 6

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-class v3, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 36
    .line 37
    new-instance v2, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;

    .line 54
    .line 55
    invoke-direct {v5, p0, v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    if-nez v2, :cond_1

    .line 72
    .line 73
    new-instance v2, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    new-instance v4, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$3;

    .line 90
    .line 91
    invoke-direct {v4, p0, v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v1, v3, v4}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    const/4 v0, 0x1

    .line 98
    invoke-virtual {v2, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private reflectNewSplashAD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)Lcom/qq/e/ads/splash/SplashAD;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v1, v1, v2

    .line 15
    .line 16
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v4, Landroid/content/Context;

    .line 23
    .line 24
    const-class v5, Lcom/qq/e/ads/splash/SplashAD;

    .line 25
    .line 26
    const-class v6, Ljava/lang/String;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    :try_start_1
    filled-new-array {v4, v6, v1, v3, v6}, [Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    filled-new-array {p1, p2, p3, v7, p5}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    invoke-virtual {v2, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p5

    .line 50
    check-cast p5, Lcom/qq/e/ads/splash/SplashAD;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    return-object p5

    .line 53
    :catch_0
    :cond_1
    :try_start_2
    filled-new-array {v4, v6, v1, v3}, [Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    invoke-virtual {v5, p5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/qq/e/ads/splash/SplashAD;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    return-object p1

    .line 76
    :catchall_0
    return-object v0
.end method

.method private showNativeLayout(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget v4, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash:I

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v3, v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v6, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v4, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 54
    .line 55
    check-cast v4, Lcom/meishu/sdk/core/ad/splash/d;

    .line 56
    .line 57
    invoke-interface {v4, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 61
    .line 62
    check-cast v4, Lcom/meishu/sdk/core/ad/splash/d;

    .line 63
    .line 64
    invoke-interface {v4, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v4, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sget v6, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_bg:I

    .line 78
    .line 79
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Landroid/widget/ImageView;

    .line 84
    .line 85
    sget v7, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 86
    .line 87
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 92
    .line 93
    sget v7, Lcom/meishu/sdk/R$id;->ms_native_splash_ad_container:I

    .line 94
    .line 95
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    sget v8, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_shake_img:I

    .line 102
    .line 103
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 108
    .line 109
    iget-object v8, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 110
    .line 111
    sget v9, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_1:I

    .line 112
    .line 113
    invoke-static {v8, v9, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    iget-boolean v9, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->isVertical:Z

    .line 118
    .line 119
    if-eqz v9, :cond_2

    .line 120
    .line 121
    iget-object v8, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 122
    .line 123
    sget v9, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_2:I

    .line 124
    .line 125
    invoke-static {v8, v9, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    :cond_2
    const/4 v9, -0x1

    .line 130
    invoke-virtual {v7, v8, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    sget v7, Lcom/meishu/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    .line 134
    .line 135
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    sget v10, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_ll:I

    .line 142
    .line 143
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    check-cast v10, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    sget v11, Lcom/meishu/sdk/R$id;->layout_native_splash_imageview:I

    .line 150
    .line 151
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    check-cast v11, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 156
    .line 157
    sget v12, Lcom/meishu/sdk/R$id;->layout_native_splash_title:I

    .line 158
    .line 159
    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    check-cast v12, Landroid/widget/TextView;

    .line 164
    .line 165
    sget v13, Lcom/meishu/sdk/R$id;->layout_native_splash_icon:I

    .line 166
    .line 167
    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    check-cast v13, Landroid/widget/ImageView;

    .line 172
    .line 173
    sget v14, Lcom/meishu/sdk/R$id;->layout_native_splash_score:I

    .line 174
    .line 175
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    check-cast v14, Landroid/widget/ImageView;

    .line 180
    .line 181
    sget v15, Lcom/meishu/sdk/R$id;->layout_native_splash_desc:I

    .line 182
    .line 183
    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    check-cast v15, Landroid/widget/TextView;

    .line 188
    .line 189
    sget v9, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo:I

    .line 190
    .line 191
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    check-cast v9, Landroid/widget/ImageView;

    .line 196
    .line 197
    sget v5, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_cid:I

    .line 198
    .line 199
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Landroid/widget/TextView;

    .line 204
    .line 205
    move-object/from16 v16, v6

    .line 206
    .line 207
    sget v6, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 208
    .line 209
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    check-cast v6, Landroid/widget/TextView;

    .line 214
    .line 215
    iget-object v8, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    move-object/from16 v17, v11

    .line 222
    .line 223
    sget v11, Lcom/meishu/sdk/R$drawable;->ms_gdt_logo:I

    .line 224
    .line 225
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    .line 231
    .line 232
    const/16 v8, 0x8

    .line 233
    .line 234
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    new-instance v5, Lcom/meishu/sdk/core/bquery/i;

    .line 238
    .line 239
    invoke-direct {v5, v3}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v3, v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_3

    .line 250
    .line 251
    const-string v3, "\u70b9\u51fb\u8df3\u8f6c\u5230\u8be6\u60c5\u9875"

    .line 252
    .line 253
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_3
    const-string v3, "\u70b9\u51fb\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 258
    .line 259
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    :goto_0
    iget-object v3, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    const/4 v9, 0x0

    .line 273
    if-eqz v3, :cond_5

    .line 274
    .line 275
    iget-object v3, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    sget v11, Lcom/meishu/sdk/R$drawable;->ms_shake_angle:I

    .line 282
    .line 283
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 288
    .line 289
    const/high16 v18, 0x41f00000    # 30.0f

    .line 290
    .line 291
    mul-float v11, v11, v18

    .line 292
    .line 293
    float-to-int v11, v11

    .line 294
    invoke-virtual {v3, v9, v9, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    .line 296
    .line 297
    const/16 v11, 0x3c

    .line 298
    .line 299
    invoke-virtual {v6, v11, v9, v11, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 300
    .line 301
    .line 302
    const/4 v11, 0x0

    .line 303
    invoke-virtual {v6, v3, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-nez v3, :cond_4

    .line 311
    .line 312
    const-string v3, "\u70b9\u51fb\u6216\u6447\u4e00\u6447\u8df3\u8f6c\u8be6\u60c5\u9875"

    .line 313
    .line 314
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_4
    const-string v3, "\u70b9\u51fb/\u6447\u4e00\u6447\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 319
    .line 320
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    :cond_5
    :goto_1
    iget-boolean v3, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->isVertical:Z

    .line 324
    .line 325
    const-wide v18, 0x3fb1eb851eb851ecL    # 0.07

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    const-wide v20, 0x3feb851eb851eb85L    # 0.86

    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    if-eqz v3, :cond_6

    .line 336
    .line 337
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    .line 343
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 344
    .line 345
    int-to-double v8, v5

    .line 346
    mul-double v8, v8, v20

    .line 347
    .line 348
    double-to-int v5, v8

    .line 349
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 350
    .line 351
    iget v5, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->height:I

    .line 352
    .line 353
    move-object/from16 v22, v12

    .line 354
    .line 355
    int-to-double v11, v5

    .line 356
    mul-double/2addr v8, v11

    .line 357
    iget v5, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->width:I

    .line 358
    .line 359
    int-to-double v11, v5

    .line 360
    div-double/2addr v8, v11

    .line 361
    double-to-int v5, v8

    .line 362
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 363
    .line 364
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 365
    .line 366
    int-to-double v4, v4

    .line 367
    mul-double v4, v4, v18

    .line 368
    .line 369
    double-to-int v4, v4

    .line 370
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 371
    .line 372
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 373
    .line 374
    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    move-object/from16 v12, v22

    .line 378
    .line 379
    const/16 v3, 0x8

    .line 380
    .line 381
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_4

    .line 394
    .line 395
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 400
    .line 401
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 402
    .line 403
    int-to-double v8, v8

    .line 404
    mul-double v8, v8, v20

    .line 405
    .line 406
    double-to-int v8, v8

    .line 407
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 408
    .line 409
    const/4 v8, -0x2

    .line 410
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 411
    .line 412
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 413
    .line 414
    int-to-double v8, v4

    .line 415
    mul-double v8, v8, v18

    .line 416
    .line 417
    double-to-int v4, v8

    .line 418
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 419
    .line 420
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 421
    .line 422
    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-nez v3, :cond_7

    .line 434
    .line 435
    const/4 v3, 0x0

    .line 436
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    .line 445
    .line 446
    const/16 v4, 0x8

    .line 447
    .line 448
    goto :goto_2

    .line 449
    :cond_7
    const/4 v3, 0x0

    .line 450
    const/16 v4, 0x8

    .line 451
    .line 452
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    :goto_2
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    if-nez v8, :cond_8

    .line 467
    .line 468
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_8
    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    :goto_3
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    if-nez v8, :cond_9

    .line 494
    .line 495
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    iput-object v13, v5, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 499
    .line 500
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    invoke-virtual {v5, v4, v3}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 505
    .line 506
    .line 507
    goto :goto_4

    .line 508
    :cond_9
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    :goto_4
    new-instance v3, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 512
    .line 513
    iget-object v4, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 514
    .line 515
    invoke-direct {v3, v4}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    check-cast v4, Landroid/view/ViewGroup;

    .line 523
    .line 524
    if-eqz v4, :cond_a

    .line 525
    .line 526
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 531
    .line 532
    .line 533
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 534
    .line 535
    const/4 v9, -0x2

    .line 536
    const/4 v11, -0x1

    .line 537
    invoke-direct {v8, v11, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    .line 545
    .line 546
    :cond_a
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 547
    .line 548
    const/4 v5, 0x0

    .line 549
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 550
    .line 551
    .line 552
    new-instance v5, Ljava/util/ArrayList;

    .line 553
    .line 554
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .line 556
    .line 557
    iget-object v8, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 558
    .line 559
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    .line 560
    .line 561
    .line 562
    move-result v8

    .line 563
    const/4 v9, 0x1

    .line 564
    and-int/2addr v8, v9

    .line 565
    if-ne v8, v9, :cond_b

    .line 566
    .line 567
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    goto :goto_5

    .line 571
    :cond_b
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    :goto_5
    new-instance v6, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;

    .line 575
    .line 576
    invoke-direct {v6, v0, v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 577
    .line 578
    .line 579
    invoke-interface {v1, v6}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 580
    .line 581
    .line 582
    iget-object v2, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 583
    .line 584
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 585
    .line 586
    .line 587
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    const/4 v3, 0x2

    .line 592
    if-ne v2, v3, :cond_d

    .line 593
    .line 594
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 595
    .line 596
    .line 597
    new-instance v2, Lcom/qq/e/ads/nativ/MediaView;

    .line 598
    .line 599
    iget-object v3, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 600
    .line 601
    invoke-direct {v2, v3}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    if-nez v3, :cond_c

    .line 609
    .line 610
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 611
    .line 612
    const/4 v8, -0x2

    .line 613
    const/4 v11, -0x1

    .line 614
    invoke-direct {v3, v11, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 615
    .line 616
    .line 617
    goto :goto_6

    .line 618
    :cond_c
    const/4 v11, -0x1

    .line 619
    :goto_6
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 620
    .line 621
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 622
    .line 623
    invoke-virtual {v7, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .line 625
    .line 626
    new-instance v3, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 627
    .line 628
    invoke-direct {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3, v9}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3, v9}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v3, v9}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v9}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v9}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 644
    .line 645
    .line 646
    const/4 v5, 0x0

    .line 647
    invoke-virtual {v3, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    new-instance v4, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$6;

    .line 655
    .line 656
    invoke-direct {v4, v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$6;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V

    .line 657
    .line 658
    .line 659
    invoke-interface {v1, v2, v3, v4}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    .line 660
    .line 661
    .line 662
    return-void

    .line 663
    :cond_d
    iget-object v2, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->imgBitmap:Landroid/graphics/Bitmap;

    .line 664
    .line 665
    if-eqz v2, :cond_e

    .line 666
    .line 667
    iget-object v3, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->bitmapBlur:Landroid/graphics/Bitmap;

    .line 668
    .line 669
    if-eqz v3, :cond_e

    .line 670
    .line 671
    move-object/from16 v11, v17

    .line 672
    .line 673
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 674
    .line 675
    .line 676
    iget-object v1, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 677
    .line 678
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 679
    .line 680
    .line 681
    iget-object v1, v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->bitmapBlur:Landroid/graphics/Bitmap;

    .line 682
    .line 683
    const/16 v2, 0x14

    .line 684
    .line 685
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    move-object/from16 v6, v16

    .line 690
    .line 691
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :cond_e
    move-object/from16 v6, v16

    .line 696
    .line 697
    move-object/from16 v11, v17

    .line 698
    .line 699
    invoke-direct/range {p0 .. p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->getImageUrl(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    new-instance v2, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;

    .line 704
    .line 705
    invoke-direct {v2, v0, v11, v6}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/core/view/gif/GifImageView;Landroid/widget/ImageView;)V

    .line 706
    .line 707
    .line 708
    invoke-static {v1, v2, v9}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 709
    .line 710
    .line 711
    return-void
.end method

.method private showNativeSplash(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showNativeLayout(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_3

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string v0, ""

    .line 76
    .line 77
    :goto_1
    new-instance v1, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;

    .line 78
    .line 79
    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 1

    .line 1
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->setSkipView(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$11;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$11;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setOnSkipListener(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public loadAd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "expectCostPrice"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "highestLossPrice"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v1, p2, v2, v3}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v0, "winPrice"

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string p2, "lossReason"

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string p2, "adnId"

    .line 91
    .line 92
    const-string v0, "2"

    .line 93
    .line 94
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-void
.end method
