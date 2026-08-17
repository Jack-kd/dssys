.class public Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTNativeAdEventListene"


# instance fields
.field private adDataAdapter:Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;

.field private nativeADEventListener:Lcom/meishu/sdk/core/ad/image/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;Lcom/meishu/sdk/core/ad/image/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->adDataAdapter:Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->nativeADEventListener:Lcom/meishu/sdk/core/ad/image/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->nativeADEventListener:Lcom/meishu/sdk/core/ad/image/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/image/a;->onAdClicked()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    const-string v0, "onADError, code: "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", msg: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "GDTNativeAdEventListene"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->adDataAdapter:Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->getAdListener()Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->adDataAdapter:Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->getAdListener()Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public onADExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->adDataAdapter:Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->getAdListener()Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;->adDataAdapter:Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->getAdListener()Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;->onAdExposure()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onADStatusChanged()V
    .locals 2

    .line 1
    const-string v0, "GDTNativeAdEventListene"

    .line 2
    .line 3
    const-string v1, "onADStatusChanged: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
