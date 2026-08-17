.class public Lorg/eclipse/jetty/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/g$e;,
        Lorg/eclipse/jetty/http/g$d;,
        Lorg/eclipse/jetty/http/g$c;
    }
.end annotation


# static fields
.field public static final c:LR1/c;

.field public static final d:Ljava/util/TimeZone;

.field public static final e:LL1/f;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:Ljava/lang/ThreadLocal;

.field public static final i:[Ljava/lang/String;

.field public static final j:Ljava/lang/ThreadLocal;

.field public static final k:Ljava/lang/String;

.field public static final l:LL1/d;

.field public static final m:Ljava/lang/String;

.field public static n:Ljava/util/concurrent/ConcurrentMap;

.field public static o:I

.field public static final p:Ljava/lang/Float;

.field public static final q:Ljava/lang/Float;

.field public static final r:Lorg/eclipse/jetty/util/StringMap;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, Lorg/eclipse/jetty/http/g;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/http/g;->c:LR1/c;

    .line 8
    .line 9
    const-string v0, "GMT"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lorg/eclipse/jetty/http/g;->d:Ljava/util/TimeZone;

    .line 16
    .line 17
    new-instance v2, LL1/f;

    .line 18
    .line 19
    const-string v3, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 20
    .line 21
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, LL1/f;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lorg/eclipse/jetty/http/g;->e:LL1/f;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/h;->e(Ljava/util/TimeZone;)V

    .line 32
    .line 33
    .line 34
    const-string v11, "Fri"

    .line 35
    .line 36
    const-string v12, "Sat"

    .line 37
    .line 38
    const-string v5, "Sat"

    .line 39
    .line 40
    const-string v6, "Sun"

    .line 41
    .line 42
    const-string v7, "Mon"

    .line 43
    .line 44
    const-string v8, "Tue"

    .line 45
    .line 46
    const-string v9, "Wed"

    .line 47
    .line 48
    const-string v10, "Thu"

    .line 49
    .line 50
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lorg/eclipse/jetty/http/g;->f:[Ljava/lang/String;

    .line 55
    .line 56
    const-string v12, "Dec"

    .line 57
    .line 58
    const-string v13, "Jan"

    .line 59
    .line 60
    const-string v1, "Jan"

    .line 61
    .line 62
    const-string v2, "Feb"

    .line 63
    .line 64
    const-string v3, "Mar"

    .line 65
    .line 66
    const-string v4, "Apr"

    .line 67
    .line 68
    const-string v5, "May"

    .line 69
    .line 70
    const-string v6, "Jun"

    .line 71
    .line 72
    const-string v7, "Jul"

    .line 73
    .line 74
    const-string v8, "Aug"

    .line 75
    .line 76
    const-string v9, "Sep"

    .line 77
    .line 78
    const-string v10, "Oct"

    .line 79
    .line 80
    const-string v11, "Nov"

    .line 81
    .line 82
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lorg/eclipse/jetty/http/g;->g:[Ljava/lang/String;

    .line 87
    .line 88
    new-instance v0, Lorg/eclipse/jetty/http/g$a;

    .line 89
    .line 90
    invoke-direct {v0}, Lorg/eclipse/jetty/http/g$a;-><init>()V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lorg/eclipse/jetty/http/g;->h:Ljava/lang/ThreadLocal;

    .line 94
    .line 95
    const-string v21, "EEE dd-MMM-yy HH:mm:ss zzz"

    .line 96
    .line 97
    const-string v22, "EEE dd-MMM-yy HH:mm:ss"

    .line 98
    .line 99
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 100
    .line 101
    const-string v2, "EEE, dd-MMM-yy HH:mm:ss"

    .line 102
    .line 103
    const-string v3, "EEE MMM dd HH:mm:ss yyyy"

    .line 104
    .line 105
    const-string v4, "EEE, dd MMM yyyy HH:mm:ss"

    .line 106
    .line 107
    const-string v5, "EEE dd MMM yyyy HH:mm:ss zzz"

    .line 108
    .line 109
    const-string v6, "EEE dd MMM yyyy HH:mm:ss"

    .line 110
    .line 111
    const-string v7, "EEE MMM dd yyyy HH:mm:ss zzz"

    .line 112
    .line 113
    const-string v8, "EEE MMM dd yyyy HH:mm:ss"

    .line 114
    .line 115
    const-string v9, "EEE MMM-dd-yyyy HH:mm:ss zzz"

    .line 116
    .line 117
    const-string v10, "EEE MMM-dd-yyyy HH:mm:ss"

    .line 118
    .line 119
    const-string v11, "dd MMM yyyy HH:mm:ss zzz"

    .line 120
    .line 121
    const-string v12, "dd MMM yyyy HH:mm:ss"

    .line 122
    .line 123
    const-string v13, "dd-MMM-yy HH:mm:ss zzz"

    .line 124
    .line 125
    const-string v14, "dd-MMM-yy HH:mm:ss"

    .line 126
    .line 127
    const-string v15, "MMM dd HH:mm:ss yyyy zzz"

    .line 128
    .line 129
    const-string v16, "MMM dd HH:mm:ss yyyy"

    .line 130
    .line 131
    const-string v17, "EEE MMM dd HH:mm:ss yyyy zzz"

    .line 132
    .line 133
    const-string v18, "EEE, MMM dd HH:mm:ss yyyy zzz"

    .line 134
    .line 135
    const-string v19, "EEE, MMM dd HH:mm:ss yyyy"

    .line 136
    .line 137
    const-string v20, "EEE, dd-MMM-yy HH:mm:ss zzz"

    .line 138
    .line 139
    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lorg/eclipse/jetty/http/g;->i:[Ljava/lang/String;

    .line 144
    .line 145
    new-instance v0, Lorg/eclipse/jetty/http/g$b;

    .line 146
    .line 147
    invoke-direct {v0}, Lorg/eclipse/jetty/http/g$b;-><init>()V

    .line 148
    .line 149
    .line 150
    sput-object v0, Lorg/eclipse/jetty/http/g;->j:Ljava/lang/ThreadLocal;

    .line 151
    .line 152
    const-wide/16 v0, 0x0

    .line 153
    .line 154
    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/g;->m(J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    sput-object v2, Lorg/eclipse/jetty/http/g;->k:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v3, LL1/h;

    .line 161
    .line 162
    invoke-direct {v3, v2}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sput-object v3, Lorg/eclipse/jetty/http/g;->l:LL1/d;

    .line 166
    .line 167
    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/g;->k(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lorg/eclipse/jetty/http/g;->m:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    sput-object v0, Lorg/eclipse/jetty/http/g;->n:Ljava/util/concurrent/ConcurrentMap;

    .line 183
    .line 184
    const-string v0, "org.eclipse.jetty.http.HttpFields.CACHE"

    .line 185
    .line 186
    const/16 v1, 0x7d0

    .line 187
    .line 188
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    sput v0, Lorg/eclipse/jetty/http/g;->o:I

    .line 197
    .line 198
    new-instance v0, Ljava/lang/Float;

    .line 199
    .line 200
    const-string v1, "1.0"

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lorg/eclipse/jetty/http/g;->p:Ljava/lang/Float;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/Float;

    .line 208
    .line 209
    const-string v3, "0.0"

    .line 210
    .line 211
    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sput-object v2, Lorg/eclipse/jetty/http/g;->q:Ljava/lang/Float;

    .line 215
    .line 216
    new-instance v4, Lorg/eclipse/jetty/util/StringMap;

    .line 217
    .line 218
    invoke-direct {v4}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 219
    .line 220
    .line 221
    sput-object v4, Lorg/eclipse/jetty/http/g;->r:Lorg/eclipse/jetty/util/StringMap;

    .line 222
    .line 223
    const/4 v5, 0x0

    .line 224
    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const-string v1, "1"

    .line 231
    .line 232
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    new-instance v0, Ljava/lang/Float;

    .line 236
    .line 237
    const-string v1, "0.9"

    .line 238
    .line 239
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    new-instance v0, Ljava/lang/Float;

    .line 246
    .line 247
    const-string v1, "0.8"

    .line 248
    .line 249
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    new-instance v0, Ljava/lang/Float;

    .line 256
    .line 257
    const-string v1, "0.7"

    .line 258
    .line 259
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    new-instance v0, Ljava/lang/Float;

    .line 266
    .line 267
    const-string v1, "0.66"

    .line 268
    .line 269
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    new-instance v0, Ljava/lang/Float;

    .line 276
    .line 277
    const-string v1, "0.6"

    .line 278
    .line 279
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    new-instance v0, Ljava/lang/Float;

    .line 286
    .line 287
    const-string v1, "0.5"

    .line 288
    .line 289
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    new-instance v0, Ljava/lang/Float;

    .line 296
    .line 297
    const-string v1, "0.4"

    .line 298
    .line 299
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    new-instance v0, Ljava/lang/Float;

    .line 306
    .line 307
    const-string v1, "0.33"

    .line 308
    .line 309
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    new-instance v0, Ljava/lang/Float;

    .line 316
    .line 317
    const-string v1, "0.3"

    .line 318
    .line 319
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    new-instance v0, Ljava/lang/Float;

    .line 326
    .line 327
    const-string v1, "0.2"

    .line 328
    .line 329
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    new-instance v0, Ljava/lang/Float;

    .line 336
    .line 337
    const-string v1, "0.1"

    .line 338
    .line 339
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const-string v0, "0"

    .line 346
    .line 347
    invoke-virtual {v4, v0, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/g;->f:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/g;->g:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/g;->i:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static k(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, p1}, Lorg/eclipse/jetty/http/g;->l(Ljava/lang/StringBuilder;J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static l(Ljava/lang/StringBuilder;J)V
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/g;->h:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/eclipse/jetty/http/g$c;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jetty/http/g$c;->a(Ljava/lang/StringBuilder;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static m(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/g;->h:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/eclipse/jetty/http/g$c;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/http/g$c;->b(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public A(LL1/d;)V
    .locals 1

    .line 1
    instance-of v0, p1, LL1/e$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LL1/e;->g(LL1/d;)LL1/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lorg/eclipse/jetty/http/g$e;

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lorg/eclipse/jetty/http/g$e;->c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LL1/e;->h(Ljava/lang/String;)LL1/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->A(LL1/d;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(LL1/d;LL1/d;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    instance-of v0, p1, LL1/e$a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LL1/e;->g(LL1/d;)LL1/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, LL1/d;->C0()LL1/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of v0, p2, LL1/e$a;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, LL1/e;->e(LL1/d;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lorg/eclipse/jetty/http/i;->i(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, LL1/e;->g(LL1/d;)LL1/d;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_1
    invoke-interface {p2}, LL1/d;->C0()LL1/d;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lorg/eclipse/jetty/http/g$e;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    move-object v2, v1

    .line 53
    :goto_0
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-static {v0}, Lorg/eclipse/jetty/http/g$e;->c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v3, v2

    .line 60
    move-object v2, v0

    .line 61
    move-object v0, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/http/g$e;

    .line 64
    .line 65
    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jetty/http/g$e;-><init>(LL1/d;LL1/d;Lorg/eclipse/jetty/http/g$a;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-static {v2, v0}, Lorg/eclipse/jetty/http/g$e;->d(Lorg/eclipse/jetty/http/g$e;Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iget-object p2, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "null value"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, LL1/e;->h(Ljava/lang/String;)LL1/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/g;->j(Ljava/lang/String;)LL1/d;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/g;->d(LL1/d;LL1/d;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-wide/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    if-eqz v1, :cond_11

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    if-eqz v8, :cond_11

    .line 22
    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/16 v9, 0x80

    .line 26
    .line 27
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const-string v9, "\"\\\n\r\t\u000c\u0008%+ ;="

    .line 31
    .line 32
    invoke-static {v8, v1, v9}, Lorg/eclipse/jetty/util/l;->d(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x3d

    .line 36
    .line 37
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-lez v10, :cond_0

    .line 51
    .line 52
    invoke-static {v8, v2, v9}, Lorg/eclipse/jetty/util/l;->d(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    if-eqz v7, :cond_1

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-lez v2, :cond_1

    .line 62
    .line 63
    const-string v2, ";Comment="

    .line 64
    .line 65
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v8, v7, v9}, Lorg/eclipse/jetty/util/l;->d(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 v2, 0x1

    .line 72
    const/4 v7, 0x0

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-lez v10, :cond_3

    .line 80
    .line 81
    const-string v10, ";Path="

    .line 82
    .line 83
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    const-string v11, "\""

    .line 91
    .line 92
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-eqz v10, :cond_2

    .line 97
    .line 98
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v8, v4, v9}, Lorg/eclipse/jetty/util/l;->d(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    :goto_0
    move v10, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move v10, v7

    .line 108
    :goto_1
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-lez v11, :cond_4

    .line 115
    .line 116
    const-string v7, ";Domain="

    .line 117
    .line 118
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 122
    .line 123
    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v8, v7, v9}, Lorg/eclipse/jetty/util/l;->d(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    move v2, v7

    .line 132
    :goto_2
    const-wide/16 v11, 0x0

    .line 133
    .line 134
    cmp-long v7, v5, v11

    .line 135
    .line 136
    if-ltz v7, :cond_6

    .line 137
    .line 138
    const-string v9, ";Expires="

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    if-nez v7, :cond_5

    .line 144
    .line 145
    sget-object v7, Lorg/eclipse/jetty/http/g;->m:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v11

    .line 155
    const-wide/16 v13, 0x3e8

    .line 156
    .line 157
    mul-long/2addr v13, v5

    .line 158
    add-long/2addr v11, v13

    .line 159
    invoke-static {v8, v11, v12}, Lorg/eclipse/jetty/http/g;->l(Ljava/lang/StringBuilder;J)V

    .line 160
    .line 161
    .line 162
    :goto_3
    if-lez p10, :cond_6

    .line 163
    .line 164
    const-string v7, ";Max-Age="

    .line 165
    .line 166
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_6
    if-eqz p8, :cond_7

    .line 173
    .line 174
    const-string v5, ";Secure"

    .line 175
    .line 176
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_7
    if-eqz p9, :cond_8

    .line 180
    .line 181
    const-string v5, ";HttpOnly"

    .line 182
    .line 183
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const-string v6, "Set-Cookie"

    .line 191
    .line 192
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/http/g;->q(Ljava/lang/String;)Lorg/eclipse/jetty/http/g$e;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const/4 v7, 0x0

    .line 197
    move-object v8, v7

    .line 198
    :goto_4
    if-eqz v6, :cond_10

    .line 199
    .line 200
    invoke-static {v6}, Lorg/eclipse/jetty/http/g$e;->b(Lorg/eclipse/jetty/http/g$e;)LL1/d;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-nez v9, :cond_9

    .line 205
    .line 206
    move-object v9, v7

    .line 207
    goto :goto_5

    .line 208
    :cond_9
    invoke-static {v6}, Lorg/eclipse/jetty/http/g$e;->b(Lorg/eclipse/jetty/http/g$e;)LL1/d;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    :goto_5
    if-eqz v9, :cond_f

    .line 217
    .line 218
    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    if-eqz v11, :cond_f

    .line 223
    .line 224
    if-nez v2, :cond_a

    .line 225
    .line 226
    const-string v11, "Domain"

    .line 227
    .line 228
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    if-eqz v11, :cond_b

    .line 233
    .line 234
    :cond_a
    if-eqz v2, :cond_f

    .line 235
    .line 236
    new-instance v11, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v12, "Domain="

    .line 242
    .line 243
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    if-eqz v11, :cond_f

    .line 258
    .line 259
    :cond_b
    if-nez v10, :cond_c

    .line 260
    .line 261
    const-string v11, "Path"

    .line 262
    .line 263
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    if-eqz v11, :cond_d

    .line 268
    .line 269
    :cond_c
    if-eqz v10, :cond_f

    .line 270
    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v12, "Path="

    .line 277
    .line 278
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_f

    .line 293
    .line 294
    :cond_d
    iget-object v1, v0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    if-nez v8, :cond_e

    .line 300
    .line 301
    iget-object v1, v0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 302
    .line 303
    sget-object v2, Lorg/eclipse/jetty/http/j;->i0:LL1/d;

    .line 304
    .line 305
    invoke-static {v6}, Lorg/eclipse/jetty/http/g$e;->c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_e
    invoke-static {v6}, Lorg/eclipse/jetty/http/g$e;->c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {v8, v1}, Lorg/eclipse/jetty/http/g$e;->d(Lorg/eclipse/jetty/http/g$e;Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_f
    invoke-static {v6}, Lorg/eclipse/jetty/http/g$e;->c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    move-object v15, v8

    .line 326
    move-object v8, v6

    .line 327
    move-object v6, v15

    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_10
    :goto_6
    sget-object v1, Lorg/eclipse/jetty/http/j;->i0:LL1/d;

    .line 331
    .line 332
    new-instance v2, LL1/h;

    .line 333
    .line 334
    invoke-direct {v2, v5}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/g;->d(LL1/d;LL1/d;)V

    .line 338
    .line 339
    .line 340
    sget-object v1, Lorg/eclipse/jetty/http/j;->A:LL1/d;

    .line 341
    .line 342
    sget-object v2, Lorg/eclipse/jetty/http/g;->l:LL1/d;

    .line 343
    .line 344
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/g;->v(LL1/d;LL1/d;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 349
    .line 350
    const-string v2, "Bad cookie name"

    .line 351
    .line 352
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v1
.end method

.method public g(Lorg/eclipse/jetty/http/f;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->e()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->c()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-long v5, v0

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->i()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->h()Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/f;->g()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    move-object v0, p0

    .line 39
    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jetty/http/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(LL1/d;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, LL1/e;->g(LL1/d;)LL1/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final j(Ljava/lang/String;)LL1/d;
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/g;->n:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LL1/d;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    new-instance v0, LL1/h;

    .line 13
    .line 14
    const-string v1, "ISO-8859-1"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, LL1/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lorg/eclipse/jetty/http/g;->o:I

    .line 20
    .line 21
    if-lez v1, :cond_2

    .line 22
    .line 23
    sget-object v1, Lorg/eclipse/jetty/http/g;->n:Ljava/util/concurrent/ConcurrentMap;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sget v2, Lorg/eclipse/jetty/http/g;->o:I

    .line 30
    .line 31
    if-le v1, v2, :cond_1

    .line 32
    .line 33
    sget-object v1, Lorg/eclipse/jetty/http/g;->n:Ljava/util/concurrent/ConcurrentMap;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    sget-object v1, Lorg/eclipse/jetty/http/g;->n:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    .line 43
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, LL1/d;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    return-object v0

    .line 53
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public n(LL1/d;)LL1/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->p(LL1/d;)Lorg/eclipse/jetty/http/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/http/g$e;->b(Lorg/eclipse/jetty/http/g$e;)LL1/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public o(I)Lorg/eclipse/jetty/http/g$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/eclipse/jetty/http/g$e;

    .line 8
    .line 9
    return-object p1
.end method

.method public final p(LL1/d;)Lorg/eclipse/jetty/http/g$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, LL1/e;->g(LL1/d;)LL1/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/eclipse/jetty/http/g$e;

    .line 14
    .line 15
    return-object p1
.end method

.method public final q(Ljava/lang/String;)Lorg/eclipse/jetty/http/g$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, LL1/e;->h(Ljava/lang/String;)LL1/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/eclipse/jetty/http/g$e;

    .line 14
    .line 15
    return-object p1
.end method

.method public r()Ljava/util/Collection;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    check-cast v4, Lorg/eclipse/jetty/http/g$e;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-static {v4}, Lorg/eclipse/jetty/http/g$e;->a(Lorg/eclipse/jetty/http/g$e;)LL1/d;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, LL1/g;->f(LL1/d;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public s(LL1/d;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->p(LL1/d;)Lorg/eclipse/jetty/http/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->q(Ljava/lang/String;)Lorg/eclipse/jetty/http/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const-string v3, "\r\n"

    .line 14
    .line 15
    if-ge v1, v2, :cond_3

    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/eclipse/jetty/http/g$e;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/g$e;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    const-string v4, ": "

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    return-object v0

    .line 67
    :goto_2
    sget-object v1, Lorg/eclipse/jetty/http/g;->c:LR1/c;

    .line 68
    .line 69
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public u(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->q(Ljava/lang/String;)Lorg/eclipse/jetty/http/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lorg/eclipse/jetty/http/g$e;->c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method public v(LL1/d;LL1/d;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->A(LL1/d;)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    instance-of v0, p1, LL1/e$a;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LL1/e;->g(LL1/d;)LL1/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    instance-of v0, p2, LL1/e$a;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, LL1/e;->g(LL1/d;)LL1/d;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, LL1/d;->C0()LL1/d;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/http/g$e;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jetty/http/g$e;-><init>(LL1/d;LL1/d;Lorg/eclipse/jetty/http/g$a;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lorg/eclipse/jetty/http/g;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lorg/eclipse/jetty/http/g;->b:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public w(LL1/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LL1/e;->g(LL1/d;)LL1/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/g;->j(Ljava/lang/String;)LL1/d;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/g;->v(LL1/d;LL1/d;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/g;->B(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LL1/e;->h(Ljava/lang/String;)LL1/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/g;->j(Ljava/lang/String;)LL1/d;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/g;->v(LL1/d;LL1/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public y(LL1/d;J)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/g;->m(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance p3, LL1/h;

    .line 6
    .line 7
    invoke-direct {p3, p2}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/http/g;->v(LL1/d;LL1/d;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public z(Ljava/lang/String;J)V
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LL1/e;->h(Ljava/lang/String;)LL1/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2, p3}, LL1/g;->g(J)LL1/d;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/g;->v(LL1/d;LL1/d;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
