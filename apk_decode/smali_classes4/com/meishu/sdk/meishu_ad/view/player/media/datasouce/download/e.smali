.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;


# static fields
.field public static final synthetic o:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/io/RandomAccessFile;

.field public e:Ljava/io/RandomAccessFile;

.field public f:Ljava/io/File;

.field public g:Ljava/io/File;

.field public h:Ljava/io/File;

.field public final i:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

.field public volatile j:J

.field public k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

.field public l:J

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V
    .locals 2

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
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->c:Ljava/lang/Object;

    .line 24
    .line 25
    const-wide/32 v0, -0x80000000

    .line 26
    .line 27
    .line 28
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->j:J

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->m:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->i:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 47
    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->f:Ljava/io/File;

    .line 55
    .line 56
    const-string p2, "temp"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    .line 63
    .line 64
    const-string p2, "last_meta_temp"

    .line 65
    .line 66
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->h:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :goto_0
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d:Ljava/io/RandomAccessFile;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->e:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 30
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_1
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->e:Ljava/io/RandomAccessFile;

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 24
    iget-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->l:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->l:J

    :cond_0
    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/h$a;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->b()V

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_2
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;JILjava/io/RandomAccessFile;)V
    .locals 12

    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    if-eqz v0, :cond_0

    .line 12
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->e:Ljava/io/RandomAccessFile;

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a(Ljava/lang/String;JILjava/io/RandomAccessFile;)V

    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->l:J

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    if-nez v0, :cond_1

    .line 17
    const-string v0, "e"

    const-string v2, "re download"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    if-eqz v6, :cond_2

    .line 20
    iget-object v11, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->e:Ljava/io/RandomAccessFile;

    move-object v7, p1

    move-wide v8, p2

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a(Ljava/lang/String;JILjava/io/RandomAccessFile;)V

    .line 21
    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_3
    return-void

    .line 22
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/io/RandomAccessFile;J)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a(Ljava/io/RandomAccessFile;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->j:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->j:J

    invoke-interface {p1, v0, v1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a(J)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->close()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->a()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 27
    .line 28
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "e"

    .line 14
    .line 15
    const-string v1, "listeners is`not empty"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public d()V
    .locals 9

    .line 1
    const-string v0, "rw"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->f:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const-string v4, "e"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->f:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    cmp-long v1, v5, v2

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    const-string v0, "file exists"

    .line 26
    .line 27
    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v0, "downloader is`not null"

    .line 38
    .line 39
    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v1, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d:Ljava/io/RandomAccessFile;

    .line 51
    .line 52
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 53
    .line 54
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->h:Ljava/io/File;

    .line 55
    .line 56
    invoke-direct {v1, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->e:Ljava/io/RandomAccessFile;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    :cond_2
    const-string v0, "start download"

    .line 76
    .line 77
    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 81
    .line 82
    move-wide v4, v2

    .line 83
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->m:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d:Ljava/io/RandomAccessFile;

    .line 86
    .line 87
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->a:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->i:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

    .line 90
    .line 91
    new-instance v8, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;

    .line 92
    .line 93
    invoke-direct {v8, p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;)V

    .line 94
    .line 95
    .line 96
    invoke-direct/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;-><init>(Ljava/lang/String;Ljava/io/RandomAccessFile;JLjava/lang/Object;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    return-void

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->c()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b()V

    .line 109
    .line 110
    .line 111
    return-void
.end method
