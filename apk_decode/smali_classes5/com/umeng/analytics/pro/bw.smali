.class public Lcom/umeng/analytics/pro/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/de;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/bw$c;,
        Lcom/umeng/analytics/pro/bw$d;,
        Lcom/umeng/analytics/pro/bw$a;,
        Lcom/umeng/analytics/pro/bw$b;,
        Lcom/umeng/analytics/pro/bw$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/de<",
        "Lcom/umeng/analytics/pro/bw;",
        "Lcom/umeng/analytics/pro/bw$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/pro/bw$e;",
            "Lcom/umeng/analytics/pro/dq;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:J = 0x5d55b037b877db0L

.field private static final m:Lcom/umeng/analytics/pro/ei;

.field private static final n:Lcom/umeng/analytics/pro/dy;

.field private static final o:Lcom/umeng/analytics/pro/dy;

.field private static final p:Lcom/umeng/analytics/pro/dy;

.field private static final q:Lcom/umeng/analytics/pro/dy;

.field private static final r:Lcom/umeng/analytics/pro/dy;

.field private static final s:Lcom/umeng/analytics/pro/dy;

.field private static final t:Lcom/umeng/analytics/pro/dy;

.field private static final u:Lcom/umeng/analytics/pro/dy;

.field private static final v:Lcom/umeng/analytics/pro/dy;

.field private static final w:Lcom/umeng/analytics/pro/dy;

.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/el;",
            ">;",
            "Lcom/umeng/analytics/pro/em;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private C:B

.field private D:[Lcom/umeng/analytics/pro/bw$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/ei;

    .line 2
    .line 3
    const-string v1, "UMEnvelope"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ei;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/umeng/analytics/pro/bw;->m:Lcom/umeng/analytics/pro/ei;

    .line 9
    .line 10
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 11
    .line 12
    const-string v1, "version"

    .line 13
    .line 14
    const/16 v2, 0xb

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/umeng/analytics/pro/bw;->n:Lcom/umeng/analytics/pro/dy;

    .line 21
    .line 22
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 23
    .line 24
    const-string v4, "address"

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/umeng/analytics/pro/bw;->o:Lcom/umeng/analytics/pro/dy;

    .line 31
    .line 32
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    const-string v7, "signature"

    .line 36
    .line 37
    invoke-direct {v0, v7, v2, v6}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/umeng/analytics/pro/bw;->p:Lcom/umeng/analytics/pro/dy;

    .line 41
    .line 42
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    const-string v8, "serial_num"

    .line 46
    .line 47
    const/16 v9, 0x8

    .line 48
    .line 49
    invoke-direct {v0, v8, v9, v6}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/umeng/analytics/pro/bw;->q:Lcom/umeng/analytics/pro/dy;

    .line 53
    .line 54
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 55
    .line 56
    const/4 v6, 0x5

    .line 57
    const-string v10, "ts_secs"

    .line 58
    .line 59
    invoke-direct {v0, v10, v9, v6}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/umeng/analytics/pro/bw;->r:Lcom/umeng/analytics/pro/dy;

    .line 63
    .line 64
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 65
    .line 66
    const/4 v6, 0x6

    .line 67
    const-string v11, "length"

    .line 68
    .line 69
    invoke-direct {v0, v11, v9, v6}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/umeng/analytics/pro/bw;->s:Lcom/umeng/analytics/pro/dy;

    .line 73
    .line 74
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 75
    .line 76
    const/4 v6, 0x7

    .line 77
    const-string v12, "entity"

    .line 78
    .line 79
    invoke-direct {v0, v12, v2, v6}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/umeng/analytics/pro/bw;->t:Lcom/umeng/analytics/pro/dy;

    .line 83
    .line 84
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 85
    .line 86
    const-string v6, "guid"

    .line 87
    .line 88
    invoke-direct {v0, v6, v2, v9}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/umeng/analytics/pro/bw;->u:Lcom/umeng/analytics/pro/dy;

    .line 92
    .line 93
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 94
    .line 95
    const/16 v13, 0x9

    .line 96
    .line 97
    const-string v14, "checksum"

    .line 98
    .line 99
    invoke-direct {v0, v14, v2, v13}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/umeng/analytics/pro/bw;->v:Lcom/umeng/analytics/pro/dy;

    .line 103
    .line 104
    new-instance v0, Lcom/umeng/analytics/pro/dy;

    .line 105
    .line 106
    const/16 v13, 0xa

    .line 107
    .line 108
    const-string v15, "codex"

    .line 109
    .line 110
    invoke-direct {v0, v15, v9, v13}, Lcom/umeng/analytics/pro/dy;-><init>(Ljava/lang/String;BS)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/umeng/analytics/pro/bw;->w:Lcom/umeng/analytics/pro/dy;

    .line 114
    .line 115
    new-instance v0, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    sput-object v0, Lcom/umeng/analytics/pro/bw;->x:Ljava/util/Map;

    .line 121
    .line 122
    new-instance v13, Lcom/umeng/analytics/pro/bw$b;

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-direct {v13, v5}, Lcom/umeng/analytics/pro/bw$b;-><init>(Lcom/umeng/analytics/pro/bw$1;)V

    .line 126
    .line 127
    .line 128
    const-class v9, Lcom/umeng/analytics/pro/en;

    .line 129
    .line 130
    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance v9, Lcom/umeng/analytics/pro/bw$d;

    .line 134
    .line 135
    invoke-direct {v9, v5}, Lcom/umeng/analytics/pro/bw$d;-><init>(Lcom/umeng/analytics/pro/bw$1;)V

    .line 136
    .line 137
    .line 138
    const-class v5, Lcom/umeng/analytics/pro/eo;

    .line 139
    .line 140
    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/util/EnumMap;

    .line 144
    .line 145
    const-class v5, Lcom/umeng/analytics/pro/bw$e;

    .line 146
    .line 147
    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    .line 149
    .line 150
    sget-object v5, Lcom/umeng/analytics/pro/bw$e;->a:Lcom/umeng/analytics/pro/bw$e;

    .line 151
    .line 152
    new-instance v9, Lcom/umeng/analytics/pro/dq;

    .line 153
    .line 154
    new-instance v13, Lcom/umeng/analytics/pro/dr;

    .line 155
    .line 156
    invoke-direct {v13, v2}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v9, v1, v3, v13}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->b:Lcom/umeng/analytics/pro/bw$e;

    .line 166
    .line 167
    new-instance v5, Lcom/umeng/analytics/pro/dq;

    .line 168
    .line 169
    new-instance v9, Lcom/umeng/analytics/pro/dr;

    .line 170
    .line 171
    invoke-direct {v9, v2}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 172
    .line 173
    .line 174
    invoke-direct {v5, v4, v3, v9}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->c:Lcom/umeng/analytics/pro/bw$e;

    .line 181
    .line 182
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 183
    .line 184
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 185
    .line 186
    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v4, v7, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->d:Lcom/umeng/analytics/pro/bw$e;

    .line 196
    .line 197
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 198
    .line 199
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 200
    .line 201
    const/16 v7, 0x8

    .line 202
    .line 203
    invoke-direct {v5, v7}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v4, v8, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->e:Lcom/umeng/analytics/pro/bw$e;

    .line 213
    .line 214
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 215
    .line 216
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 217
    .line 218
    invoke-direct {v5, v7}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 219
    .line 220
    .line 221
    invoke-direct {v4, v10, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->f:Lcom/umeng/analytics/pro/bw$e;

    .line 228
    .line 229
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 230
    .line 231
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 232
    .line 233
    invoke-direct {v5, v7}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v4, v11, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->g:Lcom/umeng/analytics/pro/bw$e;

    .line 243
    .line 244
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 245
    .line 246
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 247
    .line 248
    invoke-direct {v5, v2, v3}, Lcom/umeng/analytics/pro/dr;-><init>(BZ)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v4, v12, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 252
    .line 253
    .line 254
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->h:Lcom/umeng/analytics/pro/bw$e;

    .line 258
    .line 259
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 260
    .line 261
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 262
    .line 263
    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 264
    .line 265
    .line 266
    invoke-direct {v4, v6, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->i:Lcom/umeng/analytics/pro/bw$e;

    .line 273
    .line 274
    new-instance v4, Lcom/umeng/analytics/pro/dq;

    .line 275
    .line 276
    new-instance v5, Lcom/umeng/analytics/pro/dr;

    .line 277
    .line 278
    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 279
    .line 280
    .line 281
    invoke-direct {v4, v14, v3, v5}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    sget-object v1, Lcom/umeng/analytics/pro/bw$e;->j:Lcom/umeng/analytics/pro/bw$e;

    .line 288
    .line 289
    new-instance v2, Lcom/umeng/analytics/pro/dq;

    .line 290
    .line 291
    new-instance v3, Lcom/umeng/analytics/pro/dr;

    .line 292
    .line 293
    const/16 v7, 0x8

    .line 294
    .line 295
    invoke-direct {v3, v7}, Lcom/umeng/analytics/pro/dr;-><init>(B)V

    .line 296
    .line 297
    .line 298
    const/4 v4, 0x2

    .line 299
    invoke-direct {v2, v15, v4, v3}, Lcom/umeng/analytics/pro/dq;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/dr;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    sput-object v0, Lcom/umeng/analytics/pro/bw;->k:Ljava/util/Map;

    .line 310
    .line 311
    const-class v1, Lcom/umeng/analytics/pro/bw;

    .line 312
    .line 313
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/dq;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 314
    .line 315
    .line 316
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 3
    sget-object v0, Lcom/umeng/analytics/pro/bw$e;->j:Lcom/umeng/analytics/pro/bw$e;

    filled-new-array {v0}, [Lcom/umeng/analytics/pro/bw$e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->D:[Lcom/umeng/analytics/pro/bw$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/bw;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 19
    sget-object v0, Lcom/umeng/analytics/pro/bw$e;->j:Lcom/umeng/analytics/pro/bw$e;

    filled-new-array {v0}, [Lcom/umeng/analytics/pro/bw$e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->D:[Lcom/umeng/analytics/pro/bw$e;

    .line 20
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bw;->C:B

    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 21
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p1, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bw;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p1, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bw;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p1, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    .line 27
    :cond_2
    iget v0, p1, Lcom/umeng/analytics/pro/bw;->d:I

    iput v0, p0, Lcom/umeng/analytics/pro/bw;->d:I

    .line 28
    iget v0, p1, Lcom/umeng/analytics/pro/bw;->e:I

    iput v0, p0, Lcom/umeng/analytics/pro/bw;->e:I

    .line 29
    iget v0, p1, Lcom/umeng/analytics/pro/bw;->f:I

    iput v0, p0, Lcom/umeng/analytics/pro/bw;->f:I

    .line 30
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bw;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p1, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/analytics/pro/df;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 32
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bw;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p1, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 34
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bw;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p1, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 36
    :cond_5
    iget p1, p1, Lcom/umeng/analytics/pro/bw;->j:I

    iput p1, p0, Lcom/umeng/analytics/pro/bw;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bw;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/umeng/analytics/pro/bw;->d:I

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->d(Z)V

    .line 10
    iput p5, p0, Lcom/umeng/analytics/pro/bw;->e:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->e(Z)V

    .line 12
    iput p6, p0, Lcom/umeng/analytics/pro/bw;->f:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->f(Z)V

    .line 14
    iput-object p7, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 15
    iput-object p8, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 16
    iput-object p9, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic H()Lcom/umeng/analytics/pro/ei;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->m:Lcom/umeng/analytics/pro/ei;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic I()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->n:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic J()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->o:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic K()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->p:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic L()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->q:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic M()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->r:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic N()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->s:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic O()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->t:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic P()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->u:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Q()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->v:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic R()Lcom/umeng/analytics/pro/dy;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->w:Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 11
    new-instance v0, Lcom/umeng/analytics/pro/dx;

    new-instance v1, Lcom/umeng/analytics/pro/ep;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ep;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/dx;-><init>(Lcom/umeng/analytics/pro/er;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bw;->read(Lcom/umeng/analytics/pro/ed;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/dk; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/dx;

    new-instance v1, Lcom/umeng/analytics/pro/ep;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ep;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/dx;-><init>(Lcom/umeng/analytics/pro/er;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bw;->write(Lcom/umeng/analytics/pro/ed;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/dk; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/bw;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public E()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->b(BI)B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 9
    .line 10
    return-void
.end method

.method public F()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->a(BI)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public G()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/umeng/analytics/pro/ee;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Required field \'checksum\' was not present! Struct: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    new-instance v0, Lcom/umeng/analytics/pro/ee;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "Required field \'guid\' was not present! Struct: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    new-instance v0, Lcom/umeng/analytics/pro/ee;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "Required field \'entity\' was not present! Struct: "

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_3
    new-instance v0, Lcom/umeng/analytics/pro/ee;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "Required field \'signature\' was not present! Struct: "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_4
    new-instance v0, Lcom/umeng/analytics/pro/ee;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "Required field \'address\' was not present! Struct: "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_5
    new-instance v0, Lcom/umeng/analytics/pro/ee;

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v2, "Required field \'version\' was not present! Struct: "

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ee;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public a()Lcom/umeng/analytics/pro/bw;
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bw;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/bw;-><init>(Lcom/umeng/analytics/pro/bw;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/analytics/pro/bw;->d:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lcom/umeng/analytics/pro/bw;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/pro/bw;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(I)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/analytics/pro/bw;->e:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(I)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/analytics/pro/bw;->f:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->f(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/bw;->d(Z)V

    .line 10
    .line 11
    .line 12
    iput v1, p0, Lcom/umeng/analytics/pro/bw;->d:I

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/bw;->e(Z)V

    .line 15
    .line 16
    .line 17
    iput v1, p0, Lcom/umeng/analytics/pro/bw;->e:I

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/bw;->f(Z)V

    .line 20
    .line 21
    .line 22
    iput v1, p0, Lcom/umeng/analytics/pro/bw;->f:I

    .line 23
    .line 24
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/bw;->j(Z)V

    .line 31
    .line 32
    .line 33
    iput v1, p0, Lcom/umeng/analytics/pro/bw;->j:I

    .line 34
    .line 35
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/analytics/pro/bw;->j:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->j(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/db;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/bw;->C:B

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/analytics/pro/de;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->a()Lcom/umeng/analytics/pro/bw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e(I)Lcom/umeng/analytics/pro/bw$e;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/umeng/analytics/pro/bw$e;->a(I)Lcom/umeng/analytics/pro/bw$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/analytics/pro/bw;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/db;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/bw;->C:B

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/db;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/bw;->C:B

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/dl;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bw;->e(I)Lcom/umeng/analytics/pro/bw$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/db;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/bw;->C:B

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/bw;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->b(BI)B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 9
    .line 10
    return-void
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->a(BI)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/bw;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public o()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->b(BI)B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 9
    .line 10
    return-void
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->a(BI)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/bw;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public r()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->b(BI)B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 9
    .line 10
    return-void
.end method

.method public read(Lcom/umeng/analytics/pro/ed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->x:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->D()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/umeng/analytics/pro/em;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/umeng/analytics/pro/em;->b()Lcom/umeng/analytics/pro/el;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/el;->b(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/de;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/bw;->C:B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/db;->a(BI)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public t()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/umeng/analytics/pro/df;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bw;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/pro/bw;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UMEnvelope("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "version:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/umeng/analytics/pro/bw;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "null"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v1, ", "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "address:"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/umeng/analytics/pro/bw;->b:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "signature:"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/umeng/analytics/pro/bw;->c:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "serial_num:"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v3, p0, Lcom/umeng/analytics/pro/bw;->d:I

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "ts_secs:"

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v3, p0, Lcom/umeng/analytics/pro/bw;->e:I

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, "length:"

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v3, p0, Lcom/umeng/analytics/pro/bw;->f:I

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, "entity:"

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    if-nez v3, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    invoke-static {v3, v0}, Lcom/umeng/analytics/pro/df;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    .line 122
    .line 123
    .line 124
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, "guid:"

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 133
    .line 134
    if-nez v3, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, "checksum:"

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lcom/umeng/analytics/pro/bw;->i:Ljava/lang/String;

    .line 152
    .line 153
    if-nez v3, :cond_5

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    :goto_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bw;->F()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, "codex:"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v1, p0, Lcom/umeng/analytics/pro/bw;->j:I

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :cond_6
    const-string v1, ")"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    return-object v0
.end method

.method public u()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->g:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public write(Lcom/umeng/analytics/pro/ed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bw;->x:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->D()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/umeng/analytics/pro/em;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/umeng/analytics/pro/em;->b()Lcom/umeng/analytics/pro/el;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/el;->a(Lcom/umeng/analytics/pro/ed;Lcom/umeng/analytics/pro/de;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/bw;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
