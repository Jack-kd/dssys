.class Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->loadNativeSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

.field public final synthetic val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 28
    .line 29
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    .line 30
    .line 31
    const-string v1, "\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$2100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$2000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
