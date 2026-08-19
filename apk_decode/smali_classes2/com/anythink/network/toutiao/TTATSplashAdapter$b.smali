.class Lcom/anythink/network/toutiao/TTATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 8
    .line 9
    new-instance v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter$b;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->v(Lcom/anythink/network/toutiao/TTATSplashAdapter;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-interface {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
