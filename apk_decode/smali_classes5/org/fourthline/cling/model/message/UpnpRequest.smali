.class public Lorg/fourthline/cling/model/message/UpnpRequest;
.super Lorg/fourthline/cling/model/message/UpnpOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    }
.end annotation


# instance fields
.field private method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 5
    iput-object p2, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    if-eqz p2, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpMethodName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getHttpName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    .line 2
    .line 3
    return-object v0
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

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
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, " "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v1, ""

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
