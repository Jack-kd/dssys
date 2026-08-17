.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

.field public final d:Ljava/lang/Object;

.field public final e:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

.field public f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

.field public volatile g:J

.field public volatile h:Z

.field public volatile i:Z

.field public j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/RandomAccessFile;JLjava/lang/Object;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V
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
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->d:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->i:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->c:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

    .line 19
    .line 20
    iput-object p7, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 21
    .line 22
    move-object p6, p5

    .line 23
    move-wide p4, p3

    .line 24
    move-object p3, p2

    .line 25
    move-object p2, p1

    .line 26
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 27
    .line 28
    new-instance p7, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 29
    .line 30
    invoke-direct {p7, p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;)V

    .line 31
    .line 32
    .line 33
    invoke-direct/range {p1 .. p7}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;-><init>(Ljava/lang/String;Ljava/io/RandomAccessFile;JLjava/lang/Object;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->e:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->h:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;JILjava/io/RandomAccessFile;)V
    .locals 7

    if-nez p5, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->c:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;

    iget-wide v4, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->g:J

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;->a(Ljava/lang/String;JJI)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-wide p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->g:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->i:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, p5}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a(Ljava/io/RandomAccessFile;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    .line 5
    :try_start_0
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->i:Z

    .line 6
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    if-nez p2, :cond_1

    .line 7
    const-string p2, "c"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "start download last meta data. position:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " threadId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->b:Ljava/lang/Object;

    const/4 v6, 0x0

    move-wide v3, v2

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;-><init>(Ljava/lang/String;Ljava/io/RandomAccessFile;JLjava/lang/Object;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_2
    return-void
.end method

.method public final a(Ljava/io/RandomAccessFile;)Z
    .locals 5

    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-wide v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return v0

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public a(Ljava/io/RandomAccessFile;J)Z
    .locals 5

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a(Ljava/io/RandomAccessFile;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    if-eqz v1, :cond_1

    .line 12
    iget-wide v3, v1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->b:J

    cmp-long v1, p2, v3

    if-ltz v1, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p2, v3

    if-gez p1, :cond_1

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    return v0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->e:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
