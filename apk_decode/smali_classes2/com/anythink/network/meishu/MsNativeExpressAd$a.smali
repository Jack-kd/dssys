.class Lcom/anythink/network/meishu/MsNativeExpressAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsNativeExpressAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/meishu/MsNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsNativeExpressAd;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->a:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsNativeExpressAd;->a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/meishu/MsNativeExpressAd;->a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

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

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->onAdReady(Ljava/util/List;)V

    return-void
.end method

.method public onAdReady(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 6
    invoke-interface {v7}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    new-instance v8, Lcom/anythink/network/meishu/MsATExpressAd;

    iget-object v9, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->a:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/anythink/network/meishu/MsATExpressAd;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;)V

    goto :goto_2

    .line 8
    :cond_1
    iget-object v8, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    invoke-static {v8}, Lcom/anythink/network/meishu/MsNativeExpressAd;->b(Lcom/anythink/network/meishu/MsNativeExpressAd;)I

    move-result v8

    if-nez v8, :cond_2

    .line 9
    invoke-interface {v7}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->unmute()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v7}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->mute()V

    .line 11
    :goto_1
    new-instance v8, Lcom/anythink/network/meishu/MsATFeedAd;

    iget-object v9, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->a:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/anythink/network/meishu/MsATFeedAd;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;)V

    .line 12
    :goto_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v8, v5, v2

    if-nez v8, :cond_3

    .line 13
    :try_start_0
    invoke-interface {v7}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 14
    invoke-virtual {v7}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    invoke-static {v2}, Lcom/anythink/network/meishu/MsNativeExpressAd;->a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    invoke-static {v2}, Lcom/anythink/network/meishu/MsNativeExpressAd;->a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v0, p1, v5, v6}, Lcom/anythink/network/meishu/MsNativeAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;D)V

    goto :goto_4

    .line 17
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    invoke-static {p1}, Lcom/anythink/network/meishu/MsNativeExpressAd;->a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Lcom/anythink/network/meishu/MsNativeExpressAd$a;->b:Lcom/anythink/network/meishu/MsNativeExpressAd;

    invoke-static {p1}, Lcom/anythink/network/meishu/MsNativeExpressAd;->a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "onAdReady list is null"

    invoke-interface {p1, v0, v1}, Lcom/anythink/network/meishu/MsNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method
