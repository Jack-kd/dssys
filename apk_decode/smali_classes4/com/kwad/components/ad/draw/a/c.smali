.class public final Lcom/kwad/components/ad/draw/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kwad/sdk/commercial/c/a;Z)V
    .locals 3

    .line 8
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 9
    const-string v1, "ad_client_error_log"

    goto :goto_0

    :cond_0
    const-string v1, "ad_client_apm_log"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    .line 10
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_DRAW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 11
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    const-string v0, "ad_sdk_draw_material_load"

    const-string v1, "status"

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/kwad/components/ad/draw/a/e;->aT()Lcom/kwad/components/ad/draw/a/e;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->J(I)Lcom/kwad/components/ad/draw/a/e;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->K(I)Lcom/kwad/components/ad/draw/a/e;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/draw/a/e;->s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/kwad/components/ad/draw/a/e;->k(J)Lcom/kwad/components/ad/draw/a/e;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;JLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/draw/a/e;->aT()Lcom/kwad/components/ad/draw/a/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->J(I)Lcom/kwad/components/ad/draw/a/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->K(I)Lcom/kwad/components/ad/draw/a/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/draw/a/e;->s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/kwad/components/ad/draw/a/e;->k(J)Lcom/kwad/components/ad/draw/a/e;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/commercial/c/a;->setErrorMsg(Ljava/lang/String;)Lcom/kwad/sdk/commercial/c/a;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-static {p0, p1}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/draw/a/e;->aT()Lcom/kwad/components/ad/draw/a/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->J(I)Lcom/kwad/components/ad/draw/a/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->K(I)Lcom/kwad/components/ad/draw/a/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/draw/a/e;->s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/draw/a/e;->aT()Lcom/kwad/components/ad/draw/a/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->J(I)Lcom/kwad/components/ad/draw/a/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->K(I)Lcom/kwad/components/ad/draw/a/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/draw/a/e;->s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/draw/a/e;->aT()Lcom/kwad/components/ad/draw/a/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->J(I)Lcom/kwad/components/ad/draw/a/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->K(I)Lcom/kwad/components/ad/draw/a/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/draw/a/e;->s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/draw/a/e;->aT()Lcom/kwad/components/ad/draw/a/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->J(I)Lcom/kwad/components/ad/draw/a/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/draw/a/e;->K(I)Lcom/kwad/components/ad/draw/a/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/draw/a/e;->s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcom/kwad/components/ad/draw/a/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
