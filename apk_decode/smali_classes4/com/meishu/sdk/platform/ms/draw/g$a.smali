.class public Lcom/meishu/sdk/platform/ms/draw/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/draw/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/draw/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/draw/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g;Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->a:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 23
    .line 24
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onAdExposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->a:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/meishu/sdk/platform/ms/draw/g$a$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/draw/g$a$a;-><init>(Lcom/meishu/sdk/platform/ms/draw/g$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 2
    .line 3
    return-void
.end method

.method public onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 2
    .line 3
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 16
    .line 17
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/meishu/sdk/platform/ms/d;

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {v0, p1, p2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
