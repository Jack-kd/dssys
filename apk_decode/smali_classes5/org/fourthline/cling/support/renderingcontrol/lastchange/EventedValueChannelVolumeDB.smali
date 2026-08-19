.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue<",
        "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 2
    .line 3
    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    .line 15
    .line 16
    invoke-virtual {v3}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getVolumeDB()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-long v3, v3

    .line 25
    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/AbstractDatatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "val"

    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "channel"

    .line 54
    .line 55
    invoke-direct {v1, v3, v2}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    aput-object v0, v2, v3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v1, v2, v0

    .line 66
    .line 67
    return-object v2
.end method

.method public getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    move-result-object p1

    return-object p1
.end method

.method public valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    .line 3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "channel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/fourthline/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Channel;

    move-result-object v3

    .line 5
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "val"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 7
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 10
    new-instance p1, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-direct {p1, v3, v4}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V

    return-object p1

    :cond_3
    return-object v1
.end method
