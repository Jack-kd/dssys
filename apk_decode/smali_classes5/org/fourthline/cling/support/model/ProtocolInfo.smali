.class public Lorg/fourthline/cling/support/model/ProtocolInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected additionalInfo:Ljava/lang/String;

.field protected contentFormat:Ljava/lang/String;

.field protected network:Ljava/lang/String;

.field protected protocol:Lorg/fourthline/cling/support/model/Protocol;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 3
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 10
    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/fourthline/cling/support/model/Protocol;->value(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Protocol;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    const/4 p1, 0x1

    .line 11
    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    const/4 p1, 0x2

    .line 12
    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    const/4 p1, 0x3

    .line 13
    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse ProtocolInfo string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    .line 24
    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 25
    iput-object p2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 17
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 20
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->HTTP_GET:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 21
    invoke-virtual {p1}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    if-eqz p1, :cond_6

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
    check-cast p1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    return v1

    .line 54
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 55
    .line 56
    iget-object p1, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 57
    .line 58
    if-eq v2, p1, :cond_5

    .line 59
    .line 60
    return v1

    .line 61
    :cond_5
    return v0

    .line 62
    :cond_6
    :goto_0
    return v1
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentFormatMimeType()Lorg/seamless/util/MimeType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocol()Lorg/fourthline/cling/support/model/Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

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
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
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
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Protocol;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
