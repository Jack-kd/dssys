.class public Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# static fields
.field public static y:Lcom/meishu/sdk/platform/ms/c;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Landroid/view/View;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_appdetail:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    const-string v2, "EXTRA_AD_DURL_KEY"

    .line 8
    .line 9
    const-class v3, Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->v:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    :try_start_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->v:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    filled-new-array {p1}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object p1, v0

    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :catch_0
    move-exception v0

    .line 44
    move-object p1, v0

    .line 45
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->m:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_7

    .line 57
    .line 58
    new-instance p1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->m:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_permission:I

    .line 77
    .line 78
    if-ne v0, v1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->u:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    :try_start_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->u:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v0, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    filled-new-array {p1}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_1
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->t:Ljava/util/List;

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    new-instance p1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->t:Ljava/util/List;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p1}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_privacy:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .line 137
    if-ne v0, v1, :cond_4

    .line 138
    .line 139
    :try_start_6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->r:Ljava/lang/String;

    .line 140
    .line 141
    new-instance v0, Landroid/content/Intent;

    .line 142
    .line 143
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    filled-new-array {p1}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :catch_2
    move-exception v0

    .line 158
    move-object p1, v0

    .line 159
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_downloadBtn:I

    .line 169
    .line 170
    if-ne v0, v1, :cond_6

    .line 171
    .line 172
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 173
    .line 174
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    sget-object v0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 183
    .line 184
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 189
    .line 190
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    sget-object v0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 199
    .line 200
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 205
    .line 206
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    sget-object v0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 215
    .line 216
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 221
    .line 222
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    sget-object v0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 231
    .line 232
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 237
    .line 238
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-nez p1, :cond_5

    .line 247
    .line 248
    const-string p1, ""

    .line 249
    .line 250
    :cond_5
    move-object v4, p1

    .line 251
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 252
    .line 253
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils$c;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 260
    .line 261
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const/4 v0, 0x0

    .line 270
    aget-object v3, p1, v0

    .line 271
    .line 272
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->i:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual/range {v1 .. v9}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string p1, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 278
    .line 279
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    sget v0, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_cancel:I

    .line 295
    .line 296
    if-ne p1, v0, :cond_7

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    .line 304
    .line 305
    :cond_7
    :goto_1
    return-void
.end method

.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    sget p1, Lcom/meishu/sdk/R$layout;->ms_dialog_meishu_download_landscape:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget p1, Lcom/meishu/sdk/R$layout;->ms_dialog_meishu_download:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_imageview:I

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->a:Landroid/widget/ImageView;

    .line 37
    .line 38
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_title:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->b:Landroid/widget/TextView;

    .line 47
    .line 48
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_version:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->c:Landroid/widget/TextView;

    .line 57
    .line 58
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_size:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->w:Landroid/widget/TextView;

    .line 67
    .line 68
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_owner:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->d:Landroid/widget/TextView;

    .line 77
    .line 78
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_appdetail:I

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->e:Landroid/widget/TextView;

    .line 87
    .line 88
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_divider:I

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->s:Landroid/view/View;

    .line 95
    .line 96
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_permission:I

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->x:Landroid/widget/TextView;

    .line 105
    .line 106
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_privacy:I

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->f:Landroid/widget/TextView;

    .line 115
    .line 116
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_downloadBtn:I

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->g:Landroid/widget/TextView;

    .line 125
    .line 126
    sget p1, Lcom/meishu/sdk/R$id;->ms_dialog_meishu_download_cancel:I

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->h:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->e:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->x:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->f:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->g:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->h:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 162
    .line 163
    const-string v0, "DownLoadDialog"

    .line 164
    .line 165
    if-eqz p1, :cond_1

    .line 166
    .line 167
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_1

    .line 172
    .line 173
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->j:Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->i:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getIcon()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->k:Ljava/lang/String;

    .line 190
    .line 191
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeveloper()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->l:Ljava/lang/String;

    .line 196
    .line 197
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getApp_intro()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->m:Ljava/lang/String;

    .line 202
    .line 203
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getApp_feature()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->n:Ljava/lang/String;

    .line 208
    .line 209
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getPayment_types()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->o:Ljava/lang/String;

    .line 214
    .line 215
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getApp_ver()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->p:Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getApp_size()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->q:Ljava/lang/String;

    .line 226
    .line 227
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getApp_privacy()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getPrivacy_agreement()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->r:Ljava/lang/String;

    .line 235
    .line 236
    instance-of v1, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 237
    .line 238
    if-eqz v1, :cond_1

    .line 239
    .line 240
    move-object v1, p1

    .line 241
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->t:Ljava/util/List;

    .line 248
    .line 249
    move-object v1, p1

    .line 250
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->u:Ljava/lang/String;

    .line 257
    .line 258
    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :catch_0
    move-exception p1

    .line 268
    const-string v1, "DownLoadDialog: "

    .line 269
    .line 270
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    :cond_1
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->k:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-nez p1, :cond_2

    .line 298
    .line 299
    new-instance p1, Lcom/meishu/sdk/core/bquery/i;

    .line 300
    .line 301
    const/4 v1, 0x0

    .line 302
    invoke-direct {p1, v1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/content/Context;)V

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->a:Landroid/widget/ImageView;

    .line 306
    .line 307
    iput-object v1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 308
    .line 309
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->k:Ljava/lang/String;

    .line 310
    .line 311
    const/4 v2, 0x0

    .line 312
    invoke-virtual {p1, v1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :catch_1
    move-exception p1

    .line 317
    goto/16 :goto_8

    .line 318
    .line 319
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->j:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    const/16 v1, 0x8

    .line 326
    .line 327
    if-nez p1, :cond_3

    .line 328
    .line 329
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->b:Landroid/widget/TextView;

    .line 330
    .line 331
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->j:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->b:Landroid/widget/TextView;

    .line 338
    .line 339
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    :goto_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->p:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-nez p1, :cond_4

    .line 349
    .line 350
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->c:Landroid/widget/TextView;

    .line 351
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v3, "\u7248\u672c\u53f7 \uff1a"

    .line 358
    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->p:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->c:Landroid/widget/TextView;

    .line 376
    .line 377
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :goto_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->q:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_5

    .line 387
    .line 388
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->w:Landroid/widget/TextView;

    .line 389
    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const-string v3, "\u5927\u5c0f \uff1a"

    .line 396
    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->q:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->w:Landroid/widget/TextView;

    .line 414
    .line 415
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    :goto_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->l:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    if-nez p1, :cond_6

    .line 425
    .line 426
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->d:Landroid/widget/TextView;

    .line 427
    .line 428
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->l:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->d:Landroid/widget/TextView;

    .line 435
    .line 436
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    :goto_6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->r:Ljava/lang/String;

    .line 440
    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    if-nez p1, :cond_7

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->s:Landroid/view/View;

    .line 449
    .line 450
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->f:Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    :goto_7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->j:Ljava/lang/String;

    .line 459
    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    if-eqz p1, :cond_8

    .line 465
    .line 466
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->n:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-eqz p1, :cond_8

    .line 473
    .line 474
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->m:Ljava/lang/String;

    .line 475
    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_8

    .line 481
    .line 482
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->q:Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    if-eqz p1, :cond_8

    .line 489
    .line 490
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->l:Ljava/lang/String;

    .line 491
    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    if-eqz p1, :cond_8

    .line 497
    .line 498
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->o:Ljava/lang/String;

    .line 499
    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 501
    .line 502
    .line 503
    move-result p1

    .line 504
    if-eqz p1, :cond_8

    .line 505
    .line 506
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->s:Landroid/view/View;

    .line 507
    .line 508
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->e:Landroid/widget/TextView;

    .line 512
    .line 513
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 514
    .line 515
    .line 516
    goto :goto_9

    .line 517
    :goto_8
    const-string v1, "initData: "

    .line 518
    .line 519
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    :cond_8
    :goto_9
    return-void
.end method

.method public safeOnDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 6
    .line 7
    return-void
.end method
