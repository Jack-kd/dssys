.class Lcom/sigmob/sdk/base/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/network/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/o;->al()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/o;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/o;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/o;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/o$1;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/o$1;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;)V
    .locals 2

    .line 3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sigmob/sdk/base/o;->d(Z)Z

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;->config:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;->error_message:Ljava/lang/String;

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/sigmob/sdk/base/s;

    invoke-direct {v1, p0, v0}, Lcom/sigmob/sdk/base/s;-><init>(Lcom/sigmob/sdk/base/o$1;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/o;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V

    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-static {p1}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/o;)V

    return-void
.end method

.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-static {v0}, Lcom/sigmob/sdk/base/o;->b(Lcom/sigmob/sdk/base/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/o;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-static {v0}, Lcom/sigmob/sdk/base/o;->a(Lcom/sigmob/sdk/base/o;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sigmob/sdk/base/o;->d(Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-static {v0}, Lcom/sigmob/sdk/base/o;->d(Lcom/sigmob/sdk/base/o;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/o$1;->a:Lcom/sigmob/sdk/base/o;

    invoke-static {v1}, Lcom/sigmob/sdk/base/o;->c(Lcom/sigmob/sdk/base/o;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
