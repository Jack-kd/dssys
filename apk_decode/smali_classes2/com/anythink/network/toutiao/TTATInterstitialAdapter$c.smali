.class Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->c:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->b:Ljava/util/Map;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->c:Ljava/util/Map;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 29
    .line 30
    iget v2, v2, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$c;->d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    .line 42
    .line 43
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
