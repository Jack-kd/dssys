.class public Lcom/meishu/sdk/core/loader/strategy/c;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/loadbean/a;

.field public final synthetic b:Lcom/meishu/sdk/core/loader/strategy/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/c;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/c;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/c;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    :cond_0
    monitor-enter v0

    .line 14
    const/4 v1, 0x5

    .line 15
    :try_start_0
    iput v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/c;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/c;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/c;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/c;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/strategy/e;->h()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
