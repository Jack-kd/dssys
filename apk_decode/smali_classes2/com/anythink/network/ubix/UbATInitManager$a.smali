.class Lcom/anythink/network/ubix/UbATInitManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/AdLoadCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATInitManager;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATInitManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATInitManager$a;->a:Lcom/anythink/network/ubix/UbATInitManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const-string p1, "unknown"

    .line 17
    .line 18
    :goto_1
    invoke-static {}, Lcom/anythink/network/ubix/UbATInitManager;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInitManager$a;->a:Lcom/anythink/network/ubix/UbATInitManager;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v1, v2, v0, p1}, Lcom/anythink/network/ubix/UbATInitManager;->a(Lcom/anythink/network/ubix/UbATInitManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/anythink/network/ubix/UbATInitManager;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInitManager$a;->a:Lcom/anythink/network/ubix/UbATInitManager;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/anythink/network/ubix/UbATInitManager;->mHasInit:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInitManager$a;->a:Lcom/anythink/network/ubix/UbATInitManager;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2, v2}, Lcom/anythink/network/ubix/UbATInitManager;->a(Lcom/anythink/network/ubix/UbATInitManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
