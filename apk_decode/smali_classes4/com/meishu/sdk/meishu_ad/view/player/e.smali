.class public Lcom/meishu/sdk/meishu_ad/view/player/e;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation


# instance fields
.field public final a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;-><init>(Ljava/lang/String;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/e;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

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
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/e;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "a"

    .line 7
    .line 8
    const-string v2, "close"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->i:Z

    .line 15
    .line 16
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_1
    :try_start_5
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->l:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 48
    .line 49
    invoke-interface {v1, v2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;->a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/a;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :catch_1
    move-exception v0

    .line 59
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_3
    return-void
.end method

.method public getSize()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/e;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    const-wide/32 v3, -0x80000000

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    iget-object v5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    iput-wide v5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 28
    .line 29
    iget-wide v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 30
    .line 31
    return-wide v0

    .line 32
    :catch_0
    move-exception v5

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v6, 0x0

    .line 38
    :cond_1
    :try_start_1
    iget-wide v7, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    cmp-long v7, v7, v3

    .line 41
    .line 42
    if-nez v7, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0xf

    .line 45
    .line 46
    :try_start_2
    iget-object v7, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b:Ljava/lang/Object;

    .line 47
    .line 48
    const-wide/16 v8, 0x5

    .line 49
    .line 50
    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v6

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception v7

    .line 57
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    const/16 v7, 0x4e20

    .line 61
    .line 62
    if-le v6, v7, :cond_1

    .line 63
    .line 64
    monitor-exit v5

    .line 65
    goto :goto_4

    .line 66
    :cond_2
    monitor-exit v5

    .line 67
    goto :goto_3

    .line 68
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_3
    iget-wide v5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 74
    .line 75
    cmp-long v3, v5, v3

    .line 76
    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    iget-wide v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 81
    .line 82
    :goto_4
    return-wide v1
.end method

.method public readAt(J[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/e;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-wide v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 7
    .line 8
    cmp-long v1, p1, v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->k:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    move-wide v4, p1

    .line 22
    move v6, p5

    .line 23
    invoke-interface/range {v2 .. v7}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/a;->a(Ljava/lang/String;JILjava/io/RandomAccessFile;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    move-object p1, v0

    .line 29
    goto :goto_4

    .line 30
    :cond_1
    move-wide v4, p1

    .line 31
    move v6, p5

    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    move p2, p1

    .line 34
    :goto_1
    iget-boolean p5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->i:Z

    .line 35
    .line 36
    if-nez p5, :cond_6

    .line 37
    .line 38
    iget-object p5, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    cmp-long v1, v4, v1

    .line 48
    .line 49
    if-gez v1, :cond_2

    .line 50
    .line 51
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 52
    .line 53
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 57
    .line 58
    invoke-virtual {p1, p3, p4, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;

    .line 71
    .line 72
    invoke-interface {v1, v2, v4, v5}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/a;->a(Ljava/io/RandomAccessFile;J)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;

    .line 79
    .line 80
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;

    .line 84
    .line 85
    invoke-virtual {p1, p3, p4, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    add-int/lit8 p2, p2, 0x21

    .line 91
    .line 92
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b:Ljava/lang/Object;

    .line 93
    .line 94
    const-wide/16 v2, 0x21

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 97
    .line 98
    .line 99
    :goto_2
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    if-lez p1, :cond_4

    .line 101
    .line 102
    return p1

    .line 103
    :cond_4
    const/16 p5, 0x4e20

    .line 104
    .line 105
    if-ge p2, p5, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    :try_start_2
    const-string p1, "a"

    .line 109
    .line 110
    const-string p2, "readAt timeout"

    .line 111
    .line 112
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/net/SocketTimeoutException;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :goto_3
    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_5
    const/4 p1, -0x1

    .line 127
    return p1
.end method
