.class public Lcom/meishu/sdk/core/view/DownloadView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/DownloadView$SafeLinkMovementMethod;
    }
.end annotation


# static fields
.field public static final CLICK_DOWNLOAD_INFO_TYPE_DESCRIBE:Ljava/lang/String; = "describe"

.field public static final CLICK_DOWNLOAD_INFO_TYPE_PERMISSION:Ljava/lang/String; = "permission"

.field public static final CLICK_DOWNLOAD_INFO_TYPE_PRIVACY:Ljava/lang/String; = "privacy"

.field private static final TAG:Ljava/lang/String; = "DownloadView"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bindClickableDownloadInfo(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, " |"

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v2, "\u5e94\u7528\u540d\u79f0\uff1a"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    const-string v2, " \u5e94\u7528\u7248\u672c\uff1a"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    const-string v2, " \u5e94\u7528\u5927\u5c0f\uff1a"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_4

    .line 108
    .line 109
    const-string v2, " \u5f00\u53d1\u8005\uff1a"

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    const/16 v4, 0x21

    .line 135
    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-eqz v2, :cond_6

    .line 143
    .line 144
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const-string v5, " \u6743\u9650\u8be6\u60c5"

    .line 149
    .line 150
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 155
    .line 156
    .line 157
    new-instance v5, Lcom/meishu/sdk/core/view/DownloadView$1;

    .line 158
    .line 159
    invoke-direct {v5, p0, p1, v1}, Lcom/meishu/sdk/core/view/DownloadView$1;-><init>(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v6, v2, 0x5

    .line 163
    .line 164
    invoke-virtual {v0, v5, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    const-string v5, " \u9690\u79c1\u534f\u8bae"

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 188
    .line 189
    .line 190
    new-instance v3, Lcom/meishu/sdk/core/view/DownloadView$2;

    .line 191
    .line 192
    invoke-direct {v3, p0, p1, v1}, Lcom/meishu/sdk/core/view/DownloadView$2;-><init>(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v5, v2, 0x5

    .line 196
    .line 197
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    .line 199
    .line 200
    :cond_7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_8

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_9

    .line 219
    .line 220
    :cond_8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    const-string v3, " \u529f\u80fd\u4ecb\u7ecd"

    .line 225
    .line 226
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    .line 228
    .line 229
    new-instance v3, Lcom/meishu/sdk/core/view/DownloadView$3;

    .line 230
    .line 231
    invoke-direct {v3, p0, p1, v1}, Lcom/meishu/sdk/core/view/DownloadView$3;-><init>(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    add-int/lit8 p1, v2, 0x5

    .line 235
    .line 236
    invoke-virtual {v0, v3, v2, p1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 237
    .line 238
    .line 239
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_a

    .line 244
    .line 245
    const/16 p1, 0x8

    .line 246
    .line 247
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    :cond_a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/meishu/sdk/core/view/DownloadView$SafeLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 258
    .line 259
    .line 260
    :cond_b
    :goto_0
    return-void
.end method

.method public static isDownloadStyleAd(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static openByType(Lcom/meishu/sdk/core/ad/BaseAdSlot;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/meishu/sdk/core/view/DownloadView;->toBean(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/meishu/sdk/core/view/DownloadView;->openByType(Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static openByType(Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    .line 4
    :try_start_0
    const-string p2, ""

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1eda3a31

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x12bedc78

    if-eq v0, v1, :cond_2

    const v1, 0x3cb0b6cb

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "describe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_1

    :cond_2
    const-string v0, "privacy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "permission"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_c

    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_5

    goto :goto_2

    :cond_5
    if-nez p0, :cond_6

    goto :goto_2

    .line 5
    :cond_6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meishu/sdk/core/view/DownloadView;->openWebView(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_7
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 8
    new-instance p2, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    invoke-direct {p2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission(Ljava/util/List;)V

    .line 10
    const-string p0, "\u6743\u9650\u8be6\u60c5"

    invoke-static {p1, p2, p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez p0, :cond_9

    goto :goto_2

    .line 11
    :cond_9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meishu/sdk/core/view/DownloadView;->openWebView(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 14
    new-instance p2, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    invoke-direct {p2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 16
    const-string p0, "\u529f\u80fd\u4ecb\u7ecd"

    invoke-static {p1, p2, p0}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Ljava/lang/String;)V

    :cond_b
    :goto_2
    return-void

    :cond_c
    if-eqz p0, :cond_d

    .line 17
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_d
    const/4 p0, 0x0

    :goto_3
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/view/DownloadView;->openWebView(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static openByType(Lcom/meishu/sdk/platform/ms/c;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/meishu/sdk/core/view/DownloadView;->openByType(Lcom/meishu/sdk/core/ad/BaseAdSlot;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static openWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v1, Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    instance-of v1, p0, Landroid/app/Activity;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const/high16 v1, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string v1, "EXTRA_AD_DURL_KEY"

    .line 25
    .line 26
    filled-new-array {p1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private setImage(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance p2, Lcom/meishu/sdk/core/bquery/i;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p2, p3, p1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/meishu/sdk/core/bquery/i;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance p2, Lcom/meishu/sdk/core/bquery/i;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 23
    .line 24
    instance-of v0, p1, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static toBean(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/DownloadDialogBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_ver(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_feature()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_feature(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_privacy()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPayment_types()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setPayment_types(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intor_url(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method


# virtual methods
.method public handleDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "DownloadView"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "handleDownloadView: interactionType="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/TextView;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Lcom/meishu/sdk/core/view/DownloadView;->toBean(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/view/DownloadView;->bindClickableDownloadInfo(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public handleFeedDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;)V
    .locals 9

    .line 1
    if-eqz p2, :cond_d

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "DownloadView"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "handleDownloadView: interactionType="

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne v0, v1, :cond_d

    .line 39
    .line 40
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    const-string v4, " "

    .line 58
    .line 59
    const-string v5, " |"

    .line 60
    .line 61
    if-eqz p3, :cond_4

    .line 62
    .line 63
    :try_start_1
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const/16 v7, 0x12d

    .line 68
    .line 69
    if-eq v6, v7, :cond_3

    .line 70
    .line 71
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const/16 v7, 0x191

    .line 76
    .line 77
    if-ne v6, v7, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    const/16 v6, 0x1f5

    .line 85
    .line 86
    if-ne p3, v6, :cond_4

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-nez p3, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {p3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-nez p3, :cond_4

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {p3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-virtual {p3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-nez p3, :cond_4

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {p3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    const/16 v6, 0x21

    .line 177
    .line 178
    if-eqz p3, :cond_5

    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    if-eqz p3, :cond_6

    .line 185
    .line 186
    :cond_5
    const-string p3, " \u6743\u9650"

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    invoke-virtual {v3, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    .line 198
    .line 199
    new-instance p3, Lcom/meishu/sdk/core/view/DownloadView$4;

    .line 200
    .line 201
    invoke-direct {p3, p0, v0, p2, p1}, Lcom/meishu/sdk/core/view/DownloadView$4;-><init>(Lcom/meishu/sdk/core/view/DownloadView;Landroid/widget/TextView;Lcom/meishu/sdk/core/ad/BaseAdSlot;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 v8, v7, 0x3

    .line 205
    .line 206
    invoke-virtual {v3, p3, v7, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 207
    .line 208
    .line 209
    :cond_6
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    if-nez p3, :cond_7

    .line 218
    .line 219
    const-string p3, " \u9690\u79c1"

    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    invoke-virtual {v3, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    invoke-virtual {p3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 230
    .line 231
    .line 232
    new-instance p3, Lcom/meishu/sdk/core/view/DownloadView$5;

    .line 233
    .line 234
    invoke-direct {p3, p0, v0, p2, p1}, Lcom/meishu/sdk/core/view/DownloadView$5;-><init>(Lcom/meishu/sdk/core/view/DownloadView;Landroid/widget/TextView;Lcom/meishu/sdk/core/ad/BaseAdSlot;Landroid/view/View;)V

    .line 235
    .line 236
    .line 237
    add-int/lit8 v5, v7, 0x3

    .line 238
    .line 239
    invoke-virtual {v3, p3, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    if-eqz p3, :cond_8

    .line 251
    .line 252
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result p3

    .line 260
    if-nez p3, :cond_9

    .line 261
    .line 262
    :cond_8
    const-string p3, " \u529f\u80fd"

    .line 263
    .line 264
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-virtual {v3, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 269
    .line 270
    .line 271
    new-instance p3, Lcom/meishu/sdk/core/view/DownloadView$6;

    .line 272
    .line 273
    invoke-direct {p3, p0, v0, p2, p1}, Lcom/meishu/sdk/core/view/DownloadView$6;-><init>(Lcom/meishu/sdk/core/view/DownloadView;Landroid/widget/TextView;Lcom/meishu/sdk/core/ad/BaseAdSlot;Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    add-int/lit8 v7, v5, 0x3

    .line 277
    .line 278
    invoke-virtual {v3, p3, v5, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 279
    .line 280
    .line 281
    :cond_9
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p3

    .line 285
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_a

    .line 290
    .line 291
    const/16 p3, 0x8

    .line 292
    .line 293
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_a
    const-string v5, "|"

    .line 298
    .line 299
    invoke-virtual {p3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_b

    .line 304
    .line 305
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    sub-int/2addr v5, v1

    .line 310
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 315
    .line 316
    .line 317
    :cond_b
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result p3

    .line 321
    if-eqz p3, :cond_c

    .line 322
    .line 323
    invoke-virtual {v3, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 324
    .line 325
    .line 326
    :cond_c
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    invoke-static {}, Lcom/meishu/sdk/core/view/DownloadView$SafeLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 334
    .line 335
    .line 336
    sget p3, Lcom/meishu/sdk/R$id;->ms_download_layer_app_logo:I

    .line 337
    .line 338
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIcon()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-direct {p0, p1, p3, v0}, Lcom/meishu/sdk/core/view/DownloadView;->setImage(Landroid/view/View;ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    sget p3, Lcom/meishu/sdk/R$id;->ms_download_layer_app_name:I

    .line 346
    .line 347
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-direct {p0, p1, p3, v0}, Lcom/meishu/sdk/core/view/DownloadView;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 352
    .line 353
    .line 354
    sget p3, Lcom/meishu/sdk/R$id;->ms_download_layer_app_developer:I

    .line 355
    .line 356
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-direct {p0, p1, p3, p2}, Lcom/meishu/sdk/core/view/DownloadView;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance p2, Lcom/meishu/sdk/core/bquery/i;

    .line 364
    .line 365
    invoke-direct {p2, p1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 366
    .line 367
    .line 368
    sget p1, Lcom/meishu/sdk/R$id;->ms_download_layer_layout:I

    .line 369
    .line 370
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 375
    .line 376
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    :cond_d
    :goto_5
    return-void
.end method
