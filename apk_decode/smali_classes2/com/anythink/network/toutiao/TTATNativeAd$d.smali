.class Lcom/anythink/network/toutiao/TTATNativeAd$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeAd;


# direct methods
.method private constructor <init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/network/toutiao/TTATNativeAd;Lcom/anythink/network/toutiao/TTATNativeAd$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/anythink/network/toutiao/TTATNativeAd$d;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATNativeAd;->k(Lcom/anythink/network/toutiao/TTATNativeAd;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$d;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
