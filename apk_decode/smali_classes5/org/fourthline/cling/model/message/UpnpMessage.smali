.class public abstract Lorg/fourthline/cling/model/message/UpnpMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/fourthline/cling/model/message/UpnpOperation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private body:Ljava/lang/Object;

.field private bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

.field private headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

.field private operation:Lorg/fourthline/cling/model/message/UpnpOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private udaMajorVersion:I

.field private udaMinorVersion:I


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/UpnpMessage<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMajorVersion:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 4
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 5
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 6
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->operation:Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 7
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 8
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 10
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getUdaMajorVersion()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getUdaMinorVersion()I

    move-result p1

    iput p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMinorVersion:I

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMajorVersion:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 15
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 16
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 17
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->operation:Lorg/fourthline/cling/model/message/UpnpOperation;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMajorVersion:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 21
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 22
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 23
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->operation:Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 24
    iput-object p2, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 25
    iput-object p3, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBodyBytes()[B
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->hasBody()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public getBodyString()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->hasBody()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const v2, 0xfeff

    .line 33
    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, [B

    .line 53
    .line 54
    const-string v2, "UTF-8"

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method public getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentTypeCharset()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/seamless/util/MimeType;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->getParameters()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "charset"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 6
    .line 7
    const-class v2, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 14
    .line 15
    return-object v0
.end method

.method public getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->operation:Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUdaMajorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getUdaMinorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasHostHeader()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isBodyNonEmptyString()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->hasBody()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public isContentTypeMissingOrText()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->isText()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isContentTypeText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->isText()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isContentTypeTextUDA()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->isUDACompliantXML()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 2
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    return-void
.end method

.method public setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 4
    iput-object p2, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    return-void
.end method

.method public setBodyCharacters([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeCharset()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeCharset()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v2, "UTF-8"

    .line 17
    .line 18
    :goto_0
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/message/UpnpMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setBodyType(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->bodyType:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 2
    .line 3
    return-void
.end method

.method public setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 2
    .line 3
    return-void
.end method

.method public setUdaMajorVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public setUdaMinorVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/fourthline/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ") "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
