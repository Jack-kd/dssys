.class public Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;
.super Lcom/meishu/sdk/core/ad/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/ad/b<",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_HEIGHT:Ljava/lang/String; = "KEY_HEIGHT"

.field public static final KEY_WIDTH:Ljava/lang/String; = "KEY_WIDTH"

.field private static final TAG:Ljava/lang/String; = "FullScreenVideoAdLoader"


# instance fields
.field private fullScreenAdListenerAdapter:Lcom/meishu/sdk/core/ad/fullscreenvideo/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenAdEventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/ad/b;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p1, "FullScreenVideoAdLoader"

    .line 7
    .line 8
    const-string p2, "MsAdSlot is null"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getChannel()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/a;

    .line 41
    .line 42
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/core/ad/fullscreenvideo/a;-><init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenAdEventListener;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;->fullScreenAdListenerAdapter:Lcom/meishu/sdk/core/ad/fullscreenvideo/a;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getPid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object p3, p0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;->fullScreenAdListenerAdapter:Lcom/meishu/sdk/core/ad/fullscreenvideo/a;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/core/loader/c;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public clearErrorState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;->fullScreenAdListenerAdapter:Lcom/meishu/sdk/core/ad/fullscreenvideo/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/a;->b:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/a;->c:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public createDelegate(Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "CUSTOM"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->fullScreenVideoLoader(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->fullScreenVideoLoader(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public createMeishuAdDelegateInternal(Lcom/meishu/sdk/meishu_ad/nativ/f;)Lcom/meishu/sdk/core/loader/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/platform/ms/fullscreenvideo/a;-><init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public loadAd(FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "KEY_WIDTH"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "KEY_HEIGHT"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "KEY_TOKEN"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-super {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void
.end method
