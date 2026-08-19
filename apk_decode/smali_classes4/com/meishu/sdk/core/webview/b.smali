.class public Lcom/meishu/sdk/core/webview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/webview/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/meishu/sdk/core/webview/b$b;

.field public c:Lcom/meishu/sdk/core/webview/b$b;

.field public d:Z

.field public volatile e:Ljava/lang/Boolean;

.field public volatile f:I


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/webview/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/core/webview/b;->d:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/meishu/sdk/core/webview/b;->e:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/b;->b:Lcom/meishu/sdk/core/webview/b$b;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/webview/b;ZI)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/b;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meishu/sdk/core/webview/b;->e:Ljava/lang/Boolean;

    .line 14
    iput p2, p0, Lcom/meishu/sdk/core/webview/b;->f:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/b;->b:Lcom/meishu/sdk/core/webview/b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v1, p1, p2}, Lcom/meishu/sdk/core/webview/b$b;->a(ZI)V

    .line 17
    iput-object v2, p0, Lcom/meishu/sdk/core/webview/b;->b:Lcom/meishu/sdk/core/webview/b$b;

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/b;->c:Lcom/meishu/sdk/core/webview/b$b;

    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v1, p1, p2}, Lcom/meishu/sdk/core/webview/b$b;->a(ZI)V

    .line 20
    iput-object v2, p0, Lcom/meishu/sdk/core/webview/b;->c:Lcom/meishu/sdk/core/webview/b$b;

    .line 21
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/webview/b$b;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/b;->c:Lcom/meishu/sdk/core/webview/b$b;

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/meishu/sdk/core/webview/b;->f:I

    invoke-interface {p1, v0, v1}, Lcom/meishu/sdk/core/webview/b$b;->a(ZI)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/b;->c:Lcom/meishu/sdk/core/webview/b$b;

    return-void

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/meishu/sdk/core/webview/b;->d:Z

    if-eqz p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/meishu/sdk/core/webview/b;->d:Z

    .line 7
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->b()I

    move-result p1

    if-lez p1, :cond_3

    .line 8
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->b()I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x3e8

    .line 9
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/meishu/sdk/core/webview/b$a;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/webview/b$a;-><init>(Lcom/meishu/sdk/core/webview/b;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
