.class public final Lcom/kwad/components/core/innerEc/live/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

.field private final Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

.field private Xb:Z

.field private Xc:Z

.field private Xd:Ljava/lang/Runnable;

.field private Xe:Z

.field private final Xf:Lcom/kwad/components/core/innerEc/live/video/a/a;

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kwad/components/core/innerEc/live/b/a/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/c/a$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/c/a$1;-><init>(Lcom/kwad/components/core/innerEc/live/c/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xf:Lcom/kwad/components/core/innerEc/live/video/a/a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->mActivity:Landroid/app/Activity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 14
    .line 15
    iget-object p1, p2, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/c/a;->init()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/c/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/c/a;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xe:Z

    return p1
.end method

.method private aM(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/live/b;->Tr:Lcom/kwad/components/core/innerEc/live/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/live/a;->rt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/kwad/components/core/innerEc/live/c/a$3;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/innerEc/live/c/a$3;-><init>(Lcom/kwad/components/core/innerEc/live/c/a;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private i(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/c/a;->j(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xf:Lcom/kwad/components/core/innerEc/live/video/a/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/a/b;->a(Lcom/kwad/components/core/innerEc/live/video/a/a;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xe:Z

    .line 12
    .line 13
    return-void
.end method

.method private j(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/i/a;->l(Ljava/lang/Throwable;)Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "handleServerException errorCode: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", subCode"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->subCode:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "LiveExceptionService"

    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->ri()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/16 v3, 0x259

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-eq v0, v3, :cond_4

    .line 44
    .line 45
    const/16 v3, 0x25b

    .line 46
    .line 47
    if-eq v0, v3, :cond_2

    .line 48
    .line 49
    const/16 v3, 0x25f

    .line 50
    .line 51
    if-eq v0, v3, :cond_1

    .line 52
    .line 53
    const v1, 0x13958

    .line 54
    .line 55
    .line 56
    const-string v3, "LIVE_START_PLAY_OVER_LOAD"

    .line 57
    .line 58
    if-eq v0, v1, :cond_0

    .line 59
    .line 60
    const/16 v1, 0x258

    .line 61
    .line 62
    if-lt v0, v1, :cond_3

    .line 63
    .line 64
    const/16 v1, 0x260

    .line 65
    .line 66
    if-eq v0, v1, :cond_3

    .line 67
    .line 68
    iget-object v0, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/c/a;->aM(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    iput-boolean v4, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xc:Z

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v3, "LIVE_KICKED_OUT_ROOM"

    .line 122
    .line 123
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 139
    .line 140
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;->getPbClientStat()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbClientStat;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbClientStat;->getBannedByAnchor()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/a/b;->setPlayerReleaseReason(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 152
    .line 153
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/c/a;->aM(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_2
    iput-boolean v4, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xb:Z

    .line 158
    .line 159
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/b/a/b;->UC:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isAdded()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_3

    .line 168
    .line 169
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 172
    .line 173
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;->getPbClientStat()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbClientStat;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbClientStat;->getLiveEndByAdmin()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/innerEc/live/video/a/b;->setPlayerReleaseReason(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/b/a/b;->UK:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 187
    .line 188
    sget-object v0, Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;->LIVE_BANNED:Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;

    .line 189
    .line 190
    invoke-interface {p1, v0}, Lcom/kwad/components/core/innerEc/live/end/a;->a(Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    return-void

    .line 194
    :cond_4
    iget p1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->subCode:I

    .line 195
    .line 196
    const/16 v0, 0x263

    .line 197
    .line 198
    if-ne p1, v0, :cond_5

    .line 199
    .line 200
    const-string p1, "LIVE_NEW_ONE_OPENED"

    .line 201
    .line 202
    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_5
    iput-boolean v4, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xb:Z

    .line 207
    .line 208
    const-string p1, "LIVE_AUDIENCE_END handleServerException"

    .line 209
    .line 210
    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/live/c/a;->sF()V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method private sE()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xb:Z

    .line 2
    .line 3
    return v0
.end method

.method private sG()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xd:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/innerEc/live/c/a$2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/c/a$2;-><init>(Lcom/kwad/components/core/innerEc/live/c/a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xd:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v1, 0x1388

    .line 13
    .line 14
    invoke-static {v0, p0, v1, v2}, Lcom/kwad/sdk/utils/by;->a(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private sH()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xd:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->b(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xd:Ljava/lang/Runnable;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/utils/by;->t(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xf:Lcom/kwad/components/core/innerEc/live/video/a/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/a/b;->b(Lcom/kwad/components/core/innerEc/live/video/a/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/c/a;->i(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final sF()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UC:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/c/a;->sE()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Xe:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/video/a/b;->isBuffering()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/video/a/b;->isPlaying()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/c/a;->sG()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/c/a;->sH()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->ri()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/c/a;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;->getPbClientStat()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbClientStat;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbClientStat;->getLiveEndByAnchor()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/innerEc/live/video/a/b;->setPlayerReleaseReason(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UK:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 69
    .line 70
    sget-object v1, Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;->ANCHOR_CLOSE:Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/kwad/components/core/innerEc/live/end/a;->a(Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method
