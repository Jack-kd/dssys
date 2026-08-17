.class public Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private httpCode:I

.field private interceptResult:Ljava/lang/Object;

.field private interceptStatusCode:I

.field private isIntercept:Z

.field private reqNextTime:J

.field private urlKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create()Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->httpCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getInterceptResult()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->interceptResult:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterceptStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->interceptStatusCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getReqNextTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->reqNextTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrlKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->urlKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIntercept()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->isIntercept:Z

    .line 2
    .line 3
    return v0
.end method

.method public setHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->httpCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->isIntercept:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInterceptResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->interceptResult:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setInterceptStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->interceptStatusCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setReqNextTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->reqNextTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setUrlKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->urlKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HttpRespEntity{urlKey=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->urlKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', statusCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->httpCode:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", reqNextTime="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->reqNextTime:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isIntercept="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->isIntercept:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", interceptStatusCode="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->interceptStatusCode:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", interceptResult="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->interceptResult:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x7d

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
