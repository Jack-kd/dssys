.class Lcom/anythink/network/sigmob/SigmobATAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:I

.field final synthetic d:Lcom/anythink/network/sigmob/SigmobATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATAdapter;Landroid/content/Context;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->d:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput p4, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->c:I

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
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->b:Ljava/util/Map;

    .line 8
    .line 9
    new-instance v3, Lcom/anythink/network/sigmob/SigmobATAdapter$b$a;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Lcom/anythink/network/sigmob/SigmobATAdapter$b$a;-><init>(Lcom/anythink/network/sigmob/SigmobATAdapter$b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;->d:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Lcom/anythink/network/sigmob/SigmobATAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
