.class public Lcom/meishu/sdk/meishu_ad/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/banner/b;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/banner/a;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

.field public final synthetic d:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field public final synthetic e:Lcom/meishu/sdk/core/bquery/i;

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/banner/b;Lcom/meishu/sdk/meishu_ad/banner/a;Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;Lcom/meishu/sdk/core/view/gif/GifImageView;Lcom/meishu/sdk/core/bquery/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/a;->b:Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/a;->c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/a;->d:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/a;->e:Lcom/meishu/sdk/core/bquery/i;

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
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 4
    .line 5
    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 6
    .line 7
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 4
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
    const-string v0, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [B

    .line 14
    .line 15
    if-eqz p1, :cond_7

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    if-lez v1, :cond_7

    .line 19
    .line 20
    array-length v1, p1

    .line 21
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 30
    .line 31
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    iput-wide v2, v1, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 44
    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->b:Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/v;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/meishu/sdk/platform/ms/banner/c;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->b:Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/meishu/sdk/platform/ms/banner/c;-><init>(Lcom/meishu/sdk/meishu_ad/banner/a;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;->setBannerAd(Lcom/meishu/sdk/platform/ms/banner/c;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 86
    .line 87
    check-cast v2, Lcom/meishu/sdk/platform/ms/banner/a;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/platform/ms/banner/a;->onADLoaded(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/f0;->a([B)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->d:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 99
    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v2, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->d:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    array-length v2, p1

    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-nez p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 122
    .line 123
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a;->d:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 130
    .line 131
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->e:Lcom/meishu/sdk/core/bquery/i;

    .line 135
    .line 136
    sget v2, Lcom/meishu/sdk/R$id;->ms_banner_close_button:I

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 143
    .line 144
    new-instance v2, Lcom/meishu/sdk/meishu_ad/a$a;

    .line 145
    .line 146
    invoke-direct {v2, p0, v1}, Lcom/meishu/sdk/meishu_ad/a$a;-><init>(Lcom/meishu/sdk/meishu_ad/a;Lcom/meishu/sdk/platform/ms/banner/c;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->e:Lcom/meishu/sdk/core/bquery/i;

    .line 157
    .line 158
    sget v2, Lcom/meishu/sdk/R$id;->ms_banner_image:I

    .line 159
    .line 160
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 165
    .line 166
    new-instance v2, Lcom/meishu/sdk/meishu_ad/a$b;

    .line 167
    .line 168
    invoke-direct {v2, p0, v1}, Lcom/meishu/sdk/meishu_ad/a$b;-><init>(Lcom/meishu/sdk/meishu_ad/a;Lcom/meishu/sdk/platform/ms/banner/c;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    return-void

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 182
    .line 183
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 192
    .line 193
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :catchall_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 202
    .line 203
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 204
    .line 205
    invoke-virtual {p1, v1, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method
