.class Lcom/octopus/ad/internal/utilities/ImageManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/ImageManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/ImageManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "An Exception Caught"

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 9
    .line 10
    iget-object v4, v4, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 20
    .line 21
    :try_start_1
    const-string v4, "GET"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v4, 0x7d0

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v5, 0xc8

    .line 36
    .line 37
    if-ne v4, v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 43
    :try_start_2
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v6, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 48
    .line 49
    iget-object v6, v6, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 50
    .line 51
    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$200(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    new-instance v7, Lcom/octopus/ad/internal/utilities/ImageManager$1$1$1;

    .line 56
    .line 57
    invoke-direct {v7, p0, v5}, Lcom/octopus/ad/internal/utilities/ImageManager$1$1$1;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager$1$1;Landroid/graphics/Bitmap;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 64
    .line 65
    iget-object v6, v6, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 66
    .line 67
    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$000(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroidx/collection/LruCache;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v7, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 72
    .line 73
    iget-object v7, v7, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v7, v5}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    if-eqz v6, :cond_1

    .line 83
    .line 84
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    if-eqz v6, :cond_1

    .line 93
    .line 94
    new-instance v6, Ljava/io/File;

    .line 95
    .line 96
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$300()Ljava/lang/ref/SoftReference;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v7}, Lcom/octopus/ad/d/b/c;->c(Landroid/content/Context;)Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iget-object v8, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 111
    .line 112
    iget-object v8, v8, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$imgUrl:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v8}, Lcom/octopus/ad/internal/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v7, Ljava/io/FileOutputStream;

    .line 122
    .line 123
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .line 125
    .line 126
    :try_start_3
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 127
    .line 128
    const/16 v6, 0x64

    .line 129
    .line 130
    invoke-virtual {v5, v2, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    move-object v2, v7

    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v2

    .line 136
    goto :goto_5

    .line 137
    :catch_0
    move-object v2, v7

    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception v5

    .line 140
    move-object v7, v2

    .line 141
    move-object v2, v5

    .line 142
    goto :goto_5

    .line 143
    :catchall_2
    move-exception v4

    .line 144
    move-object v7, v2

    .line 145
    move-object v2, v4

    .line 146
    move-object v4, v7

    .line 147
    goto :goto_5

    .line 148
    :catch_1
    move-object v4, v2

    .line 149
    goto :goto_3

    .line 150
    :cond_0
    move-object v4, v2

    .line 151
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 152
    .line 153
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_2
    move-exception v2

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 162
    .line 163
    .line 164
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :goto_2
    invoke-static {v1, v0, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_3
    move-exception v3

    .line 173
    move-object v4, v2

    .line 174
    move-object v7, v4

    .line 175
    move-object v2, v3

    .line 176
    move-object v3, v7

    .line 177
    goto :goto_5

    .line 178
    :catch_3
    move-object v3, v2

    .line 179
    move-object v4, v3

    .line 180
    :catch_4
    :goto_3
    :try_start_5
    iget-object v5, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    .line 181
    .line 182
    iget-object v5, v5, Lcom/octopus/ad/internal/utilities/ImageManager$1;->this$0:Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 183
    .line 184
    invoke-static {v5}, Lcom/octopus/ad/internal/utilities/ImageManager;->access$200(Lcom/octopus/ad/internal/utilities/ImageManager;)Landroid/os/Handler;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    new-instance v6, Lcom/octopus/ad/internal/utilities/ImageManager$1$1$2;

    .line 189
    .line 190
    invoke-direct {v6, p0}, Lcom/octopus/ad/internal/utilities/ImageManager$1$1$2;-><init>(Lcom/octopus/ad/internal/utilities/ImageManager$1$1;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    .line 195
    .line 196
    if-eqz v2, :cond_4

    .line 197
    .line 198
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    .line 200
    .line 201
    :cond_4
    if-eqz v4, :cond_5

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 204
    .line 205
    .line 206
    :cond_5
    if-eqz v3, :cond_6

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 209
    .line 210
    .line 211
    :cond_6
    :goto_4
    return-void

    .line 212
    :goto_5
    if-eqz v7, :cond_7

    .line 213
    .line 214
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :catch_5
    move-exception v3

    .line 219
    goto :goto_7

    .line 220
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 223
    .line 224
    .line 225
    :cond_8
    if-eqz v3, :cond_9

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 228
    .line 229
    .line 230
    goto :goto_8

    .line 231
    :goto_7
    invoke-static {v1, v0, v3}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_8
    throw v2
.end method
