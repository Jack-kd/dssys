.class public Lorg/fourthline/cling/support/model/PositionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private absCount:I

.field private absTime:Ljava/lang/String;

.field private relCount:I

.field private relTime:Ljava/lang/String;

.field private track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private trackDuration:Ljava/lang/String;

.field private trackMetaData:Ljava/lang/String;

.field private trackURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 3
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 4
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 9
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 87
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 88
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 92
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 93
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    .line 94
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 95
    iput-object p3, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 56
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 57
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 61
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 62
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    .line 63
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 64
    iput-object p3, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 70
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 71
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 72
    const-string v1, ""

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 75
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 76
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    .line 77
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 78
    iput-object p3, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 83
    iput p8, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 84
    iput p9, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

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

    .line 10
    const-string v0, "Track"

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "TrackDuration"

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "TrackMetaData"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "TrackURI"

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "RelTime"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "AbsTime"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "RelCount"

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v0, "AbsCount"

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v1, p0

    .line 19
    invoke-direct/range {v1 .. v10}, Lorg/fourthline/cling/support/model/PositionInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PositionInfo;JJ)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 39
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 40
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 44
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 45
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    .line 46
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 47
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 50
    invoke-static {p2, p3}, Lorg/fourthline/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 51
    invoke-static {p4, p5}, Lorg/fourthline/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 52
    iget p2, p1, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    iput p2, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 53
    iget p1, p1, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    iput p1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PositionInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 22
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 23
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 27
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 28
    iput v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    .line 29
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 30
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 35
    iget p2, p1, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    iput p2, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 36
    iget p1, p1, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    iput p1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    return-void
.end method


# virtual methods
.method public getAbsCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getAbsTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getElapsedPercent()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDurationSeconds()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v6, v0, v4

    .line 12
    .line 13
    if-eqz v6, :cond_1

    .line 14
    .line 15
    cmp-long v4, v2, v4

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v4, Ljava/lang/Double;

    .line 21
    .line 22
    long-to-double v0, v0

    .line 23
    long-to-double v2, v2

    .line 24
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 25
    .line 26
    div-double/2addr v2, v5

    .line 27
    div-double/2addr v0, v2

    .line 28
    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public getRelCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getRelTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrack()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->track:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackDurationSeconds()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->fromTimeString(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public getTrackElapsedSeconds()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "NOT_IMPLEMENTED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->fromTimeString(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    return-wide v0
.end method

.method public getTrackMetaData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackRemainingSeconds()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDurationSeconds()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public getTrackURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setRelTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTrackDuration(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

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
    const-string v1, "(PositionInfo) Track: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrack()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " RelTime: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " Duration: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " Percent: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PositionInfo;->getElapsedPercent()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
