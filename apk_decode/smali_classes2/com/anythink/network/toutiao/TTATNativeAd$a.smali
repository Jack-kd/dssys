.class Lcom/anythink/network/toutiao/TTATNativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeAd;->setAdData(ZLandroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoDuration()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmpl-double v0, v0, v2

    .line 10
    .line 11
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 19
    .line 20
    long-to-double p3, p3

    .line 21
    div-double/2addr p3, v1

    .line 22
    invoke-virtual {v0, p3, p4}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoDuration(D)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 26
    .line 27
    long-to-double p1, p1

    .line 28
    div-double/2addr p1, v1

    .line 29
    iput-wide p1, p3, Lcom/anythink/network/toutiao/TTATNativeAd;->h:D

    .line 30
    .line 31
    double-to-int p1, p1

    .line 32
    invoke-virtual {p3, p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoPlayProgress(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoEnd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoError(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoVideoPlayFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method
