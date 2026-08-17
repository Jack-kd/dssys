.class public abstract Lcom/meishu/sdk/core/ad/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/ad/IAd<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAd"


# instance fields
.field public adView:Landroid/view/View;

.field private adWrapper:Lcom/meishu/sdk/core/loader/d;

.field private interactionListener:Lcom/meishu/sdk/core/loader/InteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field public touchData:Lcom/meishu/sdk/core/ad/TouchData;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/core/ad/a;->platform:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Lcom/meishu/sdk/core/ad/TouchData;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/meishu/sdk/core/ad/TouchData;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/a;->touchData:Lcom/meishu/sdk/core/ad/TouchData;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Lcom/meishu/sdk/core/utils/ResultBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/ResultBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/ResultBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->platform:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAppid(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_id()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 61
    .line 62
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 87
    .line 88
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGM()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 99
    .line 100
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGMBidding()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 111
    .line 112
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGmShowEcpm()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 129
    .line 130
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "bidding"

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_1

    .line 145
    .line 146
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 147
    .line 148
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 165
    .line 166
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 182
    .line 183
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReward_name()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReward_name(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 195
    .line 196
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReward_num()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReward_num(I)V

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 208
    .line 209
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS_ext()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 221
    .line 222
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS_code()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_2
    return-object v0
.end method

.method public getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->interactionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchData()Lcom/meishu/sdk/core/ad/TouchData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->touchData:Lcom/meishu/sdk/core/ad/TouchData;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAdValid()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getExpire_timestamp()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, -0x1

    .line 41
    sparse-switch v3, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :sswitch_0
    const-string v3, "BAIDU"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v5, 0x5

    .line 55
    goto :goto_0

    .line 56
    :sswitch_1
    const-string v3, "SGM"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v5, 0x4

    .line 66
    goto :goto_0

    .line 67
    :sswitch_2
    const-string v3, "CSJ"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v5, 0x3

    .line 77
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v3, "KS"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v5, 0x2

    .line 88
    goto :goto_0

    .line 89
    :sswitch_4
    const-string v3, "JD"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move v5, v1

    .line 99
    goto :goto_0

    .line 100
    :sswitch_5
    const-string v3, "HW"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move v5, v4

    .line 110
    :goto_0
    const-wide/32 v2, 0x1a8ce0

    .line 111
    .line 112
    .line 113
    packed-switch v5, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_0
    const-wide/32 v2, 0x360420

    .line 118
    .line 119
    .line 120
    :goto_1
    :pswitch_1
    if-gtz v0, :cond_6

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    mul-int/lit16 v0, v0, 0x3e8

    .line 124
    .line 125
    int-to-long v2, v0

    .line 126
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 131
    .line 132
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    sub-long/2addr v5, v7

    .line 141
    cmp-long v0, v5, v2

    .line 142
    .line 143
    if-ltz v0, :cond_7

    .line 144
    .line 145
    return v4

    .line 146
    :cond_7
    return v1

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x90f -> :sswitch_5
        0x93a -> :sswitch_4
        0x968 -> :sswitch_3
        0x105da -> :sswitch_2
        0x14079 -> :sswitch_1
        0x3c0b5fb -> :sswitch_0
    .end sparse-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendWinNotification(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setCacheAdListener(Lcom/meishu/sdk/core/loader/cache/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/loader/d;->setCacheAdListener(Lcom/meishu/sdk/core/loader/cache/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/a;->interactionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    return-void
.end method
