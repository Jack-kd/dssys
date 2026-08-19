.class public final Lcom/kwad/sdk/core/adlog/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/adlog/c$a;
    }
.end annotation


# static fields
.field private static aLI:Ljava/util/concurrent/ExecutorService;

.field public static aLJ:Lorg/json/JSONObject;

.field public static aLK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oc()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/kwad/sdk/core/adlog/c;->aLI:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method private static I(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/f;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/f;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p0}, Lcom/kwad/sdk/utils/au;->aw(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method private static IT()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/as;->isOrientationPortrait()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    return v0
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJIJLorg/json/JSONObject;)V
    .locals 0
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    new-instance p7, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p7}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 26
    iput-wide p2, p7, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    .line 27
    iput p4, p7, Lcom/kwad/sdk/core/adlog/c/a;->aMK:I

    .line 28
    iput p1, p7, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    .line 29
    new-instance p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 30
    iput-wide p5, p1, Lcom/kwad/sdk/core/adlog/a$a;->duration:J

    .line 31
    iput-object p1, p7, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 32
    invoke-static {p0, p1, p7, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJLorg/json/JSONObject;)V
    .locals 1
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 20
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    .line 21
    new-instance p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 22
    iput-wide p2, p1, Lcom/kwad/sdk/core/adlog/a$a;->duration:J

    .line 23
    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    const/4 p1, 0x3

    .line 24
    invoke-static {p0, p1, v0, p4}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    .locals 4

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, -0x270f

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v1, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 69
    iput p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMl:I

    if-eqz p2, :cond_5

    .line 70
    iget p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->winEcpm:I

    int-to-long v2, p1

    iput-wide v2, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMm:J

    .line 71
    :try_start_0
    iget p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adnType:I

    iput p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->adnType:I

    if-ne p1, v0, :cond_1

    .line 72
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adnName:Ljava/lang/String;

    iput-object p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    .line 73
    :cond_1
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adUserName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 74
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adUserName:Ljava/lang/String;

    iput-object p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    .line 75
    :cond_2
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 76
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adTitle:Ljava/lang/String;

    iput-object p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    .line 77
    :cond_3
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adRequestId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 78
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adRequestId:Ljava/lang/String;

    iput-object p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    .line 79
    :cond_4
    iget p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->isShow:I

    iput p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMq:I

    .line 80
    iget p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->isClick:I

    iput p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->aMr:I

    .line 81
    iget p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adnMaterialType:I

    iput p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialType:I

    .line 82
    iget-object p1, p2, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adnMaterialUrl:Ljava/lang/String;

    iput-object p1, v1, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    const/16 p1, 0x329

    const/4 p2, 0x0

    .line 83
    invoke-static {p0, p1, v1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/al$a;)V
    .locals 1
    .param p2    # Lcom/kwad/sdk/utils/al$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 7
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    .line 8
    iget p1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->swipeAngle:I

    if-eqz p1, :cond_0

    .line 9
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMR:I

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    iput-object p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->no:Lcom/kwad/sdk/utils/al$a;

    :cond_1
    const/4 p1, 0x0

    .line 11
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .locals 1
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 66
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMf:I

    const/16 p1, 0x192

    .line 67
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 85
    iput-object p3, v0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    .line 86
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JLorg/json/JSONObject;)V
    .locals 3
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    new-instance p3, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p3}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 15
    new-instance v0, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 16
    iput-wide p1, v0, Lcom/kwad/sdk/core/adlog/a$a;->duration:J

    .line 17
    iput-object v0, p3, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    :cond_0
    const/16 p1, 0x3a6

    const/4 p2, 0x0

    .line 18
    invoke-static {p0, p1, p3, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c$a;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    .line 49
    new-instance p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 50
    iget-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    iput v1, p1, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;J)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    iput-wide p2, p1, Lcom/kwad/sdk/core/adlog/c/a;->aMF:J

    const/16 p2, 0x33

    const/4 p3, 0x0

    .line 64
    invoke-static {p0, p2, p1, p3}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)V
    .locals 1
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->fromCache:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/kwad/sdk/core/report/h;->cI(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/report/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/report/h;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p0, v0, v0}, Lcom/kwad/sdk/core/adlog/c/a;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    .line 4
    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 3

    .line 38
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p0

    .line 39
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/utils/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/adlog/c/b;->ee(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 45
    invoke-virtual {p1, v1}, Lcom/kwad/sdk/core/adlog/c/b;->ed(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 46
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/b;Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    new-instance p2, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    .line 59
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_0
    const/16 p1, 0x323

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, p2, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 52
    new-instance p3, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p3}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 53
    :cond_0
    iput p2, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    .line 54
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 55
    iput-object p1, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_1
    const/16 p1, 0x40e

    const/4 p2, 0x0

    .line 56
    invoke-static {p0, p1, p3, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 93
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 94
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 95
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->dG(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v2

    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLx:I

    .line 96
    iput-object p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLz:Ljava/lang/String;

    .line 97
    iput-object p2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLA:Ljava/lang/String;

    .line 98
    iput p3, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLB:I

    .line 99
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 100
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x400

    invoke-static {p0, p3, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 34
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    .line 35
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 36
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iget v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    const/16 v1, 0x21

    .line 37
    invoke-static {p0, v1, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 88
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 89
    iput-boolean p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 90
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 91
    invoke-virtual {v0, p2}, Lcom/kwad/sdk/core/adlog/c/b;->er(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 92
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x3a7

    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z
    .locals 4
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_9

    .line 101
    invoke-static {p0}, Lcom/kwad/sdk/core/adlog/c;->cC(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 102
    new-instance p2, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 103
    :cond_1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aZ(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iput v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMJ:I

    .line 104
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adxResult:I

    iput v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->adxResult:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 105
    sget-boolean v1, Lcom/kwad/sdk/core/adlog/c;->aLK:Z

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez v1, :cond_2

    .line 107
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 108
    :cond_2
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    sget-object v2, Lcom/kwad/sdk/core/adlog/c;->aLJ:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLt:Lorg/json/JSONObject;

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 109
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 110
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->dC(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    iget-object v2, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez v2, :cond_4

    .line 112
    new-instance v2, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v2}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object v2, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 113
    :cond_4
    iget-object v2, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/core/response/helper/a;->dD(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kwad/sdk/core/adlog/a$a;->aLs:Ljava/lang/String;

    :cond_5
    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_8

    .line 114
    :cond_6
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez v0, :cond_7

    .line 115
    new-instance v0, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 116
    :cond_7
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->dG(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v2

    iput v2, v0, Lcom/kwad/sdk/core/adlog/a$a;->aLx:I

    .line 117
    sget-boolean v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isInnerEcCancelDowngrade:Z

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iput v1, v0, Lcom/kwad/sdk/core/adlog/a$a;->aLy:I

    .line 119
    :cond_8
    invoke-virtual {p2, p0}, Lcom/kwad/sdk/core/adlog/c/a;->cF(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 120
    iput-object p0, p2, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 121
    iput p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    .line 122
    iput-object p3, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMe:Lorg/json/JSONObject;

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdReportManager"

    invoke-static {p1, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p2}, Lcom/kwad/sdk/core/adlog/b;->a(Lcom/kwad/sdk/core/adlog/c/a;)V

    return v1

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .locals 1
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/b;->ee(I)Lcom/kwad/sdk/core/adlog/c/b;

    move-result-object p1

    .line 30
    invoke-static {p0, p2, p1}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x3b

    const/4 v1, 0x0

    .line 27
    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;J)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    iput-wide p2, p1, Lcom/kwad/sdk/core/adlog/c/a;->aMF:J

    const/16 p2, 0x2c7

    const/4 p3, 0x0

    .line 26
    invoke-static {p0, p2, p1, p3}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static synthetic b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/b;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/b;Lorg/json/JSONObject;)V
    .locals 1
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x3

    .line 14
    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 20
    new-instance p3, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p3}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 21
    :cond_0
    iput p2, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    .line 22
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 23
    iput-object p1, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_1
    const/16 p1, 0x40f

    const/4 p2, 0x0

    .line 24
    invoke-static {p0, p1, p3, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 16
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    .line 17
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 18
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iget v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    const/16 v1, 0x22

    .line 19
    invoke-static {p0, v1, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)Z
    .locals 3
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/adlog/c/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    .line 4
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/core/adlog/c;->IT()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/kwad/sdk/core/adlog/c/b;->eq(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 7
    invoke-virtual {p2}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p2

    .line 8
    iget-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->fromCache:Z

    if-eqz v2, :cond_2

    .line 9
    invoke-static {p0}, Lcom/kwad/sdk/core/report/h;->cI(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/report/h;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/report/h;)V

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/kwad/sdk/core/adlog/c;->I(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    .line 11
    iput v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMI:I

    .line 12
    invoke-static {p0, v0, p2, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .locals 1
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    new-instance p1, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p2

    .line 11
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    const/16 p2, 0x5d

    .line 12
    iput p2, p1, Lcom/kwad/sdk/core/adlog/c/a;->aMi:I

    const/16 p2, 0x8c

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p2, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {p3}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 3
    :cond_0
    iput p2, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    .line 4
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iput-object p1, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_1
    const/16 p1, 0x140

    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p3, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/adlog/c;->aLI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/adlog/c$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/adlog/c$1;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const/16 v0, 0x1c3

    .line 8
    invoke-static {p0, v0, p2, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static cA(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->dG(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/kwad/sdk/core/adlog/a$a;->aLx:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, v0, Lcom/kwad/sdk/core/adlog/a$a;->aLE:I

    .line 18
    .line 19
    new-instance v1, Lcom/kwad/sdk/core/adlog/c/b;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0x39d

    .line 33
    .line 34
    invoke-static {p0, v2, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static cB(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x407

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static cC(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eG(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-class v0, Lcom/kwad/sdk/service/a/f;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/kwad/sdk/service/a/f;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/kwad/sdk/service/a/f;->bn(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static cn(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static co(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    .line 7
    .line 8
    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    iput v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    .line 12
    .line 13
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 22
    .line 23
    iget v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    .line 24
    .line 25
    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    .line 26
    .line 27
    const/16 v1, 0x1e

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {p0, v1, v0, v2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static cp(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static cq(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static cr(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x29

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static cs(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x300

    .line 22
    .line 23
    invoke-static {p0, v2, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static ct(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static cu(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static cv(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static cw(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x392

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static cx(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bG(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadStatus:I

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "reportDownloadCardClose downloadStatus="

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v2, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadStatus:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "AdReportManager"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x2c9

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {p0, v1, v0, v2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static cy(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x2d2

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static cz(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x2d1

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/adlog/c;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;II)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 11
    iput p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    .line 12
    iget-object p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-nez p2, :cond_0

    .line 13
    new-instance p2, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 14
    :cond_0
    iget-object p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iput p3, p2, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    .line 15
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    iput-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_1
    const/16 p1, 0x323

    const/4 p2, 0x0

    .line 17
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iput p2, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    .line 7
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iput-object p1, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_0
    const/16 p1, 0x141

    const/4 p2, 0x0

    .line 9
    invoke-static {p0, p1, p3, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    .line 3
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 4
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iget v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    const/16 v1, 0x23

    .line 5
    invoke-static {p0, v1, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 18
    new-instance p2, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p2

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p0, v0, v0}, Lcom/kwad/sdk/core/adlog/c/a;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8c

    .line 21
    invoke-static {p0, v0, p2, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/adlog/c;->aLI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/adlog/c$2;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/adlog/c$2;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 1
    .param p2    # Lcom/kwad/sdk/core/adlog/c/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p0, v0, v0}, Lcom/kwad/sdk/core/adlog/c/a;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8d

    .line 5
    invoke-static {p0, v0, p2, p1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x18f

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x190

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p1, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    .line 8
    .line 9
    new-instance v0, Lcom/kwad/sdk/core/adlog/a$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p1, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 15
    .line 16
    const-string v1, "101"

    .line 17
    .line 18
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x1f5

    .line 7
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLq:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLq:I

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    const/16 p1, 0x143

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x1c2

    .line 7
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLq:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLq:I

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    const/16 p1, 0x28c

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x1c3

    .line 1
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .locals 3

    .line 2
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 3
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLn:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    .line 6
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/b;->el(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x324

    invoke-static {p0, v1, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInstallApkFromSDK:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInstallApkFormUser:Z

    .line 3
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMN:I

    .line 5
    new-instance p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/a;->a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 6
    iget-object p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    iput v1, p1, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    const/16 p1, 0x25

    const/4 v1, 0x0

    .line 7
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-static {}, Lcom/kwad/sdk/core/adlog/c/a;->Jf()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c/a;->aB(J)Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x34

    .line 9
    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .locals 3

    .line 10
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 11
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    const/4 v2, 0x2

    .line 12
    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLn:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    .line 14
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/b;->el(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x324

    invoke-static {p0, v1, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    const/16 p1, 0x39b

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .locals 1

    .line 4
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 5
    iput-wide p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMk:J

    const/16 p1, 0x258

    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 8
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 9
    iput-boolean p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 11
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x182

    invoke-static {p0, v1, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMv:I

    .line 3
    const-string p1, "wxsmallapp"

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    return-void
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 5
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMH:I

    .line 6
    iput p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    const/16 p1, 0x143

    const/4 p2, 0x0

    .line 7
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .locals 1

    .line 8
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 9
    iput-wide p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMG:J

    const/16 p1, 0x191

    const/4 p2, 0x0

    .line 10
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static o(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 1
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->n(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    return-void
.end method

.method public static o(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2

    .line 2
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    const/16 v1, 0x45

    .line 3
    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMi:I

    .line 4
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMD:I

    .line 5
    iput p2, v0, Lcom/kwad/sdk/core/adlog/c/a;->aME:I

    const/16 p1, 0x1f5

    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static p(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMg:I

    const/16 p1, 0x2f7

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static p(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 5
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 6
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLC:I

    .line 7
    iput p2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLD:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 9
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x406

    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static q(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 2
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMf:I

    const/16 p1, 0x1c

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static q(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 5
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 6
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLC:I

    .line 7
    iput p2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLD:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 9
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x409

    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static r(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static s(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static t(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/adlog/c/b;->ee(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/adlog/c;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static u(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->dG(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/kwad/sdk/core/adlog/a$a;->aLx:I

    .line 15
    .line 16
    iput p1, v0, Lcom/kwad/sdk/core/adlog/a$a;->aLE:I

    .line 17
    .line 18
    new-instance p1, Lcom/kwad/sdk/core/adlog/c/b;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    const/16 v1, 0x39d

    .line 32
    .line 33
    invoke-static {p0, v1, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static v(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput p1, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLC:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/c/b;->Jh()Lcom/kwad/sdk/core/adlog/c/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    const/16 v1, 0x408

    .line 22
    .line 23
    invoke-static {p0, v1, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static w(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, p1, v1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
