.class public Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private interceptKey:Ljava/lang/String;

.field private urlType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->urlType:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->interceptKey:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static create()Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;

    invoke-direct {v0}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;
    .locals 1

    .line 2
    new-instance v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;

    invoke-direct {v0}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;-><init>()V

    .line 3
    iput-object p0, v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->urlType:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;
    .locals 1

    .line 4
    new-instance v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;

    invoke-direct {v0}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;-><init>()V

    .line 5
    iput-object p0, v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->urlType:Ljava/lang/String;

    .line 6
    iput-object p1, v0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->interceptKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getInterceptKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->interceptKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrlType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->urlType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setInterceptKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->interceptKey:Ljava/lang/String;

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
    const-string v1, "HttpReqEntity{urlType=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->urlType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', interceptKey=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->interceptKey:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "\'}"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/smartdigimkt/f/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
