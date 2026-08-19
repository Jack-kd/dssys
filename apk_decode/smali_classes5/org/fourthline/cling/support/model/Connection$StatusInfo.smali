.class public Lorg/fourthline/cling/support/model/Connection$StatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusInfo"
.end annotation


# instance fields
.field private lastError:Lorg/fourthline/cling/support/model/Connection$Error;

.field private status:Lorg/fourthline/cling/support/model/Connection$Status;

.field private uptimeSeconds:J


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/Connection$Status;JLorg/fourthline/cling/support/model/Connection$Error;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 4
    iput-wide p2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 5
    iput-object p4, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Connection$Status;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/model/Connection$Error;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;-><init>(Lorg/fourthline/cling/support/model/Connection$Status;JLorg/fourthline/cling/support/model/Connection$Error;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;

    .line 20
    .line 21
    iget-wide v2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 22
    .line 23
    iget-wide v4, p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 31
    .line 32
    iget-object v3, p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 33
    .line 34
    if-eq v2, v3, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 40
    .line 41
    if-eq v2, p1, :cond_4

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    return v0

    .line 45
    :cond_5
    :goto_0
    return v1
.end method

.method public getLastError()Lorg/fourthline/cling/support/model/Connection$Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()Lorg/fourthline/cling/support/model/Connection$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUptime()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->getUptimeSeconds()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getUptimeSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 10
    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    ushr-long v3, v1, v3

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    return v0
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
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->getStatus()Lorg/fourthline/cling/support/model/Connection$Status;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
