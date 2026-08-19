.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected channel:Lorg/fourthline/cling/support/model/Channel;

.field protected volumeDB:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->channel:Lorg/fourthline/cling/support/model/Channel;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->volumeDB:Ljava/lang/Integer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/fourthline/cling/support/model/Channel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->channel:Lorg/fourthline/cling/support/model/Channel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVolumeDB()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->volumeDB:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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
    const-string v1, "VolumeDB: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getVolumeDB()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " ("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ")"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
