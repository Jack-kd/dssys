.class public Lcom/androidquery/callback/AjaxStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTH_ERROR:I = -0x66

.field public static final DATASTORE:I = 0x2

.field public static final DEVICE:I = 0x5

.field public static final FILE:I = 0x3

.field public static final MEMORY:I = 0x4

.field public static final NETWORK:I = 0x1

.field public static final NETWORK_ERROR:I = -0x65

.field public static final TRANSFORM_ERROR:I = -0x67


# instance fields
.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private close:Ljava/io/Closeable;

.field private code:I

.field private context:Lorg/apache/http/protocol/HttpContext;

.field private data:[B

.field private done:Z

.field private duration:J

.field private error:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private headers:[Lorg/apache/http/Header;

.field private invalid:Z

.field private message:Ljava/lang/String;

.field private reauth:Z

.field private redirect:Ljava/lang/String;

.field private refresh:Z

.field private source:I

.field private start:J

.field private time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 3
    const-string v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 8
    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 9
    const-string v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    .line 13
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 14
    iput-object p2, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->close:Ljava/io/Closeable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->close:Ljava/io/Closeable;

    .line 8
    .line 9
    return-void
.end method

.method public closeLater(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->close:Ljava/io/Closeable;

    .line 2
    .line 3
    return-void
.end method

.method public code(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 2
    .line 3
    return-object p0
.end method

.method public context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->context:Lorg/apache/http/protocol/HttpContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public data([B)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->data:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public done()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 15
    .line 16
    return-object p0
.end method

.method public error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public expired(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v2, v0

    .line 12
    cmp-long p1, v2, p1

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, 0x1

    .line 21
    if-eq p1, p2, :cond_0

    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->context:Lorg/apache/http/protocol/HttpContext;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v1, "http.cookie-store"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/apache/http/client/CookieStore;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v0, v3, :cond_2

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 26
    .line 27
    aget-object p1, p1, v0

    .line 28
    .line 29
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-object v1
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getInvalid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->invalid:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReauth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->redirect:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->refresh:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 2
    .line 3
    return-object p0
.end method

.method public invalidate()Lcom/androidquery/callback/AjaxStatus;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->invalid:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->redirect:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public refresh(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->refresh:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public reset()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/androidquery/callback/AjaxStatus;->close()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public source(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 2
    .line 3
    return-object p0
.end method

.method public time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method
