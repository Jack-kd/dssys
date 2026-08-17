.class Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;JLcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p3, p0, p1, p2}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/w;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/w;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/x;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/x;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$300(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    return-void
.end method

.method public onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/t;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/t;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/u;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/u;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/s;

    invoke-direct {v0, p0, p2, p3}, Lcom/fl/saas/adx/base/innterNative/s;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;J)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->this$2:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/v;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/v;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method
