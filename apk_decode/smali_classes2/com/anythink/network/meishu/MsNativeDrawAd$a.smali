.class Lcom/anythink/network/meishu/MsNativeDrawAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/draw/DrawAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsNativeDrawAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/meishu/MsNativeDrawAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsNativeDrawAd;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsNativeDrawAd;->a(Lcom/anythink/network/meishu/MsNativeDrawAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/meishu/MsNativeDrawAd;->a(Lcom/anythink/network/meishu/MsNativeDrawAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;->getCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, p1}, Lcom/anythink/network/meishu/MsNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onAdReady(Lcom/meishu/sdk/core/ad/draw/IDrawAd;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->getDrawType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/anythink/network/meishu/MsATDrawAd;

    iget-object v2, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/anythink/network/meishu/MsATDrawAd;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/draw/IDrawAd;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v1, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    invoke-static {v3}, Lcom/anythink/network/meishu/MsNativeDrawAd;->a(Lcom/anythink/network/meishu/MsNativeDrawAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    invoke-static {v3}, Lcom/anythink/network/meishu/MsNativeDrawAd;->a(Lcom/anythink/network/meishu/MsNativeDrawAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object v3

    invoke-interface {v3, v0, p1, v1, v2}, Lcom/anythink/network/meishu/MsNativeAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;D)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    invoke-static {p1}, Lcom/anythink/network/meishu/MsNativeDrawAd;->a(Lcom/anythink/network/meishu/MsNativeDrawAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->b:Lcom/anythink/network/meishu/MsNativeDrawAd;

    invoke-static {p1}, Lcom/anythink/network/meishu/MsNativeDrawAd;->a(Lcom/anythink/network/meishu/MsNativeDrawAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "iDrawAd is not express"

    invoke-interface {p1, v0, v1}, Lcom/anythink/network/meishu/MsNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcom/anythink/network/meishu/MsNativeDrawAd$a;->onAdReady(Lcom/meishu/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method
