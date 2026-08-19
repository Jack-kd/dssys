.class public final Lcom/octopus/ad/internal/c/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/c$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/octopus/ad/internal/c/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Lcom/octopus/ad/internal/c/c$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->d:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroid/os/HandlerThread;

    .line 16
    .line 17
    const-string v1, "download"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->a:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/octopus/ad/internal/c/c$c;->a:Landroid/os/HandlerThread;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->c:Landroid/os/Handler;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c/c$c;)Lcom/octopus/ad/internal/c/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/c/c$c;->b:Lcom/octopus/ad/internal/c/c$b;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/c/c$c$3;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/c/c$c$3;-><init>(Lcom/octopus/ad/internal/c/c$c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(JJ)V
    .locals 7

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/c/c$c$1;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/octopus/ad/internal/c/c$c$1;-><init>(Lcom/octopus/ad/internal/c/c$c;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->b:Lcom/octopus/ad/internal/c/c$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/c/c$b;->a(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->d:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/octopus/ad/internal/c/c$c$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/c/c$c$2;-><init>(Lcom/octopus/ad/internal/c/c$c;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->c:Landroid/os/Handler;

    .line 12
    iput-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->a:Landroid/os/HandlerThread;

    .line 13
    iput-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->b:Lcom/octopus/ad/internal/c/c$b;

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/c$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/internal/c/c$c;->b:Lcom/octopus/ad/internal/c/c$b;

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/c$d;)V
    .locals 2

    .line 3
    iget-boolean v0, p1, Lcom/octopus/ad/internal/c/c$d;->a:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->e:Lcom/octopus/ad/internal/c/c$d;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->e:Lcom/octopus/ad/internal/c/c$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/c/c$d;->b:Z

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/internal/c/c$c;->e:Lcom/octopus/ad/internal/c/c$d;

    .line 7
    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/c$d;->a()V

    .line 8
    iget-object p1, p0, Lcom/octopus/ad/internal/c/c$c;->c:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid request,it\'s downloading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c;->e:Lcom/octopus/ad/internal/c/c$d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 5
    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->a(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/c/c$c;->a(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->a(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->b(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    :try_start_0
    new-instance v6, Ljava/net/URL;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->c(Lcom/octopus/ad/internal/c/c$d;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 81
    .line 82
    :try_start_1
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->d(Lcom/octopus/ad/internal/c/c$d;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    const-wide/16 v9, 0x0

    .line 87
    .line 88
    cmp-long v7, v7, v9

    .line 89
    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    const-string v7, "Range"

    .line 93
    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v11, "bytes="

    .line 100
    .line 101
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->d(Lcom/octopus/ad/internal/c/c$d;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v11, "-"

    .line 112
    .line 113
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    move-object v7, v4

    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :catch_0
    move-exception v1

    .line 129
    move-object v7, v4

    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_1
    :goto_0
    const-string v7, "Connection"

    .line 133
    .line 134
    const-string v8, "Keep-Alive"

    .line 135
    .line 136
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    const/16 v8, 0xc8

    .line 144
    .line 145
    if-eq v7, v8, :cond_2

    .line 146
    .line 147
    const/16 v11, 0xce

    .line 148
    .line 149
    if-eq v7, v11, :cond_2

    .line 150
    .line 151
    iput-boolean v5, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 152
    .line 153
    const/4 v1, 0x2

    .line 154
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/c/c$c;->a(I)V

    .line 155
    .line 156
    .line 157
    move-object v7, v4

    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_2
    const-string v11, "Content-Disposition"

    .line 161
    .line 162
    invoke-virtual {v6, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLengthLong()J

    .line 171
    .line 172
    .line 173
    move-result-wide v13

    .line 174
    if-ne v7, v8, :cond_3

    .line 175
    .line 176
    invoke-static {v0, v9, v10}, Lcom/octopus/ad/internal/c/c$d;->a(Lcom/octopus/ad/internal/c/c$d;J)J

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v13, v14}, Lcom/octopus/ad/internal/c/c$d;->b(Lcom/octopus/ad/internal/c/c$d;J)J

    .line 180
    .line 181
    .line 182
    :cond_3
    const-string v7, "download"

    .line 183
    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-static {v7, v8}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 203
    .line 204
    .line 205
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    const/16 v8, 0x2000

    .line 207
    .line 208
    :try_start_2
    new-array v8, v8, [B

    .line 209
    .line 210
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 211
    .line 212
    const-string v10, "rw"

    .line 213
    .line 214
    invoke-direct {v9, v2, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 215
    .line 216
    .line 217
    :try_start_3
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->d(Lcom/octopus/ad/internal/c/c$d;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v10

    .line 221
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 222
    .line 223
    .line 224
    move v2, v5

    .line 225
    :cond_4
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    const/4 v10, -0x1

    .line 230
    if-eq v4, v10, :cond_7

    .line 231
    .line 232
    add-int/2addr v2, v1

    .line 233
    invoke-virtual {v9, v8, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 234
    .line 235
    .line 236
    int-to-long v10, v4

    .line 237
    invoke-static {v0, v10, v11}, Lcom/octopus/ad/internal/c/c$d;->c(Lcom/octopus/ad/internal/c/c$d;J)J

    .line 238
    .line 239
    .line 240
    rem-int/lit8 v4, v2, 0x40

    .line 241
    .line 242
    if-nez v4, :cond_4

    .line 243
    .line 244
    iget-boolean v4, v0, Lcom/octopus/ad/internal/c/c$d;->b:Z

    .line 245
    .line 246
    if-eqz v4, :cond_5

    .line 247
    .line 248
    iput-boolean v5, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 249
    .line 250
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/c/c$c;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    .line 252
    .line 253
    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 258
    .line 259
    .line 260
    :catch_1
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 261
    .line 262
    .line 263
    :catch_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 264
    .line 265
    .line 266
    :catch_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    move-object v4, v9

    .line 272
    goto/16 :goto_7

    .line 273
    .line 274
    :catch_4
    move-exception v1

    .line 275
    move-object v4, v9

    .line 276
    goto/16 :goto_5

    .line 277
    .line 278
    :cond_5
    :try_start_7
    iget-boolean v4, v0, Lcom/octopus/ad/internal/c/c$d;->c:Z

    .line 279
    .line 280
    if-eqz v4, :cond_6

    .line 281
    .line 282
    iput-boolean v5, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 283
    .line 284
    const/4 v1, 0x6

    .line 285
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/c/c$c;->a(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 286
    .line 287
    .line 288
    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 293
    .line 294
    .line 295
    :catch_5
    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 296
    .line 297
    .line 298
    :catch_6
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 299
    .line 300
    .line 301
    :catch_7
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :cond_6
    :try_start_b
    rem-int/lit8 v4, v2, 0x10

    .line 306
    .line 307
    if-nez v4, :cond_4

    .line 308
    .line 309
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->d(Lcom/octopus/ad/internal/c/c$d;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v10

    .line 313
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$d;->e(Lcom/octopus/ad/internal/c/c$d;)J

    .line 314
    .line 315
    .line 316
    move-result-wide v12

    .line 317
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/octopus/ad/internal/c/c$c;->a(JJ)V

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 326
    .line 327
    .line 328
    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/c/c$c;->a(Ljava/io/File;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_8

    .line 333
    .line 334
    iput-boolean v5, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 335
    .line 336
    const/4 v1, 0x4

    .line 337
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/c/c$c;->a(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_8
    iput-boolean v5, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 342
    .line 343
    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/c/c$c;->b(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 344
    .line 345
    .line 346
    :goto_2
    move-object v4, v9

    .line 347
    :goto_3
    if-eqz v4, :cond_9

    .line 348
    .line 349
    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 354
    .line 355
    .line 356
    :catch_8
    :cond_9
    if-eqz v4, :cond_a

    .line 357
    .line 358
    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 359
    .line 360
    .line 361
    :catch_9
    :cond_a
    if-eqz v7, :cond_b

    .line 362
    .line 363
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 364
    .line 365
    .line 366
    :catch_a
    :cond_b
    :goto_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :catchall_2
    move-exception v0

    .line 371
    goto :goto_7

    .line 372
    :catch_b
    move-exception v1

    .line 373
    goto :goto_5

    .line 374
    :catchall_3
    move-exception v0

    .line 375
    move-object v6, v4

    .line 376
    move-object v7, v6

    .line 377
    goto :goto_7

    .line 378
    :catch_c
    move-exception v1

    .line 379
    move-object v6, v4

    .line 380
    move-object v7, v6

    .line 381
    :goto_5
    :try_start_f
    const-string v2, "OctopusAd"

    .line 382
    .line 383
    const-string v3, "An Exception Caught"

    .line 384
    .line 385
    invoke-static {v2, v3, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    iput-boolean v5, v0, Lcom/octopus/ad/internal/c/c$d;->a:Z

    .line 389
    .line 390
    const/4 v0, 0x5

    .line 391
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/c/c$c;->a(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 392
    .line 393
    .line 394
    if-eqz v4, :cond_c

    .line 395
    .line 396
    :try_start_10
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 401
    .line 402
    .line 403
    :catch_d
    :cond_c
    if-eqz v4, :cond_d

    .line 404
    .line 405
    :try_start_11
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 406
    .line 407
    .line 408
    :catch_e
    :cond_d
    if-eqz v7, :cond_e

    .line 409
    .line 410
    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 411
    .line 412
    .line 413
    :catch_f
    :cond_e
    if-eqz v6, :cond_f

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_f
    :goto_6
    return-void

    .line 417
    :goto_7
    if-eqz v4, :cond_10

    .line 418
    .line 419
    :try_start_13
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 424
    .line 425
    .line 426
    :catch_10
    :cond_10
    if-eqz v4, :cond_11

    .line 427
    .line 428
    :try_start_14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 429
    .line 430
    .line 431
    :catch_11
    :cond_11
    if-eqz v7, :cond_12

    .line 432
    .line 433
    :try_start_15
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    .line 434
    .line 435
    .line 436
    :catch_12
    :cond_12
    if-eqz v6, :cond_13

    .line 437
    .line 438
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 439
    .line 440
    .line 441
    :cond_13
    throw v0
.end method
