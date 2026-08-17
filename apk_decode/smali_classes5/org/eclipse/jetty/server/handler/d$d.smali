.class public abstract Lorg/eclipse/jetty/server/handler/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:Lorg/eclipse/jetty/server/handler/d;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lorg/eclipse/jetty/server/handler/d$d;->a:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/eclipse/jetty/server/handler/d$d;->b:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/d$d;->c:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/d;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 11
    .line 12
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/d;->k0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/d;->k0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    return-object v0

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public declared-synchronized b()Ljava/util/Enumeration;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/d;->k0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 16
    .line 17
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/d;->k0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/c;->b()Ljava/util/Enumeration;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 42
    .line 43
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/d;->l0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/c;->b()Ljava/util/Enumeration;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    return-object v0

    .line 71
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v0
.end method

.method public c()Lorg/eclipse/jetty/server/handler/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/d;->m0(Lorg/eclipse/jetty/server/handler/d;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/d;->m0(Lorg/eclipse/jetty/server/handler/d;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 27
    .line 28
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/d;->m0(Lorg/eclipse/jetty/server/handler/d;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/d;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/d$d;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 11
    .line 12
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-class v4, Lorg/eclipse/jetty/server/handler/d;

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/handler/b;->F(Ljava/lang/Class;)[LN1/h;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    array-length v4, v3

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    const-string v9, "/"

    .line 26
    .line 27
    const/16 v10, 0x2f

    .line 28
    .line 29
    if-ge v7, v4, :cond_d

    .line 30
    .line 31
    aget-object v11, v3, v7

    .line 32
    .line 33
    if-nez v11, :cond_0

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    check-cast v11, Lorg/eclipse/jetty/server/handler/d;

    .line 38
    .line 39
    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/d;->v0()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-nez v13, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    if-eqz v13, :cond_1

    .line 54
    .line 55
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eq v13, v10, :cond_2

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_8

    .line 70
    .line 71
    :cond_2
    iget-object v9, v0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 72
    .line 73
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-eqz v9, :cond_9

    .line 78
    .line 79
    iget-object v9, v0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 80
    .line 81
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    array-length v9, v9

    .line 86
    if-lez v9, :cond_9

    .line 87
    .line 88
    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    if-eqz v9, :cond_8

    .line 93
    .line 94
    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    array-length v9, v9

    .line 99
    if-lez v9, :cond_8

    .line 100
    .line 101
    iget-object v9, v0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 102
    .line 103
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    array-length v10, v9

    .line 108
    const/4 v13, 0x0

    .line 109
    :goto_1
    if-ge v13, v10, :cond_8

    .line 110
    .line 111
    aget-object v14, v9, v13

    .line 112
    .line 113
    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    array-length v5, v15

    .line 120
    const/4 v6, 0x0

    .line 121
    :goto_2
    if-ge v6, v5, :cond_7

    .line 122
    .line 123
    aget-object v0, v15, v6

    .line 124
    .line 125
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    if-eqz v8, :cond_3

    .line 132
    .line 133
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    move/from16 v17, v4

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-le v0, v4, :cond_4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    move/from16 v17, v4

    .line 147
    .line 148
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 149
    .line 150
    .line 151
    move-object v8, v12

    .line 152
    :cond_4
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    move/from16 v17, v4

    .line 163
    .line 164
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    move-object/from16 v0, p0

    .line 167
    .line 168
    move/from16 v4, v17

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    move/from16 v17, v4

    .line 172
    .line 173
    add-int/lit8 v13, v13, 0x1

    .line 174
    .line 175
    move-object/from16 v0, p0

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    :goto_5
    move/from16 v17, v4

    .line 179
    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_9
    move/from16 v17, v4

    .line 184
    .line 185
    const/16 v16, 0x0

    .line 186
    .line 187
    if-eqz v8, :cond_a

    .line 188
    .line 189
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-le v0, v4, :cond_b

    .line 198
    .line 199
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 200
    .line 201
    .line 202
    move-object v8, v12

    .line 203
    :cond_b
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 213
    .line 214
    move-object/from16 v0, p0

    .line 215
    .line 216
    move/from16 v4, v17

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_d
    const/16 v16, 0x0

    .line 221
    .line 222
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-lez v0, :cond_e

    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lorg/eclipse/jetty/server/handler/d;

    .line 234
    .line 235
    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 236
    .line 237
    return-object v0

    .line 238
    :cond_e
    array-length v0, v3

    .line 239
    move-object/from16 v5, v16

    .line 240
    .line 241
    const/4 v4, 0x0

    .line 242
    :goto_7
    if-ge v4, v0, :cond_15

    .line 243
    .line 244
    aget-object v6, v3, v4

    .line 245
    .line 246
    if-nez v6, :cond_f

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_f
    check-cast v6, Lorg/eclipse/jetty/server/handler/d;

    .line 250
    .line 251
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/d;->v0()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-nez v8, :cond_11

    .line 260
    .line 261
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-eqz v8, :cond_10

    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-eq v8, v10, :cond_11

    .line 276
    .line 277
    :cond_10
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-eqz v8, :cond_14

    .line 282
    .line 283
    :cond_11
    if-eqz v5, :cond_12

    .line 284
    .line 285
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-le v8, v11, :cond_13

    .line 294
    .line 295
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 296
    .line 297
    .line 298
    move-object v5, v7

    .line 299
    :cond_13
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_14

    .line 304
    .line 305
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :cond_14
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-lez v0, :cond_16

    .line 316
    .line 317
    const/4 v0, 0x0

    .line 318
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lorg/eclipse/jetty/server/handler/d;

    .line 323
    .line 324
    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 325
    .line 326
    return-object v0

    .line 327
    :cond_16
    return-object v16
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ServletContext@"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d$d;->d:Lorg/eclipse/jetty/server/handler/d;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/d;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
