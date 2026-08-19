.class Lcom/anythink/network/sigmob/SigmobATInitManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/anythink/core/api/ATBidRequestInfoListener;

.field final synthetic d:Lcom/anythink/network/sigmob/SigmobATInitManager;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->d:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->c:Lcom/anythink/core/api/ATBidRequestInfoListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->c:Lcom/anythink/core/api/ATBidRequestInfoListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "Network init error."

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onFailed(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$c;->d:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    new-instance v1, Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager$c$a;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager$c;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->c(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
