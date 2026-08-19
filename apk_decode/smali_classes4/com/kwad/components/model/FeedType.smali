.class public final enum Lcom/kwad/components/model/FeedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/model/FeedType$FeedDefaultType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/components/model/FeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_CONTENT_11:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_CONTENT_12:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_CONTENT_13:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_ABOVE:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_BELOW:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_LEFT:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_NEW:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_TEXT_RIGHT:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_THREE_IMAGE:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_UNKNOWN:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_VERTICAL_BISERIAL:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_VERTICAL_NOVEL:Lcom/kwad/components/model/FeedType;

.field public static final enum FEED_TYPE_VERTICAL_ORIGIN:Lcom/kwad/components/model/FeedType;


# instance fields
.field private mFeedDefaultType:Lcom/kwad/components/model/FeedType$FeedDefaultType;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/kwad/components/model/FeedType;

    .line 2
    .line 3
    sget-object v1, Lcom/kwad/components/model/FeedType$FeedDefaultType;->FEED_VERTICAL_ORIGIN:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 4
    .line 5
    const-string v2, "FEED_TYPE_UNKNOWN"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/components/model/FeedType;

    .line 12
    .line 13
    new-instance v2, Lcom/kwad/components/model/FeedType;

    .line 14
    .line 15
    const-string v3, "FEED_TYPE_TEXT_IMMERSE"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4, v4, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/components/model/FeedType;

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    new-instance v2, Lcom/kwad/components/model/FeedType;

    .line 25
    .line 26
    const-string v4, "FEED_TYPE_TEXT_LEFT"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v2, v4, v5, v5, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_LEFT:Lcom/kwad/components/model/FeedType;

    .line 33
    .line 34
    move-object v4, v3

    .line 35
    new-instance v3, Lcom/kwad/components/model/FeedType;

    .line 36
    .line 37
    const-string v5, "FEED_TYPE_TEXT_RIGHT"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v3, v5, v6, v6, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_RIGHT:Lcom/kwad/components/model/FeedType;

    .line 44
    .line 45
    move-object v5, v4

    .line 46
    new-instance v4, Lcom/kwad/components/model/FeedType;

    .line 47
    .line 48
    const-string v6, "FEED_TYPE_TEXT_ABOVE"

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    invoke-direct {v4, v6, v7, v7, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 52
    .line 53
    .line 54
    sput-object v4, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/components/model/FeedType;

    .line 55
    .line 56
    move-object v6, v5

    .line 57
    new-instance v5, Lcom/kwad/components/model/FeedType;

    .line 58
    .line 59
    const-string v7, "FEED_TYPE_TEXT_BELOW"

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v5, v7, v8, v8, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 63
    .line 64
    .line 65
    sput-object v5, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/components/model/FeedType;

    .line 66
    .line 67
    move-object v7, v6

    .line 68
    new-instance v6, Lcom/kwad/components/model/FeedType;

    .line 69
    .line 70
    const-string v8, "FEED_TYPE_TEXT_ABOVE_GROUP"

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v6, v8, v9, v9, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 74
    .line 75
    .line 76
    sput-object v6, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/components/model/FeedType;

    .line 77
    .line 78
    move-object v8, v7

    .line 79
    new-instance v7, Lcom/kwad/components/model/FeedType;

    .line 80
    .line 81
    const-string v9, "FEED_TYPE_TEXT_NEW"

    .line 82
    .line 83
    const/4 v10, 0x7

    .line 84
    invoke-direct {v7, v9, v10, v10, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 85
    .line 86
    .line 87
    sput-object v7, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_NEW:Lcom/kwad/components/model/FeedType;

    .line 88
    .line 89
    move-object v9, v8

    .line 90
    new-instance v8, Lcom/kwad/components/model/FeedType;

    .line 91
    .line 92
    const-string v10, "FEED_TYPE_CONTENT_11"

    .line 93
    .line 94
    const/16 v11, 0x8

    .line 95
    .line 96
    const/16 v12, 0xb

    .line 97
    .line 98
    invoke-direct {v8, v10, v11, v12, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 99
    .line 100
    .line 101
    sput-object v8, Lcom/kwad/components/model/FeedType;->FEED_TYPE_CONTENT_11:Lcom/kwad/components/model/FeedType;

    .line 102
    .line 103
    move-object v10, v9

    .line 104
    new-instance v9, Lcom/kwad/components/model/FeedType;

    .line 105
    .line 106
    const-string v11, "FEED_TYPE_CONTENT_12"

    .line 107
    .line 108
    const/16 v13, 0x9

    .line 109
    .line 110
    const/16 v14, 0xc

    .line 111
    .line 112
    invoke-direct {v9, v11, v13, v14, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 113
    .line 114
    .line 115
    sput-object v9, Lcom/kwad/components/model/FeedType;->FEED_TYPE_CONTENT_12:Lcom/kwad/components/model/FeedType;

    .line 116
    .line 117
    move-object v11, v10

    .line 118
    new-instance v10, Lcom/kwad/components/model/FeedType;

    .line 119
    .line 120
    const-string v13, "FEED_TYPE_CONTENT_13"

    .line 121
    .line 122
    const/16 v15, 0xa

    .line 123
    .line 124
    const/16 v14, 0xd

    .line 125
    .line 126
    invoke-direct {v10, v13, v15, v14, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 127
    .line 128
    .line 129
    sput-object v10, Lcom/kwad/components/model/FeedType;->FEED_TYPE_CONTENT_13:Lcom/kwad/components/model/FeedType;

    .line 130
    .line 131
    move-object v13, v11

    .line 132
    new-instance v11, Lcom/kwad/components/model/FeedType;

    .line 133
    .line 134
    const-string v15, "FEED_TYPE_THREE_IMAGE"

    .line 135
    .line 136
    const/16 v14, 0x14

    .line 137
    .line 138
    invoke-direct {v11, v15, v12, v14, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 139
    .line 140
    .line 141
    sput-object v11, Lcom/kwad/components/model/FeedType;->FEED_TYPE_THREE_IMAGE:Lcom/kwad/components/model/FeedType;

    .line 142
    .line 143
    new-instance v12, Lcom/kwad/components/model/FeedType;

    .line 144
    .line 145
    const-string v14, "FEED_TYPE_VERTICAL_ORIGIN"

    .line 146
    .line 147
    const/16 v15, 0x15

    .line 148
    .line 149
    move-object/from16 v18, v0

    .line 150
    .line 151
    const/16 v0, 0xc

    .line 152
    .line 153
    invoke-direct {v12, v14, v0, v15, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 154
    .line 155
    .line 156
    sput-object v12, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_ORIGIN:Lcom/kwad/components/model/FeedType;

    .line 157
    .line 158
    move-object v1, v13

    .line 159
    new-instance v13, Lcom/kwad/components/model/FeedType;

    .line 160
    .line 161
    const-string v0, "FEED_TYPE_VERTICAL_NOVEL"

    .line 162
    .line 163
    sget-object v14, Lcom/kwad/components/model/FeedType$FeedDefaultType;->FEED_VERTICAL_NOVEL_DEFAULT:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 164
    .line 165
    move-object/from16 v16, v1

    .line 166
    .line 167
    const/16 v1, 0xd

    .line 168
    .line 169
    invoke-direct {v13, v0, v1, v15, v14}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 170
    .line 171
    .line 172
    sput-object v13, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_NOVEL:Lcom/kwad/components/model/FeedType;

    .line 173
    .line 174
    new-instance v14, Lcom/kwad/components/model/FeedType;

    .line 175
    .line 176
    const/16 v0, 0xe

    .line 177
    .line 178
    sget-object v1, Lcom/kwad/components/model/FeedType$FeedDefaultType;->FEED_VERTICAL_BISERIAL_DEFAULT:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 179
    .line 180
    move-object/from16 v17, v2

    .line 181
    .line 182
    const-string v2, "FEED_TYPE_VERTICAL_BISERIAL"

    .line 183
    .line 184
    invoke-direct {v14, v2, v0, v15, v1}, Lcom/kwad/components/model/FeedType;-><init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V

    .line 185
    .line 186
    .line 187
    sput-object v14, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_BISERIAL:Lcom/kwad/components/model/FeedType;

    .line 188
    .line 189
    move-object/from16 v1, v16

    .line 190
    .line 191
    move-object/from16 v2, v17

    .line 192
    .line 193
    move-object/from16 v0, v18

    .line 194
    .line 195
    filled-new-array/range {v0 .. v14}, [Lcom/kwad/components/model/FeedType;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/kwad/components/model/FeedType;->$VALUES:[Lcom/kwad/components/model/FeedType;

    .line 200
    .line 201
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/kwad/components/model/FeedType$FeedDefaultType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kwad/components/model/FeedType$FeedDefaultType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/kwad/components/model/FeedType;->type:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/kwad/components/model/FeedType;->mFeedDefaultType:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 7
    .line 8
    return-void
.end method

.method public static checkTypeValid(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .locals 4
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/components/model/FeedType;->isH5Type(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 20
    .line 21
    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->defaultType:I

    .line 22
    .line 23
    invoke-static {v1, p0}, Lcom/kwad/components/model/FeedType;->fromInt(II)Lcom/kwad/components/model/FeedType;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eq v0, v2, :cond_5

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq v0, v3, :cond_3

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-eq v0, v3, :cond_1

    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    if-eq v0, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/components/model/FeedType;

    .line 42
    .line 43
    if-eq p0, v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_ORIGIN:Lcom/kwad/components/model/FeedType;

    .line 46
    .line 47
    if-eq p0, v0, :cond_2

    .line 48
    .line 49
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_NOVEL:Lcom/kwad/components/model/FeedType;

    .line 50
    .line 51
    if-eq p0, v0, :cond_2

    .line 52
    .line 53
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_BISERIAL:Lcom/kwad/components/model/FeedType;

    .line 54
    .line 55
    if-eq p0, v0, :cond_2

    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    return v1

    .line 59
    :cond_3
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/components/model/FeedType;

    .line 60
    .line 61
    if-eq p0, v0, :cond_4

    .line 62
    .line 63
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/components/model/FeedType;

    .line 64
    .line 65
    if-eq p0, v0, :cond_4

    .line 66
    .line 67
    return v2

    .line 68
    :cond_4
    return v1

    .line 69
    :cond_5
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/components/model/FeedType;

    .line 70
    .line 71
    if-eq p0, v0, :cond_7

    .line 72
    .line 73
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/components/model/FeedType;

    .line 74
    .line 75
    if-eq p0, v0, :cond_7

    .line 76
    .line 77
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/components/model/FeedType;

    .line 78
    .line 79
    if-eq p0, v0, :cond_7

    .line 80
    .line 81
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_ORIGIN:Lcom/kwad/components/model/FeedType;

    .line 82
    .line 83
    if-eq p0, v0, :cond_7

    .line 84
    .line 85
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_NOVEL:Lcom/kwad/components/model/FeedType;

    .line 86
    .line 87
    if-eq p0, v0, :cond_7

    .line 88
    .line 89
    sget-object v0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_VERTICAL_BISERIAL:Lcom/kwad/components/model/FeedType;

    .line 90
    .line 91
    if-ne p0, v0, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    return v1

    .line 95
    :cond_7
    :goto_0
    return v2
.end method

.method public static fromInt(II)Lcom/kwad/components/model/FeedType;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/kwad/components/model/FeedType;->isH5Type(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_TEXT_NEW:Lcom/kwad/components/model/FeedType;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lcom/kwad/components/model/FeedType;->values()[Lcom/kwad/components/model/FeedType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_3

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    iget v4, v3, Lcom/kwad/components/model/FeedType;->type:I

    .line 21
    .line 22
    if-ne v4, p0, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lcom/kwad/components/model/FeedType;->isNewVerticalType(I)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget v4, v3, Lcom/kwad/components/model/FeedType;->type:I

    .line 32
    .line 33
    if-ne v4, p0, :cond_2

    .line 34
    .line 35
    invoke-static {p0}, Lcom/kwad/components/model/FeedType;->isNewVerticalType(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget-object v4, v3, Lcom/kwad/components/model/FeedType;->mFeedDefaultType:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/kwad/components/model/FeedType$FeedDefaultType;->getDefaultType()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v4, p1, :cond_2

    .line 48
    .line 49
    :goto_1
    return-object v3

    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    sget-object p0, Lcom/kwad/components/model/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/components/model/FeedType;

    .line 54
    .line 55
    return-object p0
.end method

.method private static isH5Type(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNewVerticalType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/components/model/FeedType;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/model/FeedType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwad/components/model/FeedType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kwad/components/model/FeedType;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/model/FeedType;->$VALUES:[Lcom/kwad/components/model/FeedType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kwad/components/model/FeedType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kwad/components/model/FeedType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getFeedDefaultType()Lcom/kwad/components/model/FeedType$FeedDefaultType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/model/FeedType;->mFeedDefaultType:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/model/FeedType;->type:I

    .line 2
    .line 3
    return v0
.end method
