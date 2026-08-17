.class public Lcom/meishu/sdk/activity/MeishuDetailActivity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_APP_NAME:Ljava/lang/String; = "EXTRA_APP_NAME"

.field public static final EXTRA_COMMENTS:Ljava/lang/String; = "EXTRA_COMMENTS"

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "EXTRA_CONTENT"

.field public static final EXTRA_DOWN_NUM:Ljava/lang/String; = "EXTRA_DOWN_NUM"

.field public static final EXTRA_DURL:Ljava/lang/String; = "EXTRA_DURL"

.field public static final EXTRA_ICON_URL:Ljava/lang/String; = "EXTRA_ICON_URL"

.field public static final EXTRA_INTERACTION_TYPE:Ljava/lang/String; = "EXTRA_INTERACTION_TYPE"

.field public static final EXTRA_SCORE:Ljava/lang/String; = "EXTRA_SCORE"

.field public static final EXTRA_STRONG_ACTION:Ljava/lang/String; = "EXTRA_STRONG_ACTION"

.field public static final EXTRA_VIDEO_COVER:Ljava/lang/String; = "EXTRA_VIDEO_COVER"

.field public static final EXTRA_VIDEO_END_COVER:Ljava/lang/String; = "EXTRA_VIDEO_END_COVER"

.field public static final EXTRA_VIDEO_HEIGHT:Ljava/lang/String; = "EXTRA_VIDEO_HEIGHT"

.field public static final EXTRA_VIDEO_WIDTH:Ljava/lang/String; = "EXTRA_VIDEO_WIDTH"

.field private static nativeAd:Lcom/meishu/sdk/platform/ms/c;

.field private static normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bQuery:Lcom/meishu/sdk/core/bquery/i;

.field private interactionType:I

.field private isFinished:Z

.field private mAppDetailRL:Landroid/widget/RelativeLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private strongAction:Z

.field private textureHeight:I

.field private textureWidth:I

.field private thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field private videoCover:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private whiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->interactionType:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->whiteList:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v0, Lcom/meishu/sdk/core/bquery/i;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->strongAction:Z

    .line 33
    .line 34
    new-instance v0, Lcom/meishu/sdk/activity/MeishuDetailActivity$4;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity$4;-><init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/activity/MeishuDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->gotoFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/activity/MeishuDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->textureWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/activity/MeishuDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->textureWidth:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/activity/MeishuDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->textureHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/activity/MeishuDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->textureHeight:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500()Lcom/meishu/sdk/platform/ms/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->nativeAd:Lcom/meishu/sdk/platform/ms/c;

    .line 2
    .line 3
    return-object v0
.end method

.method private gotoFinish()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->isFinished:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private loadAppDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FII)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 11
    .line 12
    sget v3, Lcom/meishu/sdk/R$id;->ms_text_title:I

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 21
    .line 22
    instance-of v3, v0, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 38
    .line 39
    sget v0, Lcom/meishu/sdk/R$id;->ms_text_content:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 48
    .line 49
    instance-of v0, p1, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 60
    .line 61
    sget p2, Lcom/meishu/sdk/R$id;->ms_text_content:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 79
    .line 80
    sget p2, Lcom/meishu/sdk/R$id;->ms_img_icon:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 87
    .line 88
    invoke-virtual {p1, p3, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 89
    .line 90
    .line 91
    :cond_3
    const/4 p1, 0x0

    .line 92
    cmpl-float p1, p4, p1

    .line 93
    .line 94
    if-lez p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 97
    .line 98
    sget p2, Lcom/meishu/sdk/R$id;->ms_text_rank:I

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 105
    .line 106
    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 107
    .line 108
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    const-string p4, "\u8bc4\u5206: %.1f"

    .line 117
    .line 118
    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 127
    .line 128
    sget p2, Lcom/meishu/sdk/R$id;->ms_text_rank:I

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 137
    .line 138
    .line 139
    :goto_1
    if-lez p5, :cond_5

    .line 140
    .line 141
    new-instance p1, Ljava/text/DecimalFormat;

    .line 142
    .line 143
    const-string p2, "#,###"

    .line 144
    .line 145
    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 149
    .line 150
    sget p3, Lcom/meishu/sdk/R$id;->ms_text_download_count:I

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lcom/meishu/sdk/core/bquery/i;

    .line 157
    .line 158
    sget-object p3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 159
    .line 160
    int-to-long v0, p5

    .line 161
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p4, "\u4e0b\u8f7d\u91cf: %s"

    .line 170
    .line 171
    invoke-static {p3, p4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 180
    .line 181
    sget p2, Lcom/meishu/sdk/R$id;->ms_text_download_count:I

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 190
    .line 191
    .line 192
    :goto_2
    if-lez p6, :cond_6

    .line 193
    .line 194
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 195
    .line 196
    sget p2, Lcom/meishu/sdk/R$id;->ms_text_comments:I

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 203
    .line 204
    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 205
    .line 206
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    const-string p4, "\u8bc4\u8bba\u6570: %d"

    .line 215
    .line 216
    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_6
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 225
    .line 226
    sget p2, Lcom/meishu/sdk/R$id;->ms_text_comments:I

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 239
    .line 240
    sget p2, Lcom/meishu/sdk/R$id;->ms_layout_app_detail_info:I

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 247
    .line 248
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 249
    .line 250
    .line 251
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_8

    .line 256
    .line 257
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 258
    .line 259
    sget p2, Lcom/meishu/sdk/R$id;->ms_img_icon:I

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 266
    .line 267
    invoke-virtual {p1, p3, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 272
    .line 273
    sget p2, Lcom/meishu/sdk/R$id;->ms_img_icon:I

    .line 274
    .line 275
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 282
    .line 283
    .line 284
    :goto_3
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 285
    .line 286
    sget p2, Lcom/meishu/sdk/R$id;->ms_button_download:I

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 293
    .line 294
    new-instance p2, Lcom/meishu/sdk/activity/MeishuDetailActivity$5;

    .line 295
    .line 296
    invoke-direct {p2, p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity$5;-><init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 300
    .line 301
    if-eqz p1, :cond_9

    .line 302
    .line 303
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    :cond_9
    return-void
.end method

.method private loadWeb(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->mAppDetailRL:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 36
    .line 37
    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v3, 0x1f

    .line 41
    .line 42
    if-ge v1, v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 59
    .line 60
    new-instance v1, Lcom/meishu/sdk/core/webview/m;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/webview/m;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static setMeishuVideoView(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 26
    .line 27
    .line 28
    :cond_0
    sput-object p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static setNativeAdData(Lcom/meishu/sdk/platform/ms/c;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->nativeAd:Lcom/meishu/sdk/platform/ms/c;

    .line 2
    .line 3
    return-void
.end method

.method private tryJumpDeepLink()V
    .locals 8

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->nativeAd:Lcom/meishu/sdk/platform/ms/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v3, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v3, v1

    .line 13
    :goto_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->nativeAd:Lcom/meishu/sdk/platform/ms/c;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :try_start_0
    invoke-interface {v3}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v4, "android.intent.category.BROWSABLE"

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    move v0, v2

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    sget-object v4, Lcom/meishu/sdk/activity/MeishuDetailActivity;->nativeAd:Lcom/meishu/sdk/platform/ms/c;

    .line 65
    .line 66
    iget v1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->interactionType:I

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_1
    move v5, v0

    .line 72
    iget-boolean v6, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->strongAction:Z

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;ZZLcom/meishu/sdk/core/utils/p0$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method private tryShowVideoCover()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->videoCover:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->bQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 22
    .line 23
    sget v1, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->videoCover:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    return-void

    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_detail:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/meishu/sdk/activity/MeishuDetailActivity;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 10
    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :try_start_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "EXTRA_INTERACTION_TYPE"

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->interactionType:I

    .line 59
    .line 60
    if-ne p1, v2, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "\u53c2\u6570 EXTRA_INTERACTION_TYPE \u9519\u8bef"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->gotoFinish()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "EXTRA_DURL"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    array-length v0, p1

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    :cond_2
    move-object v3, p0

    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "EXTRA_APP_NAME"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, "EXTRA_CONTENT"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "EXTRA_ICON_URL"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v2, "EXTRA_SCORE"

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v2, "EXTRA_DOWN_NUM"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v2, "EXTRA_COMMENTS"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v2, "EXTRA_VIDEO_WIDTH"

    .line 157
    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v2, "EXTRA_VIDEO_HEIGHT"

    .line 166
    .line 167
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v2, "EXTRA_STRONG_ACTION"

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->strongAction:Z

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v2, "EXTRA_VIDEO_END_COVER"

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->videoCover:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_4

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v2, "EXTRA_VIDEO_COVER"

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->videoCover:Ljava/lang/String;

    .line 212
    .line 213
    :cond_4
    sget v0, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Landroid/widget/ProgressBar;

    .line 220
    .line 221
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 222
    .line 223
    const/16 v2, 0x8

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_app_detail:I

    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 235
    .line 236
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->mAppDetailRL:Landroid/widget/RelativeLayout;

    .line 237
    .line 238
    sget v0, Lcom/meishu/sdk/R$id;->ms_web_view:I

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Landroid/webkit/WebView;

    .line 245
    .line 246
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 247
    .line 248
    iget v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->interactionType:I

    .line 249
    .line 250
    if-nez v0, :cond_5

    .line 251
    .line 252
    aget-object p1, p1, v1

    .line 253
    .line 254
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->loadWeb(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    move-object v3, p0

    .line 258
    goto :goto_1

    .line 259
    :cond_5
    if-ne v0, v3, :cond_6

    .line 260
    .line 261
    move-object v3, p0

    .line 262
    invoke-direct/range {v3 .. v9}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->loadAppDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FII)V

    .line 263
    .line 264
    .line 265
    :goto_1
    sget p1, Lcom/meishu/sdk/R$id;->ms_img_close:I

    .line 266
    .line 267
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    new-instance v0, Lcom/meishu/sdk/activity/MeishuDetailActivity$1;

    .line 272
    .line 273
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity$1;-><init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    sget p1, Lcom/meishu/sdk/R$id;->ms_texture_view:I

    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    check-cast p1, Landroid/view/TextureView;

    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 296
    .line 297
    int-to-float v1, v0

    .line 298
    const v2, 0x3fe38e39

    .line 299
    .line 300
    .line 301
    div-float/2addr v1, v2

    .line 302
    float-to-int v1, v1

    .line 303
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    .line 305
    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 312
    .line 313
    .line 314
    new-instance v0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;

    .line 315
    .line 316
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;-><init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;Landroid/view/TextureView;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, v3, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 323
    .line 324
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    new-instance v1, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;

    .line 329
    .line 330
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;-><init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;Landroid/view/TextureView;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 334
    .line 335
    .line 336
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->tryJumpDeepLink()V

    .line 337
    .line 338
    .line 339
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->tryShowVideoCover()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_6
    move-object v3, p0

    .line 344
    iget-object p1, v3, Lcom/meishu/sdk/activity/MeishuDetailActivity;->TAG:Ljava/lang/String;

    .line 345
    .line 346
    const-string v0, "\u4e0d\u652f\u6301\u7684 InteractionType"

    .line 347
    .line 348
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->gotoFinish()V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :goto_2
    iget-object p1, v3, Lcom/meishu/sdk/activity/MeishuDetailActivity;->TAG:Ljava/lang/String;

    .line 356
    .line 357
    const-string v0, "\u53c2\u6570 EXTRA_DURL \u9519\u8bef"

    .line 358
    .line 359
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->gotoFinish()V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_7
    move-object v3, p0

    .line 367
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->gotoFinish()V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method public safeOnDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    sput-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->nativeAd:Lcom/meishu/sdk/platform/ms/c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->o:Z

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->n:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->l:Landroid/view/Surface;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->h:Landroid/view/Surface;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 53
    .line 54
    sput-object v0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->normalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_3
    return-void
.end method

.method public safeOnPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public safeOnResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->d()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->thisNormalMediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity;->webView:Landroid/webkit/WebView;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
