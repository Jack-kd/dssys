.class public Lcom/meishu/sdk/core/uri/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/uri/b;


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


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/meishu/sdk/core/ad/AdSlot;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->webViewActivity()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v2

    .line 32
    :goto_0
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-class v0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 35
    .line 36
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-direct {v3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    filled-new-array {p2}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "EXTRA_AD_DURL_KEY"

    .line 50
    .line 51
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-interface {p3}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_8

    .line 59
    .line 60
    invoke-interface {p3}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    array-length p3, p2

    .line 65
    move v0, v1

    .line 66
    :goto_1
    if-ge v0, p3, :cond_8

    .line 67
    .line 68
    aget-object v4, p2, v0

    .line 69
    .line 70
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_7

    .line 79
    .line 80
    const-string v5, "dsp.1rtb.com"

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_3

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_3
    new-instance v5, Ljava/lang/String;

    .line 94
    .line 95
    const-string v6, "ext_data"

    .line 96
    .line 97
    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/4 v6, 0x3

    .line 102
    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 107
    .line 108
    .line 109
    const-string v4, ","

    .line 110
    .line 111
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    array-length v5, v4

    .line 116
    move v6, v1

    .line 117
    move-object v7, v2

    .line 118
    move-object v8, v7

    .line 119
    :goto_2
    if-ge v6, v5, :cond_6

    .line 120
    .line 121
    aget-object v9, v4, v6

    .line 122
    .line 123
    const-string v10, "amid="

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    const/4 v11, 0x5

    .line 130
    if-eqz v10, :cond_4

    .line 131
    .line 132
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    goto :goto_3

    .line 137
    :catchall_0
    move-exception v4

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    const-string v10, "uuid="

    .line 140
    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-eqz v10, :cond_5

    .line 146
    .line 147
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_7

    .line 159
    .line 160
    const-string v4, "EXTRA_AD_AMID_KEY"

    .line 161
    .line 162
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_8

    .line 170
    .line 171
    const-string v4, "EXTRA_AD_UUID_KEY"

    .line 172
    .line 173
    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_8
    :goto_6
    instance-of p2, p1, Landroid/app/Activity;

    .line 184
    .line 185
    if-eqz p2, :cond_9

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_9
    const/high16 p2, 0x10000000

    .line 189
    .line 190
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    :goto_7
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    .line 195
    .line 196
    const/4 p1, 0x1

    .line 197
    return p1
.end method
