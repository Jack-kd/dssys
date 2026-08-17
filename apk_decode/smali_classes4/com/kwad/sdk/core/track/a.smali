.class public final Lcom/kwad/sdk/core/track/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(ILcom/kwad/sdk/core/adlog/c/a;Ljava/util/List;Lcom/kwad/sdk/core/response/model/AdInfo;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kwad/sdk/core/adlog/c/a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kwad/sdk/core/response/model/AdInfo;",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x192

    if-ne p0, v0, :cond_3

    .line 9
    invoke-static {p3}, Lcom/kwad/sdk/core/response/helper/a;->bu(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    :try_start_0
    iget-object p0, p1, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 11
    new-instance p0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "photoPlaySecond"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 12
    :cond_0
    iget p0, p1, Lcom/kwad/sdk/core/adlog/c/a;->aMf:I

    .line 13
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p3, p3, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p3, p3, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->videoPlayedNSConfig:Ljava/lang/String;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;

    .line 15
    iget v0, p4, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p4, p4, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:Ljava/util/List;

    if-eqz p4, :cond_1

    .line 16
    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-object p2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;)Ljava/util/List;
    .locals 3
    .param p2    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            "I",
            "Lcom/kwad/sdk/core/adlog/c/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p0

    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adTrackInfoList:Ljava/util/List;

    .line 4
    invoke-static {v1}, Lcom/kwad/sdk/utils/ar;->R(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, p2, v0, p0, v1}, Lcom/kwad/sdk/core/track/a;->a(ILcom/kwad/sdk/core/adlog/c/a;Ljava/util/List;Lcom/kwad/sdk/core/response/model/AdInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;

    .line 7
    iget v1, p2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    if-ne v1, p1, :cond_2

    iget-object p2, p2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static e(Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 15
    .param p0    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    iget v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/core/track/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v3}, Lcom/kwad/sdk/utils/ar;->R(Ljava/util/List;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->dE(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->dF(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_7

    .line 39
    .line 40
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/commercial/i/a;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;->isCheatingFlow()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/commercial/i/a;->o(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-static {v2}, Lcom/kwad/sdk/utils/by;->ir(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    const-string v5, ""

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    const-string v3, ""

    .line 69
    .line 70
    const v4, 0x186a1

    .line 71
    .line 72
    .line 73
    invoke-static/range {v0 .. v6}, Lcom/kwad/sdk/commercial/i/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const/4 v3, 0x2

    .line 78
    const/4 v4, 0x0

    .line 79
    if-ne v1, v3, :cond_3

    .line 80
    .line 81
    iget-object v5, p0, Lcom/kwad/sdk/core/adlog/c/a;->no:Lcom/kwad/sdk/utils/al$a;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object v5, v4

    .line 85
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/a;->aH(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-static {v10, v2, v5, v6}, Lcom/kwad/sdk/utils/ak;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/utils/al$a;Z)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v0, v2, v5}, Lcom/kwad/sdk/utils/ak;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/kwad/sdk/h;->EG()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    instance-of v10, v6, Lcom/kwad/sdk/core/network/c/a;

    .line 109
    .line 110
    if-eqz v10, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/4 v3, 0x1

    .line 114
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v11, "handleTrackUrl useKwaiUA: "

    .line 117
    .line 118
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const-string v11, "AdTrackUtil"

    .line 129
    .line 130
    invoke-static {v11, v10}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    if-eqz v7, :cond_5

    .line 134
    .line 135
    invoke-static {v7, v8}, Lcom/kwad/sdk/core/i/a;->k(ZZ)Lcom/kwad/sdk/core/i/c;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    new-instance v12, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v13, "handleTrackUrl uaGetter: "

    .line 142
    .line 143
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-static {v11, v12}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    if-eqz v10, :cond_5

    .line 157
    .line 158
    new-instance v4, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v12, "User-Agent"

    .line 164
    .line 165
    invoke-interface {v10}, Lcom/kwad/sdk/core/i/c;->OC()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-interface {v4, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_5
    xor-int/lit8 v10, v7, 0x1

    .line 173
    .line 174
    invoke-interface {v6, v5, v4, v10}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doGetWithoutResponse(Ljava/lang/String;Ljava/util/Map;Z)Lcom/kwad/sdk/core/network/c;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iget v6, v4, Lcom/kwad/sdk/core/network/c;->code:I

    .line 179
    .line 180
    invoke-static {v6}, Lcom/kwad/sdk/core/track/a;->eK(I)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_6

    .line 185
    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v6, "trackUrl request success actionType: "

    .line 189
    .line 190
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v11, v5}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget v4, v4, Lcom/kwad/sdk/core/network/c;->code:I

    .line 204
    .line 205
    invoke-static {v0, v1, v2, v4, v3}, Lcom/kwad/sdk/commercial/i/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;II)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_6
    iget v6, v4, Lcom/kwad/sdk/core/network/c;->code:I

    .line 211
    .line 212
    invoke-static {v6}, Lcom/kwad/sdk/commercial/e;->dt(I)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    iget-object v4, v4, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    .line 217
    .line 218
    move v14, v6

    .line 219
    move v6, v3

    .line 220
    move-object v3, v5

    .line 221
    move-object v5, v4

    .line 222
    move v4, v14

    .line 223
    invoke-static/range {v0 .. v6}, Lcom/kwad/sdk/commercial/i/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_7
    :goto_3
    return-void
.end method

.method private static eK(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
