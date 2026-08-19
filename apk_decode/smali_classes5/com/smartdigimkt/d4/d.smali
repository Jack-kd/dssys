.class public final Lcom/smartdigimkt/d4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/z4/l;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/smartdigimkt/d4/d;->a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/smartdigimkt/a5/e;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/smartdigimkt/sdk/api/AdError;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getErrorInfo()Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/smartdigimkt/d4/d;->a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;

    .line 5
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object v0

    new-instance v1, Lcom/smartdigimkt/d4/f;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/smartdigimkt/a5/e;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/smartdigimkt/d4/d;->a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;

    const-string v1, ""

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object p1

    new-instance v2, Lcom/smartdigimkt/d4/f;

    invoke-direct {v2, v0, v1}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/smartdigimkt/a5/e;->b()Lcom/smartdigimkt/a5/f;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object p1

    new-instance v2, Lcom/smartdigimkt/d4/f;

    invoke-direct {v2, v0, v1}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/smartdigimkt/d4/g;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object p1

    new-instance v2, Lcom/smartdigimkt/d4/f;

    invoke-direct {v2, v0, v1}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smartdigimkt/c5/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object v2

    new-instance v3, Lcom/smartdigimkt/d4/f;

    invoke-direct {v3, v0, p1}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object p1

    new-instance v2, Lcom/smartdigimkt/d4/f;

    invoke-direct {v2, v0, v1}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    return-void
.end method
