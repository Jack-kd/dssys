.class public final Lcom/kwad/components/offline/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/webview/c/c;


# instance fields
.field private final ayi:Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;


# direct methods
.method public constructor <init>(Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/offline/e/a/a;->ayi:Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/offline/e/a/a;)Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/offline/e/a/a;->ayi:Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/b;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->JN()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/kwad/components/offline/e/a/a$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/kwad/components/offline/e/a/a$1;-><init>(Lcom/kwad/components/offline/e/a/a;Lcom/kwad/sdk/core/b;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/webview/c/f;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/webview/c/f;-><init>(Lcom/kwad/sdk/core/b;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/c/f;->toJson()Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/kwad/components/offline/e/a/a;->ayi:Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;->onSuccess(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/webview/c/e;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/core/webview/c/e;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/c/e;->toJson()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/kwad/components/offline/e/a/a;->ayi:Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2, p1}, Lcom/kwad/components/offline/api/tk/jsbridge/IOfflineCompoCallBackFunction;->onError(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
