.class public Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADMediaListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTNativeAdMediaListene"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

.field private nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field private updateTime:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;-><init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->updateTime:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 14
    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->updateTime:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->updateTime:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoClicked()V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 14
    .line 15
    int-to-long v2, v0

    .line 16
    invoke-interface {v1, v2, v3, v2, v3}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onProgressUpdate(JJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoCompleted()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->updateTime:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoError()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->updateTime:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoReady()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoStart()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->updateTime:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onVideoStop()V
    .locals 0

    return-void
.end method
