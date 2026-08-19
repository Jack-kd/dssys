.class Lcom/sigmob/sdk/Sigmob$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/network/JsonRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/Sigmob;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/Sigmob;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/Sigmob;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/Sigmob$2;->a:Lcom/sigmob/sdk/Sigmob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/Sigmob$2;->a:Lcom/sigmob/sdk/Sigmob;

    invoke-static {p1}, Lcom/sigmob/sdk/Sigmob;->a(Lcom/sigmob/sdk/Sigmob;)V

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "is_request_in_eea_or_unknown"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/i;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/Sigmob$2;->a:Lcom/sigmob/sdk/Sigmob;

    invoke-static {p1}, Lcom/sigmob/sdk/Sigmob;->a(Lcom/sigmob/sdk/Sigmob;)V

    return-void
.end method
