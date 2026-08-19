.class public final Lh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh;

    invoke-direct {v0}, Lh;-><init>()V

    sput-object v0, Lh;->a:Lh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, [B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p2, [B

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, [B

    .line 10
    .line 11
    check-cast p2, [B

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    instance-of v0, p1, [I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    instance-of v0, p2, [I

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, [I

    .line 27
    .line 28
    check-cast p2, [I

    .line 29
    .line 30
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    instance-of v0, p1, [J

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    instance-of v0, p2, [J

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    check-cast p1, [J

    .line 44
    .line 45
    check-cast p2, [J

    .line 46
    .line 47
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_2
    instance-of v0, p1, [D

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    instance-of v0, p2, [D

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast p1, [D

    .line 61
    .line 62
    check-cast p2, [D

    .line 63
    .line 64
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([D[D)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_3
    instance-of v0, p1, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x1

    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    instance-of v0, p2, [Ljava/lang/Object;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    check-cast p1, [Ljava/lang/Object;

    .line 80
    .line 81
    array-length v0, p1

    .line 82
    check-cast p2, [Ljava/lang/Object;

    .line 83
    .line 84
    array-length v3, p2

    .line 85
    if-ne v0, v3, :cond_7

    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/collections/m;->F([Ljava/lang/Object;)LE1/d;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    instance-of v3, v0, Ljava/util/Collection;

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    move-object v3, v0

    .line 96
    check-cast v3, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    move-object v3, v0

    .line 116
    check-cast v3, Lkotlin/collections/B;

    .line 117
    .line 118
    invoke-virtual {v3}, Lkotlin/collections/B;->nextInt()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    sget-object v4, Lh;->a:Lh;

    .line 123
    .line 124
    aget-object v5, p1, v3

    .line 125
    .line 126
    aget-object v3, p2, v3

    .line 127
    .line 128
    invoke-virtual {v4, v5, v3}, Lh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    :goto_0
    return v2

    .line 136
    :cond_7
    :goto_1
    return v1

    .line 137
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    .line 138
    .line 139
    if-eqz v0, :cond_d

    .line 140
    .line 141
    instance-of v0, p2, Ljava/util/List;

    .line 142
    .line 143
    if-eqz v0, :cond_d

    .line 144
    .line 145
    move-object v0, p1

    .line 146
    check-cast v0, Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    check-cast p2, Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-ne v3, v4, :cond_c

    .line 159
    .line 160
    check-cast p1, Ljava/util/Collection;

    .line 161
    .line 162
    invoke-static {p1}, Lkotlin/collections/q;->m(Ljava/util/Collection;)LE1/d;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    instance-of v3, p1, Ljava/util/Collection;

    .line 167
    .line 168
    if-eqz v3, :cond_9

    .line 169
    .line 170
    move-object v3, p1

    .line 171
    check-cast v3, Ljava/util/Collection;

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_b

    .line 189
    .line 190
    move-object v3, p1

    .line 191
    check-cast v3, Lkotlin/collections/B;

    .line 192
    .line 193
    invoke-virtual {v3}, Lkotlin/collections/B;->nextInt()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    sget-object v4, Lh;->a:Lh;

    .line 198
    .line 199
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v4, v5, v3}, Lh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_a

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_b
    :goto_2
    return v2

    .line 215
    :cond_c
    :goto_3
    return v1

    .line 216
    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    .line 217
    .line 218
    if-eqz v0, :cond_11

    .line 219
    .line 220
    instance-of v0, p2, Ljava/util/Map;

    .line 221
    .line 222
    if-eqz v0, :cond_11

    .line 223
    .line 224
    check-cast p1, Ljava/util/Map;

    .line 225
    .line 226
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    check-cast p2, Ljava/util/Map;

    .line 231
    .line 232
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-ne v0, v3, :cond_10

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_e

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_e
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_f

    .line 258
    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_10

    .line 274
    .line 275
    sget-object v3, Lh;->a:Lh;

    .line 276
    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v3, v4, v0}, Lh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_f
    :goto_5
    return v2

    .line 297
    :cond_10
    return v1

    .line 298
    :cond_11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    return p1
.end method

.method public final b(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, LWakelockPlusFlutterError;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, LWakelockPlusFlutterError;

    .line 11
    .line 12
    invoke-virtual {p1}, LWakelockPlusFlutterError;->getCode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, LWakelockPlusFlutterError;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, LWakelockPlusFlutterError;->getDetails()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/collections/q;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "Cause: "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", Stacktrace: "

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lkotlin/collections/q;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method
