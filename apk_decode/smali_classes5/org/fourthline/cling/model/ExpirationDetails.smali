.class public Lorg/fourthline/cling/model/ExpirationDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNLIMITED_AGE:I = 0x0

.field private static simpleName:Ljava/lang/String; = "ExpirationDetails"


# instance fields
.field private lastRefreshTimestampSeconds:J

.field private maxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 7
    iput p1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    return-void
.end method


# virtual methods
.method public getCurrentTimestampSeconds()J
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public getLastRefreshTimestampSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecondsUntilExpiration()J
    .locals 5

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/32 v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    return-wide v0

    .line 9
    :cond_0
    iget-wide v1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    add-long/2addr v1, v3

    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long/2addr v1, v3

    .line 18
    return-wide v1
.end method

.method public hasExpired()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v0

    return v0
.end method

.method public hasExpired(Z)Z
    .locals 6

    .line 2
    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    div-int/2addr v0, p1

    int-to-long v4, v0

    add-long/2addr v1, v4

    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-gez p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setLastRefreshTimestampSeconds(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 2
    .line 3
    return-void
.end method

.method public stampLastRefresh()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/ExpirationDetails;->setLastRefreshTimestampSeconds(J)V

    .line 6
    .line 7
    .line 8
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
    sget-object v1, Lorg/fourthline/cling/model/ExpirationDetails;->simpleName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ") MAX AGE: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
