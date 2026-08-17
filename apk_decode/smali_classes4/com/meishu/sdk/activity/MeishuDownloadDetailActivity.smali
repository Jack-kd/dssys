.class public Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MeishuDownloadDetailAct"


# instance fields
.field private app_feature:Landroid/widget/TextView;

.field private app_feature_ll:Landroid/widget/LinearLayout;

.field private app_intor_url:Ljava/lang/String;

.field private app_intro:Landroid/widget/TextView;

.field private app_intro_ll:Landroid/widget/LinearLayout;

.field private app_name:Landroid/widget/TextView;

.field private app_name_ll:Landroid/widget/LinearLayout;

.field private app_permiss_ll:Landroid/widget/LinearLayout;

.field private app_permiss_tv:Landroid/widget/TextView;

.field private app_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field private app_permission_url:Ljava/lang/String;

.field private app_privacy:Ljava/lang/String;

.field private app_size:Landroid/widget/TextView;

.field private app_size_ll:Landroid/widget/LinearLayout;

.field private app_ver:Landroid/widget/TextView;

.field private app_ver_ll:Landroid/widget/LinearLayout;

.field private developer:Landroid/widget/TextView;

.field private developer_ll:Landroid/widget/LinearLayout;

.field private downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

.field private mBack:Landroid/widget/ImageView;

.field private mListView:Lcom/meishu/sdk/meishu_ad/view/ListViewForScrollView;

.field private mTitle:Landroid/widget/TextView;

.field private mlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private payment_types:Landroid/widget/TextView;

.field private payment_types_ll:Landroid/widget/LinearLayout;

.field private private_agreement_ll:Landroid/widget/LinearLayout;

.field private private_agreement_tv:Landroid/widget/TextView;

.field private score:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mlist:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intor_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permission_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "download_bean"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 14
    .line 15
    const-string v1, "page_title"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mTitle:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 35
    .line 36
    if-eqz v0, :cond_b

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_name:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_name_ll:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intor_url:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    .line 117
    .line 118
    new-instance v2, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$2;

    .line 119
    .line 120
    invoke-direct {v2, p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$2;-><init>(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intro_ll:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_feature()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_feature:Landroid/widget/TextView;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_feature()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_feature_ll:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getPayment_types()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    .line 173
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->payment_types:Landroid/widget/TextView;

    .line 174
    .line 175
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getPayment_types()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->payment_types_ll:Landroid/widget/LinearLayout;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :goto_3
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_6

    .line 201
    .line 202
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_ver:Landroid/widget/TextView;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_ver_ll:Landroid/widget/LinearLayout;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    :goto_4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_size:Landroid/widget/TextView;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_size_ll:Landroid/widget/LinearLayout;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    :goto_5
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_8

    .line 259
    .line 260
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->developer:Landroid/widget/TextView;

    .line 261
    .line 262
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->developer_ll:Landroid/widget/LinearLayout;

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    :goto_6
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const/4 v1, 0x0

    .line 284
    if-eqz v0, :cond_9

    .line 285
    .line 286
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permission:Ljava/util/List;

    .line 293
    .line 294
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->initPrivacy()V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_9
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_a

    .line 309
    .line 310
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permiss_ll:Landroid/widget/LinearLayout;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permission_url:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    .line 324
    .line 325
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    .line 329
    .line 330
    new-instance v2, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$3;

    .line 331
    .line 332
    invoke-direct {v2, p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$3;-><init>(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    .line 337
    .line 338
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_b

    .line 349
    .line 350
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->private_agreement_ll:Landroid/widget/LinearLayout;

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->private_agreement_tv:Landroid/widget/TextView;

    .line 362
    .line 363
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->private_agreement_tv:Landroid/widget/TextView;

    .line 367
    .line 368
    new-instance v2, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;

    .line 369
    .line 370
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;-><init>(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    :cond_b
    return-void
.end method

.method private initPrivacy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mlist:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$MyAdapter;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$MyAdapter;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mListView:Lcom/meishu/sdk/meishu_ad/view/ListViewForScrollView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    sget v0, Lcom/meishu/sdk/R$id;->ms_ic_back:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mBack:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget v0, Lcom/meishu/sdk/R$id;->ms_detail_title:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mTitle:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lcom/meishu/sdk/R$id;->ms_listView:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/meishu_ad/view/ListViewForScrollView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mListView:Lcom/meishu/sdk/meishu_ad/view/ListViewForScrollView;

    .line 30
    .line 31
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_name:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_name:Landroid/widget/TextView;

    .line 40
    .line 41
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_name_ll:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_name_ll:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_intro:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    .line 60
    .line 61
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_intro_ll:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_intro_ll:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_feature:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_feature:Landroid/widget/TextView;

    .line 80
    .line 81
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_feature_ll:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_feature_ll:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    sget v0, Lcom/meishu/sdk/R$id;->ms_payment_types:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->payment_types:Landroid/widget/TextView;

    .line 100
    .line 101
    sget v0, Lcom/meishu/sdk/R$id;->ms_payment_types_ll:I

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->payment_types_ll:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_ver:I

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_ver:Landroid/widget/TextView;

    .line 120
    .line 121
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_ver_ll:I

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/LinearLayout;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_ver_ll:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_size:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_size:Landroid/widget/TextView;

    .line 140
    .line 141
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_size_ll:I

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_size_ll:Landroid/widget/LinearLayout;

    .line 150
    .line 151
    sget v0, Lcom/meishu/sdk/R$id;->ms_developer:I

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/TextView;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->developer:Landroid/widget/TextView;

    .line 160
    .line 161
    sget v0, Lcom/meishu/sdk/R$id;->ms_developer_ll:I

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/LinearLayout;

    .line 168
    .line 169
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->developer_ll:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_Permiss_ll:I

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/widget/LinearLayout;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permiss_ll:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_permiss_tv:I

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/widget/TextView;

    .line 188
    .line 189
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    .line 190
    .line 191
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_private_agrement_ll:I

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/LinearLayout;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->private_agreement_ll:Landroid/widget/LinearLayout;

    .line 200
    .line 201
    sget v0, Lcom/meishu/sdk/R$id;->ms_app_private_agrement_tv:I

    .line 202
    .line 203
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->private_agreement_tv:Landroid/widget/TextView;

    .line 210
    .line 211
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->mBack:Landroid/widget/ImageView;

    .line 212
    .line 213
    new-instance v1, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$1;

    .line 214
    .line 215
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$1;-><init>(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Ljava/lang/String;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string v1, "download_bean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    const-string p1, "page_title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v1, p1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    aget-char v1, p1, v0

    .line 15
    .line 16
    const/16 v2, 0x3a

    .line 17
    .line 18
    if-ne v2, v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    aput-char v1, p1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    const-string p1, ""

    .line 37
    .line 38
    return-object p1
.end method


# virtual methods
.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_download_detail:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->initView()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->initData()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
