.class public Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTNativeAdListenerImpl"


# instance fields
.field private nativeMediaAdListener:Lcom/meishu/sdk/core/ad/media/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/media/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdListenerImpl;->nativeMediaAdListener:Lcom/meishu/sdk/core/ad/media/a;

    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdListenerImpl;->nativeMediaAdListener:Lcom/meishu/sdk/core/ad/media/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 33
    .line 34
    new-instance v2, Lcom/meishu/sdk/platform/gdt/media/GDTNativeMediaAdDataAdapter;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lcom/meishu/sdk/platform/gdt/media/GDTNativeMediaAdDataAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdListenerImpl;->nativeMediaAdListener:Lcom/meishu/sdk/core/ad/media/a;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    const-string v0, "GDTNativeAdListenerImpl"

    .line 2
    .line 3
    const-string v1, "onNoAD: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdListenerImpl;->nativeMediaAdListener:Lcom/meishu/sdk/core/ad/media/a;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
