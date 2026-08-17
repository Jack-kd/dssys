.class public Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTNativeSplashAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

.field private showed:Z

.field private skipView:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public setSkipView(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->skipView:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "GDTNativeSplashAd"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "adView="

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->showed:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->skipView:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    return-void
.end method
