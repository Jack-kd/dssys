.class public Lcom/octopus/ad/internal/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 10

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    invoke-static {}, Lcom/octopus/ad/internal/c/r;->a()Lcom/octopus/ad/internal/c/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Lcom/octopus/ad/internal/q;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    const-string v2, "isp"

    .line 14
    .line 15
    const-string v3, "net"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, -0x1

    .line 19
    if-le v1, v4, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-static {p0, v3, v5}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p0, v2, v5}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    move v1, v5

    .line 34
    move v6, v1

    .line 35
    :goto_0
    if-ne v1, v5, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lcom/octopus/ad/internal/c/s;->c(Landroid/content/Context;)Lcom/octopus/ad/a/g$d;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->a:Lcom/octopus/ad/a/g$d;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/octopus/ad/a/g$d;->a()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {p0, v3, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v1}, Lcom/octopus/ad/a/g$d;->a(I)Lcom/octopus/ad/a/g$d;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->a:Lcom/octopus/ad/a/g$d;

    .line 60
    .line 61
    :goto_1
    if-ne v6, v5, :cond_8

    .line 62
    .line 63
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-boolean v1, v1, Lcom/octopus/ad/internal/q;->i:Z

    .line 68
    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/16 v3, 0x3e9

    .line 76
    .line 77
    invoke-virtual {v1, p0, v3}, Lcom/octopus/ad/utils/OctUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_7

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const v6, 0x2f60c75

    .line 92
    .line 93
    .line 94
    const/4 v7, 0x3

    .line 95
    const/4 v8, 0x4

    .line 96
    const/4 v9, 0x2

    .line 97
    if-eq v3, v6, :cond_2

    .line 98
    .line 99
    packed-switch v3, :pswitch_data_0

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :pswitch_0
    const-string v3, "46003"

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    move v5, v8

    .line 112
    goto :goto_2

    .line 113
    :pswitch_1
    const-string v3, "46002"

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    move v5, v4

    .line 122
    goto :goto_2

    .line 123
    :pswitch_2
    const-string v3, "46001"

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    move v5, v7

    .line 132
    goto :goto_2

    .line 133
    :pswitch_3
    const-string v3, "46000"

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    const-string v3, "46007"

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    move v5, v9

    .line 152
    :cond_3
    :goto_2
    if-eqz v5, :cond_6

    .line 153
    .line 154
    if-eq v5, v4, :cond_6

    .line 155
    .line 156
    if-eq v5, v9, :cond_6

    .line 157
    .line 158
    if-eq v5, v7, :cond_5

    .line 159
    .line 160
    if-eq v5, v8, :cond_4

    .line 161
    .line 162
    sget-object v1, Lcom/octopus/ad/a/g$c;->e:Lcom/octopus/ad/a/g$c;

    .line 163
    .line 164
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    sget-object v1, Lcom/octopus/ad/a/g$c;->d:Lcom/octopus/ad/a/g$c;

    .line 168
    .line 169
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    sget-object v1, Lcom/octopus/ad/a/g$c;->c:Lcom/octopus/ad/a/g$c;

    .line 173
    .line 174
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_6
    sget-object v1, Lcom/octopus/ad/a/g$c;->b:Lcom/octopus/ad/a/g$c;

    .line 178
    .line 179
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_7
    sget-object v1, Lcom/octopus/ad/a/g$c;->a:Lcom/octopus/ad/a/g$c;

    .line 183
    .line 184
    iput-object v1, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 185
    .line 186
    :goto_3
    iget-object v1, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/octopus/ad/a/g$c;->a()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {p0, v2, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    invoke-static {v6}, Lcom/octopus/ad/a/g$c;->a(I)Lcom/octopus/ad/a/g$c;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    iput-object p0, v0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :goto_4
    const-string v1, "OctopusAd"

    .line 208
    .line 209
    const-string v2, "A Throwable Caught"

    .line 210
    .line 211
    invoke-static {v1, v2, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    :goto_5
    const-string p0, "0.0.0.0"

    .line 215
    .line 216
    iput-object p0, v0, Lcom/octopus/ad/internal/c/r;->c:Ljava/lang/String;

    .line 217
    .line 218
    :cond_9
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x2f60c6e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :catch_0
    const-string p0, ""

    .line 18
    .line 19
    return-object p0
.end method

.method private static c(Landroid/content/Context;)Lcom/octopus/ad/a/g$d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget-object p0, Lcom/octopus/ad/a/g$d;->e:Lcom/octopus/ad/a/g$d;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    const-string v0, "phone"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 40
    .line 41
    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 42
    .line 43
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    packed-switch p0, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    sget-object p0, Lcom/octopus/ad/a/g$d;->f:Lcom/octopus/ad/a/g$d;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_0
    sget-object p0, Lcom/octopus/ad/a/g$d;->c:Lcom/octopus/ad/a/g$d;

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_1
    sget-object p0, Lcom/octopus/ad/a/g$d;->b:Lcom/octopus/ad/a/g$d;

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_2
    sget-object p0, Lcom/octopus/ad/a/g$d;->g:Lcom/octopus/ad/a/g$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    return-object p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const-string v0, "OctopusAd"

    .line 70
    .line 71
    const-string v1, "An Exception Caught"

    .line 72
    .line 73
    invoke-static {v0, v1, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    sget-object p0, Lcom/octopus/ad/a/g$d;->a:Lcom/octopus/ad/a/g$d;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
