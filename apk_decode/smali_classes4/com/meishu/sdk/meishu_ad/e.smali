.class public Lcom/meishu/sdk/meishu_ad/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/bquery/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/bquery/h<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/e;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/e;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/e;->e:Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 1
    check-cast p2, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 19
    .line 20
    const/16 p3, -0x65

    .line 21
    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "splash video load error"

    .line 27
    .line 28
    invoke-virtual {p1, p2, v1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 34
    .line 35
    const-string p2, "splash video load error cid\uff1a"

    .line 36
    .line 37
    invoke-static {p2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p3, p2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 61
    .line 62
    const/16 v1, 0xc8

    .line 63
    .line 64
    const-string v2, "splash video load success"

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-static {v0, v1, p3}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/e;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/e;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 80
    .line 81
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 82
    .line 83
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/e;->e:Landroid/view/View;

    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    invoke-virtual/range {v2 .. v7}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 95
    .line 96
    invoke-direct {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 100
    .line 101
    iget v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setConfigWidth(I)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 107
    .line 108
    iget v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setConfigHeight(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 120
    .line 121
    iget v2, v2, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setIsEyes(I)V

    .line 124
    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x2

    .line 131
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    .line 132
    .line 133
    .line 134
    const/16 v2, 0x8

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    .line 137
    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lcom/meishu/sdk/meishu_ad/c;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Lcom/meishu/sdk/meishu_ad/c;-><init>(Lcom/meishu/sdk/meishu_ad/e;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAdListener(Lcom/meishu/sdk/meishu_ad/nativ/a;)V

    .line 149
    .line 150
    .line 151
    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/b;

    .line 152
    .line 153
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 154
    .line 155
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 156
    .line 157
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 158
    .line 159
    new-instance v4, Lcom/meishu/sdk/meishu_ad/d;

    .line 160
    .line 161
    invoke-direct {v4, p0, v0, p3}, Lcom/meishu/sdk/meishu_ad/d;-><init>(Lcom/meishu/sdk/meishu_ad/e;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v2, v3, v4}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 168
    .line 169
    .line 170
    iget-object p3, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 171
    .line 172
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {v0, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p3, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 180
    .line 181
    iget-object p3, p3, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, p3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    const-string v2, "m3u8"

    .line 191
    .line 192
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    if-nez p3, :cond_2

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    if-eqz p3, :cond_1

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 217
    .line 218
    invoke-static {p1, v1}, Lcom/meishu/sdk/meishu_ad/v;->d(Lcom/meishu/sdk/meishu_ad/v;Z)Z

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 227
    .line 228
    iget p2, p1, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 229
    .line 230
    if-ne p2, v1, :cond_4

    .line 231
    .line 232
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    .line 233
    .line 234
    if-eqz p1, :cond_3

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_3
    return-void

    .line 238
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 242
    .line 243
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/e;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 244
    .line 245
    iget-object p3, p0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 246
    .line 247
    invoke-virtual {p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    const/16 v1, -0x65

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1, v0, p2, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, " cid\uff1a"

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, v1, p2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
