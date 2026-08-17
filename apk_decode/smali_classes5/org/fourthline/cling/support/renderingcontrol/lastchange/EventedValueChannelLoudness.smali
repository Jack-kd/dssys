.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelLoudness;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue<",
        "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;)V
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
    .locals 4
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
    new-instance v1, Lorg/fourthline/cling/model/types/BooleanDatatype;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/fourthline/cling/model/types/BooleanDatatype;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;->getLoudness()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/BooleanDatatype;->getString(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "val"

    .line 23
    .line 24
    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;

    .line 34
    .line 35
    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "channel"

    .line 44
    .line 45
    invoke-direct {v1, v3, v2}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    aput-object v0, v2, v3

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    aput-object v1, v2, v0

    .line 56
    .line 57
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
    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;->toString()Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelLoudness;->valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;

    move-result-object p1

    return-object p1
.end method

.method public valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;"
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
    new-instance v4, Lorg/fourthline/cling/model/types/BooleanDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/BooleanDatatype;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/types/BooleanDatatype;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 7
    new-instance p1, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;

    invoke-direct {p1, v3, v4}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Boolean;)V

    return-object p1

    :cond_3
    return-object v1
.end method
