.class public Lcom/meishu/sdk/meishu_ad/view/player/d;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation


# instance fields
.field public final a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "b"

    .line 7
    .line 8
    const-string v2, "close"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->b:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_2
    return-void
.end method

.method public getSize()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->c:Ljava/io/File;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->c:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 23
    .line 24
    iget-wide v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 25
    .line 26
    return-wide v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->e:Ljava/io/File;

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->e:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    cmp-long v1, v4, v2

    .line 48
    .line 49
    if-lez v1, :cond_1

    .line 50
    .line 51
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->e:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    return-wide v0

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->d:Ljava/io/File;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->d:Ljava/io/File;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    cmp-long v1, v4, v2

    .line 75
    .line 76
    if-lez v1, :cond_2

    .line 77
    .line 78
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->d:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-wide v0

    .line 85
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-wide v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 89
    .line 90
    const-wide/32 v3, -0x80000000

    .line 91
    .line 92
    .line 93
    cmp-long v1, v1, v3

    .line 94
    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    const-wide/16 v0, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-wide v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 101
    .line 102
    :goto_1
    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-wide v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->f:J

    .line 7
    .line 8
    cmp-long v1, p1, v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    cmp-long v1, p1, v1

    .line 20
    .line 21
    const-string v2, "b"

    .line 22
    .line 23
    if-gez v1, :cond_1

    .line 24
    .line 25
    :try_start_1
    const-string v1, "readAt from randomAccessFile"

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a:Ljava/io/RandomAccessFile;

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->a:Ljava/io/RandomAccessFile;

    .line 36
    .line 37
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->b:Ljava/io/RandomAccessFile;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    cmp-long v1, p1, v3

    .line 49
    .line 50
    if-gez v1, :cond_2

    .line 51
    .line 52
    const-string v1, "readAt from randomAccessLastMetaFile"

    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->b:Ljava/io/RandomAccessFile;

    .line 58
    .line 59
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/b;->b:Ljava/io/RandomAccessFile;

    .line 63
    .line 64
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_0
    if-lez p1, :cond_3

    .line 71
    .line 72
    return p1

    .line 73
    :catchall_0
    :cond_3
    :goto_1
    const/4 p1, -0x1

    .line 74
    return p1
.end method
