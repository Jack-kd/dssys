.class final Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/i;",
        "Lkotlin/coroutines/e;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlin/sequences/i;",
        "Ljava/nio/file/Path;",
        "Lkotlin/j;",
        "<anonymous>",
        "(Lkotlin/sequences/i;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.io.path.PathTreeWalk$bfsIterator$1"
    f = "PathTreeWalk.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xbf,
        0xc5
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "node$iv",
        "entriesReader$iv",
        "path$iv",
        "$i$f$yieldIfNeeded",
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "node$iv",
        "entriesReader$iv",
        "path$iv",
        "$i$f$yieldIfNeeded"
    }
    nl = {
        0xc1,
        0xc7
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/io/path/w;


# direct methods
.method public constructor <init>(Lkotlin/io/path/w;Lkotlin/coroutines/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/w;",
            "Lkotlin/coroutines/e;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/e;)Lkotlin/coroutines/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/e;",
            ")",
            "Lkotlin/coroutines/e;"
        }
    .end annotation

    new-instance v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;-><init>(Lkotlin/io/path/w;Lkotlin/coroutines/e;)V

    iput-object p1, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lkotlin/coroutines/e;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->invoke(Lkotlin/sequences/i;Lkotlin/coroutines/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/i;Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/i;",
            "Lkotlin/coroutines/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/e;)Lkotlin/coroutines/e;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;

    sget-object p2, Lkotlin/j;->a:Lkotlin/j;

    invoke-virtual {p1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/sequences/i;

    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->label:I

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-eq v2, v4, :cond_1

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$8:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/io/path/b;->a(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$7:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lkotlin/io/path/f;

    .line 28
    .line 29
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lkotlin/io/path/j;

    .line 32
    .line 33
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lkotlin/sequences/i;

    .line 36
    .line 37
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v2}, Lt/f;->a(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lkotlin/io/path/j;

    .line 45
    .line 46
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lkotlin/io/path/f;

    .line 49
    .line 50
    iget-object v6, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Lkotlin/collections/i;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/e;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    iget-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$8:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/io/path/b;->a(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v6, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$7:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v6, Lkotlin/io/path/f;

    .line 75
    .line 76
    iget-object v7, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Lkotlin/io/path/j;

    .line 79
    .line 80
    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v8, Lkotlin/sequences/i;

    .line 83
    .line 84
    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v8}, Lt/f;->a(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v8, Lkotlin/io/path/j;

    .line 92
    .line 93
    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v8, Lkotlin/io/path/f;

    .line 96
    .line 97
    iget-object v9, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v9, Lkotlin/collections/i;

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/e;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_2
    invoke-static {p1}, Lkotlin/e;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lkotlin/collections/i;

    .line 110
    .line 111
    invoke-direct {p1}, Lkotlin/collections/i;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v2, Lkotlin/io/path/f;

    .line 115
    .line 116
    invoke-static {v5}, Lkotlin/io/path/w;->b(Lkotlin/io/path/w;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-direct {v2, v6}, Lkotlin/io/path/f;-><init>(Z)V

    .line 121
    .line 122
    .line 123
    new-instance v6, Lkotlin/io/path/j;

    .line 124
    .line 125
    invoke-static {v5}, Lkotlin/io/path/w;->e(Lkotlin/io/path/w;)Ljava/nio/file/Path;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-static {v5}, Lkotlin/io/path/w;->e(Lkotlin/io/path/w;)Ljava/nio/file/Path;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v5}, Lkotlin/io/path/w;->d(Lkotlin/io/path/w;)[Ljava/nio/file/LinkOption;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-static {v8, v9}, Lkotlin/io/path/A;->b(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-direct {v6, v7, v8, v5}, Lkotlin/io/path/j;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/j;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v6}, Lkotlin/collections/i;->addLast(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    move-object v6, p1

    .line 148
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_a

    .line 153
    .line 154
    invoke-virtual {v6}, Lkotlin/collections/i;->removeFirst()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    move-object v7, p1

    .line 159
    check-cast v7, Lkotlin/io/path/j;

    .line 160
    .line 161
    invoke-virtual {v7}, Lkotlin/io/path/j;->d()Ljava/nio/file/Path;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v7}, Lkotlin/io/path/j;->c()Lkotlin/io/path/j;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    if-eqz v8, :cond_4

    .line 170
    .line 171
    invoke-static {p1}, Lkotlin/io/path/I;->c(Ljava/nio/file/Path;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    invoke-static {v5}, Lkotlin/io/path/w;->d(Lkotlin/io/path/w;)[Ljava/nio/file/LinkOption;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    array-length v9, v8

    .line 179
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    check-cast v8, [Ljava/nio/file/LinkOption;

    .line 184
    .line 185
    array-length v9, v8

    .line 186
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    check-cast v8, [Ljava/nio/file/LinkOption;

    .line 191
    .line 192
    invoke-static {p1, v8}, Lkotlin/io/path/s;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    const/4 v9, 0x0

    .line 197
    if-eqz v8, :cond_9

    .line 198
    .line 199
    invoke-static {v7}, Lkotlin/io/path/A;->a(Lkotlin/io/path/j;)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-nez v8, :cond_8

    .line 204
    .line 205
    invoke-static {v5}, Lkotlin/io/path/w;->c(Lkotlin/io/path/w;)Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-eqz v8, :cond_6

    .line 210
    .line 211
    iput-object v0, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v6, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-static {v7}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v5, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-static {v0}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v7, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$7:Ljava/lang/Object;

    .line 234
    .line 235
    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$8:Ljava/lang/Object;

    .line 236
    .line 237
    iput v9, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->I$0:I

    .line 238
    .line 239
    iput v4, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->label:I

    .line 240
    .line 241
    invoke-virtual {v0, p1, p0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    if-ne v8, v1, :cond_5

    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_5
    move-object v8, v2

    .line 250
    move-object v9, v6

    .line 251
    move-object v2, p1

    .line 252
    move-object v6, v8

    .line 253
    :goto_1
    move-object p1, v2

    .line 254
    move-object v2, v6

    .line 255
    move-object v6, v9

    .line 256
    goto :goto_2

    .line 257
    :cond_6
    move-object v8, v2

    .line 258
    :goto_2
    invoke-static {v5}, Lkotlin/io/path/w;->d(Lkotlin/io/path/w;)[Ljava/nio/file/LinkOption;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    array-length v10, v9

    .line 263
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    check-cast v9, [Ljava/nio/file/LinkOption;

    .line 268
    .line 269
    array-length v10, v9

    .line 270
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    check-cast v9, [Ljava/nio/file/LinkOption;

    .line 275
    .line 276
    invoke-static {p1, v9}, Lkotlin/io/path/s;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-eqz p1, :cond_7

    .line 281
    .line 282
    invoke-virtual {v2, v7}, Lkotlin/io/path/f;->b(Lkotlin/io/path/j;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Ljava/util/Collection;

    .line 287
    .line 288
    invoke-virtual {v6, p1}, Lkotlin/collections/i;->addAll(Ljava/util/Collection;)Z

    .line 289
    .line 290
    .line 291
    :cond_7
    move-object v2, v8

    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_8
    invoke-static {}, Lkotlin/io/path/v;->a()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {p1}, Lkotlin/io/path/u;->a(Ljava/lang/String;)Ljava/nio/file/FileSystemLoopException;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    throw p1

    .line 306
    :cond_9
    new-array v8, v4, [Ljava/nio/file/LinkOption;

    .line 307
    .line 308
    invoke-static {}, Lkotlin/io/path/g;->a()Ljava/nio/file/LinkOption;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    aput-object v10, v8, v9

    .line 313
    .line 314
    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    check-cast v8, [Ljava/nio/file/LinkOption;

    .line 319
    .line 320
    invoke-static {p1, v8}, Lkotlin/io/path/t;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-eqz v8, :cond_3

    .line 325
    .line 326
    iput-object v0, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v6, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v2, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    .line 331
    .line 332
    invoke-static {v7}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    .line 337
    .line 338
    invoke-static {v5}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    .line 343
    .line 344
    invoke-static {v0}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    .line 349
    .line 350
    invoke-static {v7}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    iput-object v7, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    .line 355
    .line 356
    invoke-static {v2}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    iput-object v7, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$7:Ljava/lang/Object;

    .line 361
    .line 362
    invoke-static {p1}, Lw1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    iput-object v7, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$8:Ljava/lang/Object;

    .line 367
    .line 368
    iput v9, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->I$0:I

    .line 369
    .line 370
    iput v3, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->label:I

    .line 371
    .line 372
    invoke-virtual {v0, p1, p0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    if-ne p1, v1, :cond_3

    .line 377
    .line 378
    :goto_3
    return-object v1

    .line 379
    :cond_a
    sget-object p1, Lkotlin/j;->a:Lkotlin/j;

    .line 380
    .line 381
    return-object p1
.end method
