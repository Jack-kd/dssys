.class public Lcom/meishu/sdk/core/utils/AppStoreUtil$InstallReceiver;
.super Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/AppStoreUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string v0, "AppStoreUtil"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_7

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "onReceive:  app_added  "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "android.content.pm.extra.STATUS"

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    sget-object v1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->a:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v1, :cond_7

    .line 56
    .line 57
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    if-eqz p1, :cond_7

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    :try_start_1
    sget-object v1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->b:[Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    const-string v3, "Report send dn_succ"

    .line 69
    .line 70
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    array-length v3, v1

    .line 74
    move v4, v2

    .line 75
    :goto_0
    if-ge v4, v3, :cond_1

    .line 76
    .line 77
    aget-object v5, v1, v4

    .line 78
    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_0

    .line 84
    .line 85
    new-instance v6, Lcom/meishu/sdk/core/utils/i;

    .line 86
    .line 87
    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v5, v6}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_2

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const-string v1, "onDownloaded: \u4e0b\u8f7d\u5b8c\u6210"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    .line 107
    .line 108
    :goto_3
    :try_start_3
    sget-object v1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->c:[Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    const-string v3, "Report send dn_inst_start"

    .line 113
    .line 114
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    array-length v3, v1

    .line 118
    move v4, v2

    .line 119
    :goto_4
    if-ge v4, v3, :cond_3

    .line 120
    .line 121
    aget-object v5, v1, v4

    .line 122
    .line 123
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_2

    .line 128
    .line 129
    new-instance v6, Lcom/meishu/sdk/core/utils/i;

    .line 130
    .line 131
    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v5, v6}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catch_1
    move-exception v1

    .line 139
    goto :goto_6

    .line 140
    :cond_2
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_3
    const-string v1, "onInstallStart: \u5f00\u59cb\u5b89\u88c5"

    .line 144
    .line 145
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :goto_7
    const/4 v1, 0x1

    .line 153
    if-ne p2, v1, :cond_4

    .line 154
    .line 155
    const-string p2, "install fail "

    .line 156
    .line 157
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_b

    .line 161
    :catch_2
    move-exception p1

    .line 162
    goto :goto_c

    .line 163
    :cond_4
    const-string p2, "install success "

    .line 164
    .line 165
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 166
    .line 167
    .line 168
    :try_start_5
    sget-object p2, Lcom/meishu/sdk/core/utils/AppStoreUtil;->d:[Ljava/lang/String;

    .line 169
    .line 170
    if-eqz p2, :cond_6

    .line 171
    .line 172
    const-string v1, "Report send dn_inst_succ"

    .line 173
    .line 174
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    array-length v1, p2

    .line 178
    :goto_8
    if-ge v2, v1, :cond_6

    .line 179
    .line 180
    aget-object v3, p2, v2

    .line 181
    .line 182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_5

    .line 187
    .line 188
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 189
    .line 190
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 194
    .line 195
    .line 196
    goto :goto_9

    .line 197
    :catch_3
    move-exception p2

    .line 198
    goto :goto_a

    .line 199
    :cond_5
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_6
    const-string p2, "onInstallStart: \u5b89\u88c5\u6210\u529f"

    .line 203
    .line 204
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 205
    .line 206
    .line 207
    goto :goto_b

    .line 208
    :goto_a
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :goto_b
    sput-object p1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->a:Ljava/lang/String;

    .line 212
    .line 213
    sput-object p1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->b:[Ljava/lang/String;

    .line 214
    .line 215
    sput-object p1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->c:[Ljava/lang/String;

    .line 216
    .line 217
    sput-object p1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->d:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 218
    .line 219
    goto :goto_d

    .line 220
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    :cond_7
    :goto_d
    return-void
.end method
