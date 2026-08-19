.class public Lcom/meishu/sdk/core/ad/banner/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/banner/b;


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

.field public volatile b:Z

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->c:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->b:Z

    .line 15
    .line 16
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 23
    .line 24
    new-instance v1, Lcom/meishu/sdk/core/utils/AdErrorInfo;

    .line 25
    .line 26
    sget v2, Lcom/meishu/sdk/core/utils/AdErrorInfo;->LOAD_ERROR:I

    .line 27
    .line 28
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->AD_LOAD_ERROR:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string v4, "SDK IS NOT INITED \uff01"

    .line 35
    .line 36
    invoke-direct {v1, v2, v3, v4}, Lcom/meishu/sdk/core/utils/AdErrorInfo;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 44
    .line 45
    new-instance v1, Lcom/meishu/sdk/core/utils/AdErrorInfo;

    .line 46
    .line 47
    sget v2, Lcom/meishu/sdk/core/utils/AdErrorInfo;->LOAD_ERROR:I

    .line 48
    .line 49
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->AD_LOAD_ERROR:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const-string v4, "\u6240\u6709\u5e7f\u544a\u4f4d\u52a0\u8f7d\u5931\u8d25"

    .line 56
    .line 57
    invoke-direct {v1, v2, v3, v4}, Lcom/meishu/sdk/core/utils/AdErrorInfo;-><init>(IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public onAdExposure()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 2
    .line 3
    return-void
.end method

.method public onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdReady(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->c:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->c:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/c;->a:Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;

    .line 17
    .line 18
    new-instance v1, Lcom/meishu/sdk/core/utils/AdErrorInfo;

    .line 19
    .line 20
    sget v2, Lcom/meishu/sdk/core/utils/AdErrorInfo;->RENDER_ERROR:I

    .line 21
    .line 22
    invoke-direct {v1, v2, p2, p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
