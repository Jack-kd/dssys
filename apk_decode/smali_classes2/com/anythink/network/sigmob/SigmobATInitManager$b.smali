.class Lcom/anythink/network/sigmob/SigmobATInitManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/OnStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAds;

.field final synthetic b:Lcom/anythink/network/sigmob/SigmobATInitManager;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager;Lcom/sigmob/windad/WindAds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->a:Lcom/sigmob/windad/WindAds;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onStartFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    new-instance v1, Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager$b;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStartSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->a:Lcom/sigmob/windad/WindAds;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;Lcom/sigmob/windad/WindAds;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->a:Lcom/sigmob/windad/WindAds;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Lcom/sigmob/windad/WindAds;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 16
    .line 17
    new-instance v1, Lcom/anythink/network/sigmob/SigmobATInitManager$b$a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager$b$a;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager$b;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
