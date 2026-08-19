.class public Lcom/meishu/sdk/core/domain/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<body:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private errorCode:I

.field private errorDescription:Ljava/lang/String;

.field private header:Lokhttp3/Headers;

.field private responseBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Tbody;"
        }
    .end annotation
.end field

.field private successful:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->errorCode:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->errorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->errorDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeader()Lokhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->header:Lokhttp3/Headers;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseBody()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Tbody;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->responseBody:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->successful:Z

    .line 2
    .line 3
    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->errorCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->errorDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHeader(Lokhttp3/Headers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->header:Lokhttp3/Headers;

    .line 2
    .line 3
    return-void
.end method

.method public setResponseBody(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tbody;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->responseBody:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/domain/HttpResponse;->successful:Z

    .line 2
    .line 3
    return-void
.end method
