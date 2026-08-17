.class Lcom/octopus/ad/utils/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a;->a(Landroid/content/Context;Lcom/octopus/ad/utils/a$b;Lcom/octopus/ad/utils/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/octopus/ad/utils/a$b;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/octopus/ad/utils/a$a;

.field final synthetic g:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/octopus/ad/utils/a$b;Ljava/io/File;Landroid/content/Context;Lcom/octopus/ad/utils/a$a;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/utils/a$1;->a:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/octopus/ad/utils/a$1;->d:Ljava/io/File;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/octopus/ad/utils/a$1;->e:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/octopus/ad/utils/a$1;->f:Lcom/octopus/ad/utils/a$a;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/octopus/ad/utils/a$1;->g:Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1;->a:Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, "_"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/octopus/ad/utils/a$b;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ".pkg"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    const-string v2, ", actual="

    .line 44
    .line 45
    const-string v3, "DvaSoUpdateDemo"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 51
    .line 52
    .line 53
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    :try_start_2
    invoke-static {v0}, Lcom/octopus/ad/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v5, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 61
    .line 62
    iget-object v5, v5, Lcom/octopus/ad/utils/a$b;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "reuse downloaded package: "

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v3, v1}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v6, "cached package md5 mismatch, redownload. expected="

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v6, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 109
    .line 110
    iget-object v6, v6, Lcom/octopus/ad/utils/a$b;->d:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v3, v1}, Lcom/octopus/ad/d/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v6, "cached package md5 check failed, redownload: "

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v6, "error: "

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v3, v1}, Lcom/octopus/ad/d/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    goto :goto_2

    .line 164
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 165
    .line 166
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/octopus/ad/utils/a$b;->c:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v1, v0}, Lcom/octopus/ad/utils/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    invoke-static {v0}, Lcom/octopus/ad/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v5, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 178
    .line 179
    iget-object v5, v5, Lcom/octopus/ad/utils/a$b;->d:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_3

    .line 186
    .line 187
    if-eqz v4, :cond_3

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v4, "cached package invalid after check, retry download once: "

    .line 195
    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v3, v1}, Lcom/octopus/ad/d/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 214
    .line 215
    iget-object v1, v1, Lcom/octopus/ad/utils/a$b;->c:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v1, v0}, Lcom/octopus/ad/utils/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v0}, Lcom/octopus/ad/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 225
    .line 226
    iget-object v3, v3, Lcom/octopus/ad/utils/a$b;->d:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_4

    .line 233
    .line 234
    invoke-static {}, Lcom/octopus/ad/utils/a;->e()Ljava/util/concurrent/ExecutorService;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v2, Lcom/octopus/ad/utils/a$1$1;

    .line 239
    .line 240
    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/utils/a$1$1;-><init>(Lcom/octopus/ad/utils/a$1;Ljava/io/File;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 248
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v4, "md5 check failed, expected="

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Lcom/octopus/ad/utils/a$1;->c:Lcom/octopus/ad/utils/a$b;

    .line 260
    .line 261
    iget-object v4, v4, Lcom/octopus/ad/utils/a$b;->d:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    :goto_2
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1;->f:Lcom/octopus/ad/utils/a$a;

    .line 281
    .line 282
    invoke-static {v1, v0}, Lcom/octopus/ad/utils/a;->a(Lcom/octopus/ad/utils/a$a;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    :goto_3
    return-void
.end method
