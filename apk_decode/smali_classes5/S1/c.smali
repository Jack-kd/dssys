.class public LS1/c;
.super LS1/d;
.source "SourceFile"


# static fields
.field public static final s:LR1/c;


# instance fields
.field public k:Ljava/util/jar/JarFile;

.field public l:Ljava/io/File;

.field public m:[Ljava/lang/String;

.field public n:Ljava/util/jar/JarEntry;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LS1/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LS1/c;->s:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LS1/d;-><init>(Ljava/net/URL;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, LS1/c;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "!/"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, -0x2

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :try_start_0
    invoke-static {v0}, LS1/e;->e(Ljava/lang/String;)LS1/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, LS1/e;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, LS1/c;->s:LR1/c;

    .line 42
    .line 43
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_1
    invoke-virtual {p0}, LS1/c;->k()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v3, p0, LS1/c;->p:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, LS1/c;->q:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    iput-boolean v0, p0, LS1/c;->o:Z

    .line 60
    .line 61
    return v1

    .line 62
    :cond_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/URL;

    .line 68
    .line 69
    iget-object v3, p0, LS1/c;->p:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/net/JarURLConnection;

    .line 79
    .line 80
    invoke-virtual {p0}, LS1/f;->l()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    sget-object v3, LS1/c;->s:LR1/c;

    .line 94
    .line 95
    invoke-interface {v3, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    :goto_0
    if-eqz v0, :cond_8

    .line 100
    .line 101
    iget-object v3, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 102
    .line 103
    if-nez v3, :cond_8

    .line 104
    .line 105
    iget-boolean v3, p0, LS1/c;->o:Z

    .line 106
    .line 107
    if-nez v3, :cond_8

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    const-string v4, "/"

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/util/jar/JarEntry;

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const/16 v6, 0x5c

    .line 132
    .line 133
    const/16 v7, 0x2f

    .line 134
    .line 135
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iget-object v6, p0, LS1/c;->q:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    iput-object v3, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 148
    .line 149
    iget-object v0, p0, LS1/c;->q:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput-boolean v0, p0, LS1/c;->o:Z

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    iget-object v3, p0, LS1/c;->q:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_6

    .line 165
    .line 166
    iget-object v3, p0, LS1/c;->q:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    iput-boolean v1, p0, LS1/c;->o:Z

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    iget-object v3, p0, LS1/c;->q:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_4

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    iget-object v6, p0, LS1/c;->q:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-le v3, v6, :cond_4

    .line 196
    .line 197
    iget-object v3, p0, LS1/c;->q:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-ne v3, v7, :cond_4

    .line 208
    .line 209
    iput-boolean v1, p0, LS1/c;->o:Z

    .line 210
    .line 211
    :cond_7
    :goto_1
    iget-boolean v0, p0, LS1/c;->o:Z

    .line 212
    .line 213
    if-eqz v0, :cond_8

    .line 214
    .line 215
    iget-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_8

    .line 222
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v3, p0, LS1/f;->d:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iput-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 241
    .line 242
    :try_start_2
    new-instance v0, Ljava/net/URL;

    .line 243
    .line 244
    iget-object v3, p0, LS1/f;->d:Ljava/lang/String;

    .line 245
    .line 246
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iput-object v0, p0, LS1/f;->c:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :catch_2
    move-exception v0

    .line 253
    sget-object v3, LS1/c;->s:LR1/c;

    .line 254
    .line 255
    invoke-interface {v3, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :cond_8
    :goto_2
    iget-boolean v0, p0, LS1/c;->o:Z

    .line 259
    .line 260
    if-nez v0, :cond_a

    .line 261
    .line 262
    iget-object v0, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 263
    .line 264
    if-eqz v0, :cond_9

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_9
    move v1, v2

    .line 268
    :cond_a
    :goto_3
    iput-boolean v1, p0, LS1/c;->r:Z

    .line 269
    .line 270
    return v1
.end method

.method public d()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LS1/c;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, LS1/c;->l:Ljava/io/File;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, LS1/c;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :cond_0
    iget-object v0, p0, LS1/c;->l:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0

    .line 33
    :cond_1
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    return-wide v0
.end method

.method public declared-synchronized i()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, LS1/c;->m:[Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 6
    .line 7
    iput-object v0, p0, LS1/c;->l:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p0}, LS1/f;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, LS1/c;->k:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    :try_start_1
    sget-object v1, LS1/c;->s:LR1/c;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Closing JarFile "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {v1, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    :try_start_2
    sget-object v2, LS1/c;->s:LR1/c;

    .line 60
    .line 61
    invoke-interface {v2, v1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    iput-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 65
    .line 66
    invoke-super {p0}, LS1/d;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    throw v0
.end method

.method public k()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, LS1/d;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, LS1/d;->i:Ljava/net/JarURLConnection;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 10
    .line 11
    iput-object v0, p0, LS1/c;->l:Ljava/io/File;

    .line 12
    .line 13
    iput-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 14
    .line 15
    iput-object v0, p0, LS1/c;->m:[Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    iget-object v2, p0, LS1/d;->i:Ljava/net/JarURLConnection;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iput-object v0, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 31
    .line 32
    iput-object v0, p0, LS1/c;->l:Ljava/io/File;

    .line 33
    .line 34
    iput-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 35
    .line 36
    iput-object v0, p0, LS1/c;->m:[Ljava/lang/String;

    .line 37
    .line 38
    :cond_2
    throw v1
.end method

.method public declared-synchronized m()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, LS1/d;->m()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LS1/c;->n:Ljava/util/jar/JarEntry;

    .line 7
    .line 8
    iput-object v0, p0, LS1/c;->l:Ljava/io/File;

    .line 9
    .line 10
    iput-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 11
    .line 12
    iput-object v0, p0, LS1/c;->m:[Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, LS1/f;->d:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "!/"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, LS1/f;->d:Ljava/lang/String;

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, p0, LS1/c;->p:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, LS1/f;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, LS1/c;->q:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iput-object v0, p0, LS1/c;->q:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, LS1/d;->i:Ljava/net/JarURLConnection;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 59
    .line 60
    new-instance v0, Ljava/io/File;

    .line 61
    .line 62
    iget-object v1, p0, LS1/c;->k:Ljava/util/jar/JarFile;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, LS1/c;->l:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw v0
.end method
