.class public Lcom/anythink/network/toutiao/TTATNativeExpressHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;,
        Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String; = "TTATNativeExpressHandler"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public startRender(Lcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    filled-new-array {v0}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 28
    .line 29
    new-instance v3, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;

    .line 30
    .line 31
    invoke-direct {v3, p0, v0, p1, v2}, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$a;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressHandler;[ILcom/anythink/network/toutiao/TTATNativeExpressHandler$RenderCallback;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
