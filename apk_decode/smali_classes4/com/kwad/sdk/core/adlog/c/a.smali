.class public Lcom/kwad/sdk/core/adlog/c/a;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public QX:I

.field public QY:Ljava/lang/String;

.field public QZ:Lcom/kwad/sdk/core/adlog/a$a;

.field public RD:J

.field public Ra:I

.field public Rb:I

.field public aKI:I

.field public aMA:I

.field public aMB:Ljava/lang/String;

.field public aMC:Ljava/lang/String;

.field public aMD:I

.field public aME:I

.field public aMF:J

.field public aMG:J

.field public aMH:I

.field public aMI:I

.field public aMJ:I

.field public aMK:I

.field public aML:I

.field public aMM:Ljava/lang/String;

.field public aMN:I

.field public aMO:I

.field public aMP:I

.field public aMQ:I

.field public aMR:I

.field public aMS:I

.field public aMT:Ljava/lang/String;

.field public aMe:Lorg/json/JSONObject;

.field public aMf:I

.field public aMg:I

.field public aMh:I

.field public aMi:I

.field public aMj:Ljava/lang/String;

.field public aMk:J

.field public aMl:I

.field public aMm:J

.field public aMn:Ljava/lang/String;

.field public aMo:Ljava/lang/String;

.field public aMp:Ljava/lang/String;

.field public aMq:I

.field public aMr:I

.field public aMs:I

.field public aMt:I

.field public aMu:Ljava/lang/String;

.field public aMv:I

.field public aMw:I

.field public aMx:Ljava/lang/String;

.field public aMy:Ljava/lang/String;

.field public aMz:I

.field public adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public adnMaterialType:I

.field public adnMaterialUrl:Ljava/lang/String;

.field public adnName:Ljava/lang/String;

.field public adnType:I

.field public ads:I

.field public adxResult:I

.field public downloadSource:I

.field public downloadStatus:I

.field public nm:I

.field public no:Lcom/kwad/sdk/utils/al$a;

.field public np:D

.field public zV:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMk:J

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMl:I

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMm:J

    .line 12
    .line 13
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMs:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    .line 21
    .line 22
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMH:I

    .line 23
    .line 24
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMI:I

    .line 25
    .line 26
    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->downloadStatus:I

    .line 27
    .line 28
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aML:I

    .line 29
    .line 30
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    .line 31
    .line 32
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMN:I

    .line 33
    .line 34
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->adxResult:I

    .line 35
    .line 36
    iput v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    .line 37
    .line 38
    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMS:I

    .line 39
    .line 40
    return-void
.end method

.method public static Jf()Lcom/kwad/sdk/core/adlog/c/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final Jg()Lcom/kwad/sdk/core/adlog/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    return-object p0
.end method

.method public final a(Lcom/kwad/sdk/core/report/h;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/report/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/report/h;->Nb()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final aA(J)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final aB(J)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->RD:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final cF(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/h/a;->Oy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/kwad/sdk/commercial/e;->bB(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$BaseMatrixTemplate;->templateId:Ljava/lang/String;

    .line 15
    .line 16
    iget-wide v1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;->templateVersionCode:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;->publishType:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Lcom/kwad/sdk/core/adlog/a$a;

    .line 29
    .line 30
    invoke-direct {v2}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 34
    .line 35
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 36
    .line 37
    iput p1, v2, Lcom/kwad/sdk/core/adlog/a$a;->tkPublishType:I

    .line 38
    .line 39
    iput-object v0, v2, Lcom/kwad/sdk/core/adlog/a$a;->aLi:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v1, v2, Lcom/kwad/sdk/core/adlog/a$a;->aLj:Ljava/lang/String;

    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final dV(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iput v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    .line 18
    .line 19
    return-void
.end method

.method public final dW(I)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dX(I)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dY(I)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dZ(I)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->no:Lcom/kwad/sdk/utils/al$a;

    return-object p0
.end method

.method public final e(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {p2}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 3
    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/kwad/sdk/core/adlog/a$a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/g/a;)Lcom/kwad/sdk/core/track/AdTrackLog;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/a$a;->aLF:Lcom/kwad/sdk/core/track/AdTrackLog;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/kwad/sdk/core/adlog/a$a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/g/a;)Lcom/kwad/sdk/core/track/AdTrackLog;

    :cond_1
    return-void
.end method

.method public final ea(I)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->ads:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final eb(I)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMz:I

    return-object p0
.end method

.method public final eb(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/c/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    return-object p0
.end method
