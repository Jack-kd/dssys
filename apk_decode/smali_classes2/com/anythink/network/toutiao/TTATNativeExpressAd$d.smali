.class Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 5
    .line 6
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->k(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v1, v0}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    return-void
.end method
