.class Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, v0, p2}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoVideoPlayFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoEnd()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V
    .locals 0

    return-void
.end method

.method public onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;->a:Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoStart()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
