.class public Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdMediaListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADMediaListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTNativeAdMediaListene"


# instance fields
.field private nativeAdMediaListener:Lcom/meishu/sdk/core/ad/media/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/media/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdMediaListenerImpl;->nativeAdMediaListener:Lcom/meishu/sdk/core/ad/media/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoClicked()V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdMediaListenerImpl;->nativeAdMediaListener:Lcom/meishu/sdk/core/ad/media/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/media/c;->onVideoComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 1

    .line 1
    const-string p1, "GDTNativeAdMediaListene"

    .line 2
    .line 3
    const-string v0, "onVideoError: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded(I)V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdMediaListenerImpl;->nativeAdMediaListener:Lcom/meishu/sdk/core/ad/media/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/media/c;->onVideoPause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoReady()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/media/GDTNativeAdMediaListenerImpl;->nativeAdMediaListener:Lcom/meishu/sdk/core/ad/media/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/media/c;->onVideoStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoStop()V
    .locals 0

    return-void
.end method
