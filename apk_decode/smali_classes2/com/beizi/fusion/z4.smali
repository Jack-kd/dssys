.class public Lcom/beizi/fusion/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/AdActivity$b;


# static fields
.field public static j:Ljava/util/LinkedList;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/beizi/fusion/z4;->j:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/beizi/fusion/z4;->d:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/beizi/fusion/z4;->e:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/beizi/fusion/z4;->f:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p5, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, p0, Lcom/beizi/fusion/z4;->i:Z

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/z4;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/z4;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/z4;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/z4;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/z4;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/beizi/fusion/z4;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/beizi/fusion/z4;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/beizi/fusion/z4;->d:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public static synthetic b(Lcom/beizi/fusion/z4;)Landroid/webkit/WebView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic b(Lcom/beizi/fusion/z4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/z4;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 33
    invoke-static {}, Lcom/beizi/fusion/b4;->j()Lcom/beizi/fusion/b4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/b4;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/beizi/fusion/z4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/z4;->d()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/beizi/fusion/z4;->i:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/beizi/fusion/z4;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/beizi/fusion/z4;->h:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/z4;->g:Z

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/beizi/fusion/so;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/z4;->destroy()V

    .line 11
    invoke-direct {p0}, Lcom/beizi/fusion/z4;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private e()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/z4;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/z4;->g:Z

    .line 8
    .line 9
    if-nez v0, :cond_9

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/z4;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/beizi/fusion/z4;->g:Z

    .line 23
    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/z4;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/high16 v3, 0x10000000

    .line 35
    .line 36
    if-eqz v2, :cond_6

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v4, "bzopen"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-lez v2, :cond_6

    .line 69
    .line 70
    new-instance v2, Landroid/content/Intent;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "android.intent.action.MAIN"

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const-string v3, "android.intent.category.LAUNCHER"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const-string v3, "flags"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/4 v5, 0x2

    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    :try_start_1
    const-string v4, "0x"

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    const-string v4, "0X"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :catch_0
    move-exception v3

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/16 v4, 0x10

    .line 136
    .line 137
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_2
    new-instance v3, Landroid/content/ComponentName;

    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const/4 v7, 0x0

    .line 159
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Ljava/lang/String;

    .line 164
    .line 165
    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    const-string v3, "rect"

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    if-nez v3, :cond_5

    .line 182
    .line 183
    :try_start_3
    const-string v3, ":"

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    array-length v3, v1

    .line 190
    const/4 v4, 0x4

    .line 191
    if-ne v3, v4, :cond_5

    .line 192
    .line 193
    new-instance v3, Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 196
    .line 197
    .line 198
    aget-object v4, v1, v7

    .line 199
    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    aget-object v0, v1, v0

    .line 205
    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    aget-object v5, v1, v5

    .line 211
    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    const/4 v6, 0x3

    .line 217
    aget-object v1, v1, v6

    .line 218
    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :catch_1
    move-exception v0

    .line 231
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_6
    iget-object v2, p0, Lcom/beizi/fusion/z4;->f:Ljava/lang/String;

    .line 241
    .line 242
    const-string v4, "hwpps://landingpage"

    .line 243
    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_7

    .line 249
    .line 250
    new-instance v0, Landroid/content/Intent;

    .line 251
    .line 252
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_7
    iget-object v2, p0, Lcom/beizi/fusion/z4;->f:Ljava/lang/String;

    .line 268
    .line 269
    const-string v4, "intent"

    .line 270
    .line 271
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_8

    .line 276
    .line 277
    iget-object v1, p0, Lcom/beizi/fusion/z4;->f:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    iget-object v1, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    .line 287
    .line 288
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .line 293
    .line 294
    const-string v2, "android.intent.action.VIEW"

    .line 295
    .line 296
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .line 298
    .line 299
    const v1, 0x30008000

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    .line 306
    .line 307
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 312
    .line 313
    .line 314
    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public b()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$style;->BeiZiTheme:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$layout;->activity_in_app_browser:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    sget-object v0, Lcom/beizi/fusion/z4;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    iget-object v1, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$id;->web_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 10
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 14
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/beizi/fusion/eq;->a(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 21
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 24
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/fusion/z4;->i:Z

    if-eqz v1, :cond_2

    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/fusion/z4$a;

    invoke-direct {v2, p0}, Lcom/beizi/fusion/z4$a;-><init>(Lcom/beizi/fusion/z4;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/fusion/z4$b;

    invoke-direct {v2, p0}, Lcom/beizi/fusion/z4$b;-><init>(Lcom/beizi/fusion/z4;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/fusion/z4$c;

    invoke-direct {v2, p0}, Lcom/beizi/fusion/z4$c;-><init>(Lcom/beizi/fusion/z4;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/fusion/z4$d;

    iget-object v3, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v0}, Lcom/beizi/fusion/z4$d;-><init>(Lcom/beizi/fusion/z4;Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/z4;->a:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$id;->close_iv:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/fusion/z4;->c:Landroid/widget/ImageView;

    .line 31
    new-instance v1, Lcom/beizi/fusion/z4$e;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/z4$e;-><init>(Lcom/beizi/fusion/z4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 32
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/beizi/fusion/z4;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 12
    const-string v0, "...........................backPressed..........................."

    const-string v1, "lance"

    invoke-static {v1, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 15
    const-string v0, " mWebView.goBack()"

    invoke-static {v1, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/z4;->d()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/beizi/fusion/eq;->a(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/z4;->b:Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
