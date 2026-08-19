.class public final Lcom/kwad/components/ad/interstitial/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static w(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .locals 9
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/b;->eX()Lcom/kwad/components/ad/interstitial/report/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "empty videoUrl"

    .line 21
    .line 22
    invoke-virtual {v0, p0, v2}, Lcom/kwad/components/ad/interstitial/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/b;->eX()Lcom/kwad/components/ad/interstitial/report/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/interstitial/report/b;->B(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ga()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x1

    .line 41
    const-string v5, ""

    .line 42
    .line 43
    if-gez v0, :cond_3

    .line 44
    .line 45
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/diskcache/b/a;->cO(Ljava/lang/String;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/kwad/sdk/utils/y;->Q(Ljava/io/File;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    move v2, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lcom/kwad/sdk/core/network/a/a$a;

    .line 62
    .line 63
    invoke-direct {v1}, Lcom/kwad/sdk/core/network/a/a$a;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5, v2, v1}, Lcom/kwad/sdk/core/diskcache/b/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/network/a/a$a;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget-object v5, v1, Lcom/kwad/sdk/core/network/a/a$a;->msg:Ljava/lang/String;

    .line 75
    .line 76
    :goto_0
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadSize(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v7}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadType(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    if-lez v0, :cond_7

    .line 90
    .line 91
    new-instance v5, Lcom/kwad/sdk/core/network/a/a$a;

    .line 92
    .line 93
    invoke-direct {v5}, Lcom/kwad/sdk/core/network/a/a$a;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KA()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ne v3, v8, :cond_4

    .line 101
    .line 102
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3, v8, v1}, Lcom/kwad/sdk/core/videocache/c/a;->b(Landroid/content/Context;II)Lcom/kwad/sdk/core/videocache/f;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KA()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-ne v1, v7, :cond_5

    .line 116
    .line 117
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1, v8, v8}, Lcom/kwad/sdk/core/videocache/c/a;->b(Landroid/content/Context;II)Lcom/kwad/sdk/core/videocache/f;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/c/a;->cm(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_1
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/videocache/f;->fz(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v3, :cond_6

    .line 139
    .line 140
    mul-int/lit16 v3, v0, 0x400

    .line 141
    .line 142
    int-to-long v3, v3

    .line 143
    const/4 v6, 0x0

    .line 144
    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;JLcom/kwad/sdk/core/network/a/a$a;Lcom/kwad/sdk/export/proxy/AdHttpResponseListener;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    move v2, v1

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    move v2, v8

    .line 151
    :goto_2
    iget-object v5, v5, Lcom/kwad/sdk/core/network/a/a$a;->msg:Ljava/lang/String;

    .line 152
    .line 153
    int-to-long v0, v0

    .line 154
    const-wide/16 v3, 0x400

    .line 155
    .line 156
    mul-long/2addr v0, v3

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadSize(J)V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x3

    .line 161
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadType(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadSize(J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v8}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadType(I)V

    .line 169
    .line 170
    .line 171
    move v2, v8

    .line 172
    :goto_3
    if-nez v2, :cond_8

    .line 173
    .line 174
    invoke-virtual {p0, v7}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadStatus(I)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/b;->eX()Lcom/kwad/components/ad/interstitial/report/b;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0, p0, v5}, Lcom/kwad/components/ad/interstitial/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->fd()Lcom/kwad/components/ad/interstitial/report/realtime/a;

    .line 185
    .line 186
    .line 187
    invoke-static {v5, p0}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->b(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 188
    .line 189
    .line 190
    return v2

    .line 191
    :cond_8
    invoke-virtual {p0, v8}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadStatus(I)V

    .line 192
    .line 193
    .line 194
    return v2
.end method
