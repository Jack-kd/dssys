.class public Lcom/meishu/sdk/meishu_ad/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


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
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/j0;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/j0;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/j0;->e:Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 6
    .line 7
    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v2, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef cid\uff1a"

    .line 21
    .line 22
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef cid\uff1a"

    .line 2
    .line 3
    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    move-object v4, p1

    .line 16
    check-cast v4, [B

    .line 17
    .line 18
    if-eqz v4, :cond_4

    .line 19
    .line 20
    array-length p1, v4

    .line 21
    if-lez p1, :cond_4

    .line 22
    .line 23
    array-length p1, v4

    .line 24
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lt p1, v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 33
    .line 34
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef cid:"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {p1, v0, v3}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object p1, v0

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_0
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/f0;->a([B)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v0, 0x0

    .line 83
    const/16 v3, 0xc8

    .line 84
    .line 85
    const/4 v11, 0x1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 91
    .line 92
    const-string v5, "splash gif load success"

    .line 93
    .line 94
    invoke-static {p1, v3, v5}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 98
    .line 99
    invoke-static {p1, v11, v0}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 100
    .line 101
    .line 102
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/j0;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/j0;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 107
    .line 108
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 109
    .line 110
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/j0;->e:Landroid/view/View;

    .line 111
    .line 112
    const/4 v10, 0x1

    .line 113
    invoke-virtual/range {v5 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 117
    .line 118
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/j0;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 119
    .line 120
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 121
    .line 122
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/j0;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 123
    .line 124
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v6, 0x1

    .line 128
    invoke-static/range {v3 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;[BLcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;ZLcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 135
    .line 136
    const-string v5, "splash image load success"

    .line 137
    .line 138
    invoke-static {p1, v3, v5}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 142
    .line 143
    invoke-static {p1, v11, v0}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 144
    .line 145
    .line 146
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 147
    .line 148
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/j0;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 149
    .line 150
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/j0;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 151
    .line 152
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 153
    .line 154
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/j0;->e:Landroid/view/View;

    .line 155
    .line 156
    const/4 v10, 0x1

    .line 157
    invoke-virtual/range {v5 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 158
    .line 159
    .line 160
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 161
    .line 162
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/j0;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 163
    .line 164
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 165
    .line 166
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/j0;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 167
    .line 168
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 169
    .line 170
    const/4 v10, 0x0

    .line 171
    const/4 v6, 0x0

    .line 172
    invoke-static/range {v3 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;[BLcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;ZLcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 185
    .line 186
    iput-boolean v11, p1, Lcom/meishu/sdk/meishu_ad/v;->h:Z

    .line 187
    .line 188
    iget v4, p1, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 189
    .line 190
    if-ne v4, v11, :cond_3

    .line 191
    .line 192
    iget-boolean v4, p1, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    .line 193
    .line 194
    if-eqz v4, :cond_2

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    return-void

    .line 198
    :cond_3
    :goto_1
    invoke-virtual {p1, v0, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 205
    .line 206
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {p1, v0, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 228
    .line 229
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-static {p1, v0, v3}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 245
    .line 246
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 247
    .line 248
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {p1, v0, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 270
    .line 271
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {p1, v0, v3}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 287
    .line 288
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/j0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 289
    .line 290
    sget-object v4, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-virtual {v0, v3, v2, v4}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j0;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/j0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 308
    .line 309
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-static {v0, v2, v1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    return-void
.end method
