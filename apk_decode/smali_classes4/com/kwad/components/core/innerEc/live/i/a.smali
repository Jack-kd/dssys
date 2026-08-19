.class public final Lcom/kwad/components/core/innerEc/live/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static l(Ljava/lang/Throwable;)Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;
    .locals 3

    .line 1
    check-cast p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 2
    .line 3
    new-instance v0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 4
    .line 5
    iget v1, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 6
    .line 7
    iget v2, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->subCode:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
