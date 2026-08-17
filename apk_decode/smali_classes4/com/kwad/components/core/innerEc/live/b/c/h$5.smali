.class final Lcom/kwad/components/core/innerEc/live/b/c/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/like/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic WV:Lcom/kwad/components/core/innerEc/live/b/c/h;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/like/LikeResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 2
    .line 3
    iget p1, p1, Lcom/kwad/components/core/innerEc/live/like/LikeResponse;->likeIntervalMs:I

    .line 4
    .line 5
    int-to-long v1, p1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/kwad/components/core/innerEc/live/b/c/h;->a(Lcom/kwad/components/core/innerEc/live/b/c/h;J)J

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/h;->c(Lcom/kwad/components/core/innerEc/live/b/c/h;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/h;->a(Lcom/kwad/components/core/innerEc/live/b/c/h;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->d(Lcom/kwad/components/core/innerEc/live/b/c/h;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->e(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0
.end method

.method public final sz()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->c(Lcom/kwad/components/core/innerEc/live/b/c/h;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2}, Lcom/kwad/components/core/innerEc/live/b/c/h;->a(Lcom/kwad/components/core/innerEc/live/b/c/h;Z)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method
