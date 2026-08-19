.class public final Lcom/kwad/framework/filedownloader/download/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/e$a;
    }
.end annotation


# instance fields
.field private final aAO:I

.field private final aAW:J

.field aAX:J

.field private final aAY:J

.field private final aBL:Lcom/kwad/framework/filedownloader/download/f;

.field private final aBN:I

.field private final aBd:Lcom/kwad/framework/filedownloader/b/a;

.field private final aBl:Z

.field private final aCd:Lcom/kwad/framework/filedownloader/download/c;

.field private final aCe:Lcom/kwad/framework/filedownloader/a/b;

.field private aCf:Lcom/kwad/framework/filedownloader/e/a;

.field private volatile aCg:J

.field private volatile aCh:J

.field private final apn:Ljava/lang/String;

.field private final contentLength:J

.field private volatile nJ:Z


# direct methods
.method private constructor <init>(Lcom/kwad/framework/filedownloader/a/b;Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/download/c;IIZLcom/kwad/framework/filedownloader/download/f;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aCg:J

    .line 4
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aCh:J

    .line 5
    iput-object p7, p0, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 6
    iput-object p8, p0, Lcom/kwad/framework/filedownloader/download/e;->apn:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/e;->aCe:Lcom/kwad/framework/filedownloader/a/b;

    .line 8
    iput-boolean p6, p0, Lcom/kwad/framework/filedownloader/download/e;->aBl:Z

    .line 9
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 10
    iput p5, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 11
    iput p4, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 12
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/download/b;->Cc()Lcom/kwad/framework/filedownloader/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/e;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 13
    iget-wide p3, p2, Lcom/kwad/framework/filedownloader/download/a;->aAW:J

    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 14
    iget-wide p3, p2, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 15
    iget-wide p3, p2, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 16
    iget-wide p1, p2, Lcom/kwad/framework/filedownloader/download/a;->contentLength:J

    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/download/e;->contentLength:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/framework/filedownloader/a/b;Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/download/c;IIZLcom/kwad/framework/filedownloader/download/f;Ljava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/kwad/framework/filedownloader/download/e;-><init>(Lcom/kwad/framework/filedownloader/a/b;Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/download/c;IIZLcom/kwad/framework/filedownloader/download/f;Ljava/lang/String;)V

    return-void
.end method

.method private CD()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aCg:J

    .line 8
    .line 9
    sub-long/2addr v2, v4

    .line 10
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aCh:J

    .line 11
    .line 12
    sub-long v4, v0, v4

    .line 13
    .line 14
    invoke-static {v2, v3, v4, v5}, Lcom/kwad/framework/filedownloader/f/f;->i(JJ)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/e;->sync()V

    .line 21
    .line 22
    .line 23
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aCg:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aCh:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private sync()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aCf:Lcom/kwad/framework/filedownloader/e/a;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/e/a;->Du()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 15
    .line 16
    iget v3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 17
    .line 18
    iget v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 19
    .line 20
    iget-wide v5, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 21
    .line 22
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/kwad/framework/filedownloader/b/a;->a(IIJ)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 27
    .line 28
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/download/f;->Cm()V

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v3, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 48
    .line 49
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    sub-long/2addr v5, v0

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    .line 67
    .line 68
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    const-string v1, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    .line 78
    .line 79
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z

    .line 3
    .line 4
    return-void
.end method

.method public final run()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/e;->aCe:Lcom/kwad/framework/filedownloader/a/b;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/kwad/framework/filedownloader/f/f;->b(ILcom/kwad/framework/filedownloader/a/b;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-eqz v4, :cond_d

    .line 19
    .line 20
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->contentLength:J

    .line 21
    .line 22
    cmp-long v6, v4, v2

    .line 23
    .line 24
    if-lez v6, :cond_2

    .line 25
    .line 26
    cmp-long v4, v0, v4

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 31
    .line 32
    cmp-long v2, v4, v2

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "range[%d-)"

    .line 47
    .line 48
    invoke-static {v3, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 54
    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-wide v3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 60
    .line 61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "range[%d-%d)"

    .line 70
    .line 71
    invoke-static {v3, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_0
    new-instance v3, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 76
    .line 77
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->contentLength:J

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v1, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget v5, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 94
    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    filled-new-array {v2, v4, v0, v1, v5}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    .line 104
    .line 105
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {v3, v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v3

    .line 113
    :cond_2
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/download/b;->Ce()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 125
    .line 126
    if-eqz v6, :cond_4

    .line 127
    .line 128
    if-eqz v5, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/IllegalAccessException;

    .line 132
    .line 133
    const-string v1, "can\'t using multi-download when the output stream can\'t support seek"

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object v6, v4

    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/e;->apn:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v6}, Lcom/kwad/framework/filedownloader/f/f;->cs(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/e/a;

    .line 146
    .line 147
    .line 148
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    iput-object v6, p0, Lcom/kwad/framework/filedownloader/download/e;->aCf:Lcom/kwad/framework/filedownloader/e/a;

    .line 150
    .line 151
    if-eqz v5, :cond_5

    .line 152
    .line 153
    iget-wide v7, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 154
    .line 155
    invoke-interface {v6, v7, v8}, Lcom/kwad/framework/filedownloader/e/a;->seek(J)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_5
    :goto_2
    sget-boolean v5, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 163
    .line 164
    if-eqz v5, :cond_6

    .line 165
    .line 166
    const-string v5, "start fetch(%d): range [%d, %d), seek to[%d]"

    .line 167
    .line 168
    iget v7, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 169
    .line 170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    iget-wide v8, p0, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 175
    .line 176
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    iget-wide v9, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 181
    .line 182
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    iget-wide v10, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 187
    .line 188
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-static {p0, v5, v7}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/download/e;->aCe:Lcom/kwad/framework/filedownloader/a/b;

    .line 200
    .line 201
    invoke-interface {v5}, Lcom/kwad/framework/filedownloader/a/b;->getInputStream()Ljava/io/InputStream;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const/16 v5, 0x1000

    .line 206
    .line 207
    new-array v5, v5, [B

    .line 208
    .line 209
    iget-boolean v7, p0, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .line 211
    if-eqz v7, :cond_7

    .line 212
    .line 213
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_7
    :goto_3
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    const/4 v8, -0x1

    .line 225
    if-eq v7, v8, :cond_9

    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    invoke-interface {v6, v5, v8, v7}, Lcom/kwad/framework/filedownloader/e/a;->write([BII)V

    .line 229
    .line 230
    .line 231
    iget-wide v8, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 232
    .line 233
    int-to-long v10, v7

    .line 234
    add-long/2addr v8, v10

    .line 235
    iput-wide v8, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 236
    .line 237
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 238
    .line 239
    invoke-interface {v7, v10, v11}, Lcom/kwad/framework/filedownloader/download/f;->onProgress(J)V

    .line 240
    .line 241
    .line 242
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/e;->CD()V

    .line 243
    .line 244
    .line 245
    iget-boolean v7, p0, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z

    .line 246
    .line 247
    if-nez v7, :cond_9

    .line 248
    .line 249
    iget-boolean v7, p0, Lcom/kwad/framework/filedownloader/download/e;->aBl:Z

    .line 250
    .line 251
    if-eqz v7, :cond_7

    .line 252
    .line 253
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/f;->DE()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-nez v7, :cond_8

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_8
    new-instance v0, Lcom/kwad/framework/filedownloader/exception/FileDownloadNetworkPolicyException;

    .line 261
    .line 262
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :cond_9
    if-eqz v6, :cond_a

    .line 267
    .line 268
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/e;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    .line 270
    .line 271
    :cond_a
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    .line 276
    .line 277
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 278
    .line 279
    sub-long/2addr v4, v2

    .line 280
    const-wide/16 v6, -0x1

    .line 281
    .line 282
    cmp-long v6, v0, v6

    .line 283
    .line 284
    if-eqz v6, :cond_c

    .line 285
    .line 286
    cmp-long v6, v0, v4

    .line 287
    .line 288
    if-nez v6, :cond_b

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_b
    new-instance v6, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 292
    .line 293
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 302
    .line 303
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 308
    .line 309
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 314
    .line 315
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v1, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset"

    .line 328
    .line 329
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-direct {v6, v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v6

    .line 337
    :cond_c
    :goto_4
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 338
    .line 339
    iget-object v8, p0, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 340
    .line 341
    iget-wide v9, p0, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 342
    .line 343
    iget-wide v11, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 344
    .line 345
    invoke-interface/range {v7 .. v12}, Lcom/kwad/framework/filedownloader/download/f;->a(Lcom/kwad/framework/filedownloader/download/c;JJ)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :goto_5
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :cond_d
    new-instance v0, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 357
    .line 358
    iget v1, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 359
    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iget v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 365
    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const-string v2, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    .line 375
    .line 376
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v0
.end method
