.class public Lorg/fourthline/cling/support/model/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentURI:Ljava/lang/String;

.field private currentURIMetaData:Ljava/lang/String;

.field private mediaDuration:Ljava/lang/String;

.field private nextURI:Ljava/lang/String;

.field private nextURIMetaData:Ljava/lang/String;

.field private numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

.field private recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

.field private writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 4
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 6
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 7
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 8
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 9
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 10
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 25
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 28
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 29
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 31
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 69
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 71
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 72
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 74
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 75
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 76
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 81
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 86
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 89
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 91
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 92
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->WRITABLE:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 93
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 98
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 100
    iput-object p8, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 101
    iput-object p9, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 37
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 40
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 41
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 42
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 43
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 44
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 47
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 52
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 55
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 56
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 57
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 58
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->WRITABLE:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 59
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 62
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 64
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 65
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    .line 11
    const-string v0, "CurrentURI"

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "CurrentURIMetaData"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "NextURI"

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "NextURIMetaData"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "NrTracks"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "MediaDuration"

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "PlayMedium"

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v8

    const-string v0, "RecordMedium"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v9

    const-string v0, "WriteStatus"

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->valueOrUnknownOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    move-result-object v10

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v10}, Lorg/fourthline/cling/support/model/MediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V

    return-void
.end method


# virtual methods
.method public getCurrentURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentURIMetaData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextURIMetaData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumberOfTracks()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecordMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWriteStatus()Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 2
    .line 3
    return-object v0
.end method
