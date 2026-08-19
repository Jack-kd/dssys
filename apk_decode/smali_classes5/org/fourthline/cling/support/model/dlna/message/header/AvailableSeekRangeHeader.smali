.class public Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader<",
        "Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getModeFlag()Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const-string v4, " "

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v3}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->getString(Z)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v3}, Lorg/fourthline/cling/model/types/BytesRange;->getString(Z)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_1
    return-object v1
.end method

.method public setString(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Invalid AvailableSeekRange header value: "

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const-string v0, " "

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-le v2, v3, :cond_2

    .line 18
    .line 19
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "MODE_"

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aget-object v5, v0, v4

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    const/4 v5, 0x0

    .line 44
    :try_start_1
    aget-object v6, v0, v3

    .line 45
    .line 46
    invoke-static {v6, v3}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_1
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :try_start_2
    aget-object v3, v0, v3

    .line 52
    .line 53
    invoke-static {v3}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    .line 54
    .line 55
    .line 56
    move-result-object v3
    :try_end_2
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_2 .. :try_end_2} :catch_2

    .line 57
    move-object v7, v5

    .line 58
    move-object v5, v3

    .line 59
    move v3, v4

    .line 60
    move-object v4, v7

    .line 61
    :goto_0
    if-eqz v3, :cond_1

    .line 62
    .line 63
    :try_start_3
    array-length v3, v0

    .line 64
    const/4 v5, 0x2

    .line 65
    if-le v3, v5, :cond_0

    .line 66
    .line 67
    aget-object v0, v0, v5

    .line 68
    .line 69
    invoke-static {v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    .line 74
    .line 75
    invoke-direct {v3, v2, v4, v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;Lorg/fourthline/cling/model/types/BytesRange;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    .line 85
    .line 86
    invoke-direct {v0, v2, v4}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    .line 94
    .line 95
    invoke-direct {v0, v2, v5}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/model/types/BytesRange;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    :catch_2
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    .line 103
    .line 104
    const-string v2, "Invalid AvailableSeekRange Range"

    .line 105
    .line 106
    invoke-direct {v0, v2}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :catch_3
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    .line 111
    .line 112
    const-string v2, "Invalid AvailableSeekRange Mode"

    .line 113
    .line 114
    invoke-direct {v0, v2}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
    :try_end_3
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_3 .. :try_end_3} :catch_1

    .line 118
    :goto_2
    new-instance v2, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, "; "

    .line 132
    .line 133
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {v2, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v2

    .line 151
    :cond_2
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v0
.end method
