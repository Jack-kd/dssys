.class Lcom/fl/saas/L0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/L0;->init(Lcom/fl/saas/K0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/L0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/L0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

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
    iget-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/L0;->c(Lcom/fl/saas/L0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/fl/saas/L0;->a(Lcom/fl/saas/L0;Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/L0;->b(Lcom/fl/saas/L0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/L0;->e(Lcom/fl/saas/L0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/fl/saas/L0;->a(Lcom/fl/saas/L0;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/L0$b;->a:Lcom/fl/saas/L0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/L0;->d(Lcom/fl/saas/L0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
