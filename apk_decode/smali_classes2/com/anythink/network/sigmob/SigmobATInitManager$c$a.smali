.class Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager$c;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInitManager$c;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/anythink/network/sigmob/SigmobBidRequestInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager$c;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->a:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->b:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/anythink/network/sigmob/SigmobBidRequestInfo;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobBidRequestInfo;->isValid()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager$c;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->c:Lcom/anythink/core/api/ATBidRequestInfoListener;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v1, "Network BidToken or Custom bid info is Empty."

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onFailed(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager$c;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->c:Lcom/anythink/core/api/ATBidRequestInfoListener;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v1, v0}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onSuccess(Lcom/anythink/core/api/ATBidRequestInfo;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
