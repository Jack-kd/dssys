.class public Lcom/meishu/sdk/core/utils/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/y;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/y;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/b0;->a:Lcom/meishu/sdk/core/utils/y;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/b0;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/b0;->a:Lcom/meishu/sdk/core/utils/y;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/utils/y;->onFailure(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string p1, "bad file"

    .line 2
    .line 3
    new-instance v0, Lcom/meishu/sdk/core/domain/HttpResponse;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/HttpResponse;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_6

    .line 14
    .line 15
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 26
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/b0;->b:Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    const/16 v3, 0x2000

    .line 34
    .line 35
    :try_start_3
    new-array v3, v3, [B

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, -0x1

    .line 42
    if-eq v5, v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v3

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :catchall_1
    move-exception v4

    .line 62
    goto :goto_1

    .line 63
    :catchall_2
    move-exception v2

    .line 64
    move-object v4, v2

    .line 65
    move-object v2, v3

    .line 66
    :goto_1
    move-object v7, v4

    .line 67
    move-object v4, v3

    .line 68
    move-object v3, v7

    .line 69
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/b0;->b:Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/b0;->b:Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_3
    move-exception v3

    .line 84
    goto :goto_5

    .line 85
    :catch_0
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_3
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 89
    .line 90
    .line 91
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_READ_RESPONSE_ERROR:Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 98
    .line 99
    .line 100
    const-string v3, "write file error"

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 103
    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 108
    .line 109
    .line 110
    :catchall_4
    :cond_2
    if-eqz v4, :cond_7

    .line 111
    .line 112
    :catchall_5
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 113
    .line 114
    .line 115
    goto :goto_7

    .line 116
    :goto_5
    if-eqz v2, :cond_3

    .line 117
    .line 118
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 119
    .line 120
    .line 121
    :catchall_6
    :cond_3
    if-eqz v4, :cond_4

    .line 122
    .line 123
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 124
    .line 125
    .line 126
    :catchall_7
    :cond_4
    :try_start_b
    throw v3

    .line 127
    :catchall_8
    move-exception v2

    .line 128
    goto :goto_6

    .line 129
    :cond_5
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_6
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 158
    .line 159
    .line 160
    goto :goto_7

    .line 161
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_READ_RESPONSE_ERROR:Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :catchall_9
    :cond_7
    :goto_7
    :try_start_c
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :catch_1
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :goto_8
    :try_start_d
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/b0;->a:Lcom/meishu/sdk/core/utils/y;

    .line 188
    .line 189
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/utils/y;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 190
    .line 191
    .line 192
    goto :goto_9

    .line 193
    :catchall_a
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :goto_9
    return-void
.end method
