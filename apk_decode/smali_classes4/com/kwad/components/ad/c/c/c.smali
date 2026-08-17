.class public final Lcom/kwad/components/ad/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kwad/sdk/commercial/c/a;Z)V
    .locals 3

    .line 71
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 72
    const-string v1, "ad_client_error_log"

    goto :goto_0

    :cond_0
    const-string v1, "ad_client_apm_log"

    .line 73
    :goto_0
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    .line 74
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 75
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    const-string v0, "ad_sdk_banner_load"

    const-string v1, "status"

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 79
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/kwad/components/ad/c/c/a;->au()Lcom/kwad/components/ad/c/c/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/a;->s(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/c/c/a;->t(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/a;->u(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 53
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JII)V
    .locals 3

    .line 62
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    .line 64
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/c/c/b;->x(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p1, p2}, Lcom/kwad/components/ad/c/c/b;->f(J)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 66
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/b;->p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p3}, Lcom/kwad/components/ad/c/c/b;->y(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p4}, Lcom/kwad/components/ad/c/c/b;->z(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 70
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JIIZ)V
    .locals 4

    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v1

    if-eqz p5, :cond_0

    .line 34
    const-string v2, "ad_client_error_log"

    goto :goto_0

    :cond_0
    const-string v2, "ad_client_apm_log"

    .line 35
    :goto_0
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v1

    if-eqz p5, :cond_1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    goto :goto_1

    :cond_1
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 36
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object p5

    sget-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_BANNER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 37
    invoke-virtual {p5, v1}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object p5

    const-string v1, "ad_sdk_banner_load"

    const-string v2, "status"

    .line 38
    invoke-virtual {p5, v1, v2}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object p5

    .line 39
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p1, p2}, Lcom/kwad/components/ad/c/c/b;->f(J)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/b;->x(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 42
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/b;->p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p3}, Lcom/kwad/components/ad/c/c/b;->y(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p4}, Lcom/kwad/components/ad/c/c/b;->z(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 46
    invoke-virtual {p5, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 48
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JLjava/lang/String;)V
    .locals 3

    .line 54
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p1, p2}, Lcom/kwad/components/ad/c/c/b;->f(J)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 57
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/b;->x(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 58
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/b;->p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 59
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/commercial/c/a;->setErrorMsg(Ljava/lang/String;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x1

    .line 61
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/internal/api/SceneImpl;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->w(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/c/c/b;->A(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/commercial/c/a;->setPosId(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/internal/api/SceneImpl;IJ)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p2, p3}, Lcom/kwad/components/ad/c/c/b;->e(J)Lcom/kwad/components/ad/c/c/b;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/c/c/b;->w(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/commercial/c/a;->setPosId(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 31
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/internal/api/SceneImpl;IJI)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/kwad/components/ad/c/c/b;->g(J)Lcom/kwad/components/ad/c/c/b;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p4}, Lcom/kwad/components/ad/c/c/b;->A(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/c/c/b;->w(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/commercial/c/a;->setPosId(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/internal/api/SceneImpl;ILjava/lang/String;JI)V
    .locals 3

    .line 12
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

    sget-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    const-string v1, "ad_sdk_banner_load"

    const-string v2, "status"

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p3, p4}, Lcom/kwad/components/ad/c/c/b;->g(J)Lcom/kwad/components/ad/c/c/b;

    move-result-object p3

    .line 19
    invoke-virtual {p3, p5}, Lcom/kwad/components/ad/c/c/b;->A(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p3

    const/4 p4, 0x0

    .line 20
    invoke-virtual {p3, p4}, Lcom/kwad/components/ad/c/c/b;->w(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object p3

    .line 21
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/kwad/sdk/commercial/c/a;->setPosId(J)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/c/a;->setErrorCode(I)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/commercial/c/a;->setErrorMsg(Ljava/lang/String;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static aw()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/c/c/a;->au()Lcom/kwad/components/ad/c/c/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/a;->s(I)Lcom/kwad/components/ad/c/c/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static ax()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static b(Lcom/kwad/sdk/commercial/c/a;Z)V
    .locals 3

    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/commercial/d;->In()Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 7
    const-string v1, "ad_client_error_log"

    goto :goto_0

    :cond_0
    const-string v1, "ad_client_apm_log"

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/commercial/d;->do(Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    .line 9
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/commercial/d;->g(D)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 10
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/commercial/d;->b(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    const-string v0, "ad_sdk_banner_callback"

    const-string v1, "callback_type"

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/commercial/d;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/commercial/d;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/d;->A(Lcom/kwad/sdk/commercial/c/a;)Lcom/kwad/sdk/commercial/d;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/c/c/a;->au()Lcom/kwad/components/ad/c/c/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/a;->s(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/c/c/a;->t(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/a;->u(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->y(I)Lcom/kwad/components/ad/c/c/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p2}, Lcom/kwad/components/ad/c/c/b;->z(I)Lcom/kwad/components/ad/c/c/b;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2, v0}, Lcom/kwad/components/ad/c/c/b;->x(I)Lcom/kwad/components/ad/c/c/b;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/c/c/b;->p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static d(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/c/c/a;->au()Lcom/kwad/components/ad/c/c/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/a;->s(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/commercial/c/a;->setErrorMsg(Ljava/lang/String;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setErrorCode(I)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/c/c/a;->au()Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/c/c/a;->s(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/c/c/a;->t(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/a;->u(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->y(I)Lcom/kwad/components/ad/c/c/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->x(I)Lcom/kwad/components/ad/c/c/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/c/c/b;->p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/b;->z(I)Lcom/kwad/components/ad/c/c/b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/kwad/components/ad/c/c/b;->av()Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/c/c/b;->x(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/c/c/b;->p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/c/b;->v(I)Lcom/kwad/components/ad/c/c/b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/kwad/components/ad/c/c/a;->au()Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/c/c/a;->s(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/c/c/a;->t(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/c/c/a;->u(I)Lcom/kwad/components/ad/c/c/a;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/commercial/c/a;Z)V

    return-void
.end method
