.class public final Lcom/kwad/sdk/commercial/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-string v1, "ad_client_error_log"

    .line 2
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/kwad/sdk/commercial/e;->ds(I)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    const-string v0, "ad_sdk_ad_data_performance"

    const-string v1, "error_name"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/kwad/sdk/commercial/d/b;->Ir()Lcom/kwad/sdk/commercial/d/b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/kwad/sdk/commercial/d/b;->dw(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/b;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p3}, Lcom/kwad/sdk/commercial/d/b;->dx(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/b;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/kwad/sdk/commercial/d/b;->cj(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/d/b;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/internal/api/SceneImpl;JLjava/lang/String;)V
    .locals 3
    .param p0    # Lcom/kwad/sdk/internal/api/SceneImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-string v1, "ad_client_error_log"

    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdStyle()I

    move-result v1

    invoke-static {v1}, Lcom/kwad/sdk/commercial/e;->ds(I)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-string v1, "ad_sdk_ad_parse_performance"

    const-string v2, "default"

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/kwad/sdk/commercial/d/c;->Is()Lcom/kwad/sdk/commercial/d/c;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p3}, Lcom/kwad/sdk/commercial/d/c;->dy(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/c;

    move-result-object p3

    iget-wide v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    .line 19
    invoke-virtual {p3, v1, v2}, Lcom/kwad/sdk/commercial/c/a;->setPosId(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/commercial/c/a;->setLlsid(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 23
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/internal/api/SceneImpl;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/kwad/sdk/internal/api/SceneImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-string v1, "ad_client_error_log"

    .line 25
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdStyle()I

    move-result v1

    invoke-static {v1}, Lcom/kwad/sdk/commercial/e;->ds(I)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-string v1, "ad_sdk_ad_parse_performance"

    const-string v2, "default"

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/kwad/sdk/commercial/d/c;->Is()Lcom/kwad/sdk/commercial/d/c;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p3}, Lcom/kwad/sdk/commercial/d/c;->dy(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/c;

    move-result-object p3

    .line 31
    invoke-virtual {p3, p4}, Lcom/kwad/sdk/commercial/d/c;->dz(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/c;

    move-result-object p3

    const p4, 0x186ad

    .line 32
    invoke-virtual {p3, p4}, Lcom/kwad/sdk/commercial/c/a;->setErrorCode(I)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p3

    iget-wide v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    .line 33
    invoke-virtual {p3, v1, v2}, Lcom/kwad/sdk/commercial/c/a;->setPosId(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/commercial/c/a;->setLlsid(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 37
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ad_client_error_log"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/kwad/sdk/commercial/e;->bA(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "ad_sdk_ad_data_performance"

    .line 29
    .line 30
    const-string v2, "error_name"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/kwad/sdk/commercial/d/b;->Ir()Lcom/kwad/sdk/commercial/d/b;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Lcom/kwad/sdk/commercial/d/b;->dw(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/commercial/d/b;->dx(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d/b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/d/b;->cj(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/d/b;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static ci(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->llsid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    const-string v0, "llsid"

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eY(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    cmp-long v0, v4, v2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "create_id"

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v4, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    .line 34
    .line 35
    iget v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adOperationType:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v4, v6, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->db(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lcom/kwad/sdk/utils/by;->ir(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    const-string v7, "download_url"

    .line 52
    .line 53
    invoke-static {p0, v7, v4}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-ne v4, v5, :cond_3

    .line 58
    .line 59
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aY(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/kwad/sdk/utils/by;->ir(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    const-string v7, "h5_url"

    .line 70
    .line 71
    invoke-static {p0, v7, v4}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->P(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget v7, v4, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    .line 79
    .line 80
    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    .line 81
    .line 82
    if-ne v7, v6, :cond_4

    .line 83
    .line 84
    invoke-static {v4}, Lcom/kwad/sdk/utils/by;->ir(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    const-string v0, "video_url"

    .line 91
    .line 92
    invoke-static {p0, v0, v4}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    if-ne v7, v5, :cond_5

    .line 97
    .line 98
    invoke-static {v4}, Lcom/kwad/sdk/utils/by;->ir(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    const-string v0, "image_url"

    .line 105
    .line 106
    invoke-static {p0, v0, v4}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    const/4 v4, 0x3

    .line 111
    if-ne v7, v4, :cond_7

    .line 112
    .line 113
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cw(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bn(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    cmp-long v2, v4, v2

    .line 122
    .line 123
    if-nez v2, :cond_6

    .line 124
    .line 125
    const-string v0, "live_author_id"

    .line 126
    .line 127
    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    const-string v1, "live_stream_id"

    .line 138
    .line 139
    invoke-static {p0, v1, v0}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_7
    return-void

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "tk_template_id"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/commercial/d/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
