.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->b:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->b:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 6
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;Z)Z

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;

    if-eqz v0, :cond_0

    .line 9
    check-cast v0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBufferError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->d:Lcom/meishu/sdk/meishu_ad/view/player/a;

    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/view/player/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CacheMediaPlayerHelper"

    invoke-static {v3, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->b:[Z

    aget-boolean v3, v2, v1

    if-nez v3, :cond_0

    .line 12
    aput-boolean v1, v2, v1

    .line 13
    new-instance v1, Lcom/meishu/sdk/meishu_ad/view/player/b;

    invoke-direct {v1, v0}, Lcom/meishu/sdk/meishu_ad/view/player/b;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a$d;)V

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->b:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 2
    iput-wide p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/a$d;

    invoke-virtual {p1, p3}, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;->b:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-gtz v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 41
    .line 42
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 43
    .line 44
    const-string v4, "r"

    .line 45
    .line 46
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iput-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;

    .line 60
    .line 61
    :cond_2
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :cond_3
    :goto_1
    const-string v0, "a"

    .line 64
    .line 65
    const-string v2, "changeSource error"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
