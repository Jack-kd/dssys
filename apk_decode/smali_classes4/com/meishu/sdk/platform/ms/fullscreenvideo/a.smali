.class public Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/nativ/f;",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/c;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/meishu/sdk/meishu_ad/v;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a$a;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 24
    .line 25
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 26
    .line 27
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a$a;-><init>(Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;Lcom/meishu/sdk/platform/ms/g;Lcom/meishu/sdk/core/loader/IAdLoadListener;Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iput-object v4, v1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1, v2, v0, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;Lcom/meishu/sdk/core/ad/b;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
