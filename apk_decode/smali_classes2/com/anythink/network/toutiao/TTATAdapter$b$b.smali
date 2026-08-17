.class Lcom/anythink/network/toutiao/TTATAdapter$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/anythink/network/toutiao/TTATAdapter$b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$b;->b:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$b;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$b;->b:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$b;->b:Lcom/anythink/network/toutiao/TTATAdapter$b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b$b;->a:Z

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v0, p1, v2, v3}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
