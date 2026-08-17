.class final Lcom/anythink/core/common/n/b/a/e/f$b;
.super Lcom/anythink/core/common/n/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/n/b/a/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b/a/e/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/b/a/e/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/anythink/core/common/n/b/aa;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " %s ping"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p1, p1, Lcom/anythink/core/common/n/b/a/e/f;->i:Ljava/lang/String;

    .line 23
    .line 24
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/anythink/core/common/n/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/anythink/core/common/n/b/a/e/f;->a(Lcom/anythink/core/common/n/b/a/e/f;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/anythink/core/common/n/b/a/e/f;->b(Lcom/anythink/core/common/n/b/a/e/f;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-gez v1, :cond_0

    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/anythink/core/common/n/b/a/e/f;->c(Lcom/anythink/core/common/n/b/a/e/f;)J

    .line 27
    .line 28
    .line 29
    move v1, v3

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/anythink/core/common/n/b/a/e/f;->a(Lcom/anythink/core/common/n/b/a/e/f;Ljava/io/IOException;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a/e/f$b;->a:Lcom/anythink/core/common/n/b/a/e/f;

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2, v3}, Lcom/anythink/core/common/n/b/a/e/f;->a(ZII)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0

    .line 48
    throw v1
.end method
