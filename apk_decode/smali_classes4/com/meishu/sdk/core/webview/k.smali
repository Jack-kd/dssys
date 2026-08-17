.class public abstract Lcom/meishu/sdk/core/webview/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/meishu/sdk/core/webview/k;->a:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/k;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/k;->a:Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/k;->a:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    move-object v0, p0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/webview/a$a;

    .line 20
    .line 21
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/core/webview/a$a;->b:Lcom/meishu/sdk/core/webview/a;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/meishu/sdk/core/webview/listener/d;->onWebReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/a$a;->b:Lcom/meishu/sdk/core/webview/a;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/a;->f:Lcom/meishu/sdk/core/webview/listener/c;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/listener/c;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    return-void
.end method
