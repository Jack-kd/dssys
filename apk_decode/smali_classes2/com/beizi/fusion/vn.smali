.class public Lcom/beizi/fusion/vn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/vn$f;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:I

.field private F:F

.field private G:Landroid/animation/AnimatorSet;

.field private H:Ljava/lang/String;

.field private I:Z

.field private final J:Landroid/hardware/SensorEventListener;

.field private K:I

.field private L:Landroid/hardware/Sensor;

.field private M:F

.field private N:F

.field private O:[F

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:Z

.field private W:Z

.field private X:J

.field private Y:Z

.field private Z:D

.field private a:Landroid/content/Context;

.field private a0:D

.field private b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private b0:D

.field private c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private c0:I

.field private d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

.field private e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

.field private f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

.field private g:D

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/hardware/SensorManager;

.field private m:Landroid/hardware/Sensor;

.field private n:Lcom/beizi/fusion/vn$f;

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:D

.field private t:D

.field private u:D

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x402399999999999aL    # 9.8

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/beizi/fusion/vn;->g:D

    .line 10
    .line 11
    const/16 v0, -0x64

    .line 12
    .line 13
    iput v0, p0, Lcom/beizi/fusion/vn;->h:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/beizi/fusion/vn;->i:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput v2, p0, Lcom/beizi/fusion/vn;->j:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    iput v3, p0, Lcom/beizi/fusion/vn;->k:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    iput-object v3, p0, Lcom/beizi/fusion/vn;->n:Lcom/beizi/fusion/vn$f;

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    iput v0, p0, Lcom/beizi/fusion/vn;->o:F

    .line 29
    .line 30
    iput v0, p0, Lcom/beizi/fusion/vn;->p:F

    .line 31
    .line 32
    iput v0, p0, Lcom/beizi/fusion/vn;->q:F

    .line 33
    .line 34
    iput v1, p0, Lcom/beizi/fusion/vn;->r:I

    .line 35
    .line 36
    iput v1, p0, Lcom/beizi/fusion/vn;->x:I

    .line 37
    .line 38
    iput v1, p0, Lcom/beizi/fusion/vn;->y:I

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/beizi/fusion/vn;->z:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->B:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->C:Z

    .line 45
    .line 46
    iput-object v3, p0, Lcom/beizi/fusion/vn;->D:Ljava/lang/String;

    .line 47
    .line 48
    const/16 v0, 0x50

    .line 49
    .line 50
    iput v0, p0, Lcom/beizi/fusion/vn;->E:I

    .line 51
    .line 52
    const/high16 v0, 0x41f00000    # 30.0f

    .line 53
    .line 54
    iput v0, p0, Lcom/beizi/fusion/vn;->F:F

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->I:Z

    .line 57
    .line 58
    new-instance v0, Lcom/beizi/fusion/vn$e;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/beizi/fusion/vn$e;-><init>(Lcom/beizi/fusion/vn;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/beizi/fusion/vn;->J:Landroid/hardware/SensorEventListener;

    .line 64
    .line 65
    const v0, 0x3089705f    # 1.0E-9f

    .line 66
    .line 67
    .line 68
    iput v0, p0, Lcom/beizi/fusion/vn;->N:F

    .line 69
    .line 70
    const/4 v0, 0x3

    .line 71
    new-array v0, v0, [F

    .line 72
    .line 73
    iput-object v0, p0, Lcom/beizi/fusion/vn;->O:[F

    .line 74
    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 78
    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_0

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v0, "beizi_cool_"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/beizi/fusion/vn;->D:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception p1

    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1, p4}, Lcom/beizi/fusion/vn;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    if-eqz p3, :cond_1

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 129
    .line 130
    :cond_1
    iget-object p1, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 131
    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput p1, p0, Lcom/beizi/fusion/vn;->K:I

    .line 145
    .line 146
    iget-object p1, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getIsUnidirection()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput p1, p0, Lcom/beizi/fusion/vn;->c0:I

    .line 153
    .line 154
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 155
    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 163
    .line 164
    iget-object p1, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 171
    .line 172
    iget-object p1, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getImageURL()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-lez p2, :cond_3

    .line 185
    .line 186
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Ljava/lang/String;

    .line 191
    .line 192
    iput-object p1, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    .line 193
    .line 194
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iput p1, p0, Lcom/beizi/fusion/vn;->K:I

    .line 201
    .line 202
    iget-object p1, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getIsUnidirection()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    iput p1, p0, Lcom/beizi/fusion/vn;->c0:I

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 212
    .line 213
    if-eqz p1, :cond_5

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p1, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 220
    .line 221
    iget-object p1, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iput-object p1, p0, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 228
    .line 229
    iget-object p1, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getImageURL()Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-eqz p1, :cond_5

    .line 236
    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-lez p2, :cond_5

    .line 242
    .line 243
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Ljava/lang/String;

    .line 248
    .line 249
    iput-object p1, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    .line 250
    .line 251
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->f()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_6

    .line 256
    .line 257
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->I:Z

    .line 258
    .line 259
    return-void

    .line 260
    :cond_6
    iput-boolean v2, p0, Lcom/beizi/fusion/vn;->I:Z

    .line 261
    .line 262
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->r()V

    .line 263
    .line 264
    .line 265
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->o()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/beizi/fusion/vn;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method private a(FFF)D
    .locals 6

    float-to-double v0, p1

    .line 64
    :try_start_0
    iget-wide v2, p0, Lcom/beizi/fusion/vn;->g:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 65
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    iget-wide v4, p0, Lcom/beizi/fusion/vn;->g:D

    div-double/2addr p1, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    iget-wide v4, p0, Lcom/beizi/fusion/vn;->g:D

    div-double/2addr p1, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 5
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 11

    .line 109
    iget v0, p0, Lcom/beizi/fusion/vn;->c0:I

    const/4 v1, 0x1

    const-string v2, "ShakeUtil"

    const-string v3, ",zMax: "

    const-string v4, ",zMin: "

    const-string v5, ",yMax: "

    const-string v6, ",yMin: "

    const-string v7, ",xMax: "

    const-string v8, "rotate  xMin: "

    const-string v9, "%.4f"

    if-nez v0, :cond_3

    .line 110
    iget v0, p0, Lcom/beizi/fusion/vn;->P:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget v0, p0, Lcom/beizi/fusion/vn;->S:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 111
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    iget v0, p0, Lcom/beizi/fusion/vn;->T:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/beizi/fusion/vn;->R:F

    .line 112
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-lez v0, :cond_4

    iget v0, p0, Lcom/beizi/fusion/vn;->U:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-lez v0, :cond_4

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/beizi/fusion/vn;->P:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/beizi/fusion/vn;->S:F

    .line 114
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 115
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/beizi/fusion/vn;->T:F

    .line 116
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/beizi/fusion/vn;->R:F

    .line 117
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/beizi/fusion/vn;->U:F

    .line 118
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v2, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->V:Z

    return-void

    .line 121
    :cond_3
    iget v0, p0, Lcom/beizi/fusion/vn;->P:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/beizi/fusion/vn;->S:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 122
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/beizi/fusion/vn;->T:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/beizi/fusion/vn;->R:F

    .line 123
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/beizi/fusion/vn;->U:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v10, p0, Lcom/beizi/fusion/vn;->K:I

    int-to-float v10, v10

    cmpl-float v0, v0, v10

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return-void

    .line 124
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/beizi/fusion/vn;->P:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/beizi/fusion/vn;->S:F

    .line 125
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 126
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/beizi/fusion/vn;->T:F

    .line 127
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/beizi/fusion/vn;->R:F

    .line 128
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/beizi/fusion/vn;->U:F

    .line 129
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->V:Z

    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 13

    if-eqz p1, :cond_b

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->Y:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/beizi/fusion/vn;->X:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto/16 :goto_4

    .line 73
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 74
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 75
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eqz v1, :cond_b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    goto/16 :goto_4

    .line 76
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/beizi/fusion/vn;->X:J

    .line 77
    iget v0, p0, Lcom/beizi/fusion/vn;->M:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 78
    aget v4, v1, v3

    const/4 v5, 0x1

    .line 79
    aget v6, v1, v5

    const/4 v7, 0x2

    .line 80
    aget v1, v1, v7

    .line 81
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v8, v8

    sub-float/2addr v8, v0

    iget v0, p0, Lcom/beizi/fusion/vn;->N:F

    mul-float/2addr v8, v0

    .line 82
    iget-object v0, p0, Lcom/beizi/fusion/vn;->O:[F

    aget v9, v0, v3

    float-to-double v9, v9

    mul-float/2addr v4, v8

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v4, v9

    aput v4, v0, v3

    .line 83
    iget-object v0, p0, Lcom/beizi/fusion/vn;->O:[F

    aget v4, v0, v5

    float-to-double v9, v4

    mul-float/2addr v6, v8

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v4, v9

    aput v4, v0, v5

    .line 84
    iget-object v0, p0, Lcom/beizi/fusion/vn;->O:[F

    aget v4, v0, v7

    float-to-double v9, v4

    mul-float/2addr v1, v8

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v1, v9

    aput v1, v0, v7

    .line 85
    iget-object v0, p0, Lcom/beizi/fusion/vn;->O:[F

    aget v1, v0, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    .line 86
    iget v3, p0, Lcom/beizi/fusion/vn;->S:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    .line 87
    iput v1, p0, Lcom/beizi/fusion/vn;->S:F

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 88
    :cond_3
    iget v3, p0, Lcom/beizi/fusion/vn;->P:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    .line 89
    iput v1, p0, Lcom/beizi/fusion/vn;->P:F

    .line 90
    :cond_4
    :goto_0
    aget v3, v0, v5

    cmpl-float v4, v3, v2

    if-lez v4, :cond_5

    .line 91
    iget v4, p0, Lcom/beizi/fusion/vn;->T:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    .line 92
    iput v3, p0, Lcom/beizi/fusion/vn;->T:F

    goto :goto_1

    .line 93
    :cond_5
    iget v4, p0, Lcom/beizi/fusion/vn;->Q:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_6

    .line 94
    iput v3, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 95
    :cond_6
    :goto_1
    aget v0, v0, v7

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 96
    iget v2, p0, Lcom/beizi/fusion/vn;->U:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    .line 97
    iput v0, p0, Lcom/beizi/fusion/vn;->U:F

    goto :goto_2

    .line 98
    :cond_7
    iget v2, p0, Lcom/beizi/fusion/vn;->R:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 99
    iput v0, p0, Lcom/beizi/fusion/vn;->R:F

    .line 100
    :cond_8
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/beizi/fusion/vn;->O:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/beizi/fusion/vn;->O:[F

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 101
    iget-wide v1, p0, Lcom/beizi/fusion/vn;->b0:D

    float-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_9

    .line 102
    iput-wide v3, p0, Lcom/beizi/fusion/vn;->b0:D

    .line 103
    :cond_9
    iget v0, p0, Lcom/beizi/fusion/vn;->K:I

    if-lez v0, :cond_a

    .line 104
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->a()V

    .line 105
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->W:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->V:Z

    if-eqz v0, :cond_a

    .line 106
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->b()V

    .line 107
    :cond_a
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/beizi/fusion/vn;->M:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 108
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_4
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V
    .locals 2

    const/4 v0, 0x2

    .line 58
    :try_start_0
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 p4, 0x1

    aput p5, v0, p4

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 59
    iget p3, p0, Lcom/beizi/fusion/vn;->E:I

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/vn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->u()V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/vn;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/vn;->b(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private b(FFF)D
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 94
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/vn;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/vn;->G:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->n:Lcom/beizi/fusion/vn$f;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->z:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->Y:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->Y:Z

    .line 33
    const-string v0, "ShakeUtil"

    const-string v1, "callBackResult"

    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/beizi/fusion/vn;->l()V

    .line 35
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->B:Z

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/vn;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/vn;->D:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/sm;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->n:Lcom/beizi/fusion/vn$f;

    invoke-interface {v0}, Lcom/beizi/fusion/vn$f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 39
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private b(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 5
    const-string v0, "_"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/beizi/fusion/vn;->A:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_6

    .line 6
    iget-boolean v1, p0, Lcom/beizi/fusion/vn;->z:Z

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_6

    .line 8
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto/16 :goto_1

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/beizi/fusion/vn;->A:J

    const/4 v1, 0x0

    .line 10
    aget v1, p1, v1

    const/4 v2, 0x1

    .line 11
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 12
    aget p1, p1, v4

    .line 13
    invoke-direct {p0, v1, v3, p1}, Lcom/beizi/fusion/vn;->a(FFF)D

    move-result-wide v4

    .line 14
    iget-wide v6, p0, Lcom/beizi/fusion/vn;->s:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_4

    .line 15
    invoke-direct {p0, v1, v3, p1}, Lcom/beizi/fusion/vn;->b(FFF)D

    move-result-wide v6

    .line 16
    iget-wide v8, p0, Lcom/beizi/fusion/vn;->a0:D

    cmpg-double p1, v8, v6

    if-gez p1, :cond_3

    .line 17
    iput-wide v6, p0, Lcom/beizi/fusion/vn;->a0:D

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 18
    :cond_3
    :goto_0
    iget p1, p0, Lcom/beizi/fusion/vn;->j:I

    iput p1, p0, Lcom/beizi/fusion/vn;->r:I

    .line 19
    :cond_4
    iget-wide v6, p0, Lcom/beizi/fusion/vn;->t:D

    cmpg-double p1, v4, v6

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/beizi/fusion/vn;->r:I

    iget v1, p0, Lcom/beizi/fusion/vn;->j:I

    if-ne p1, v1, :cond_5

    .line 20
    iget p1, p0, Lcom/beizi/fusion/vn;->k:I

    iput p1, p0, Lcom/beizi/fusion/vn;->r:I

    .line 21
    iget p1, p0, Lcom/beizi/fusion/vn;->x:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/beizi/fusion/vn;->x:I

    .line 22
    :cond_5
    iget p1, p0, Lcom/beizi/fusion/vn;->v:I

    if-lez p1, :cond_6

    iget v1, p0, Lcom/beizi/fusion/vn;->x:I

    if-lt v1, p1, :cond_6

    .line 23
    iput-boolean v2, p0, Lcom/beizi/fusion/vn;->W:Z

    .line 24
    const-string p1, "ShakeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.4f"

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beizi/fusion/vn;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beizi/fusion/vn;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beizi/fusion/vn;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/vn;->s:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/vn;->t:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/beizi/fusion/nh;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-boolean p1, p0, Lcom/beizi/fusion/vn;->W:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/beizi/fusion/vn;->V:Z

    if-eqz p1, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    .line 29
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic b(Lcom/beizi/fusion/vn;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/vn;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)[I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ShakeUtil"

    const-string v3, ";"

    const-string v4, "%"

    const/4 v5, 0x4

    .line 40
    new-array v5, v5, [I

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v10, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    if-nez v10, :cond_1

    :cond_0
    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    goto/16 :goto_6

    .line 42
    :cond_1
    invoke-virtual {v10}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v10

    .line 43
    iget-object v11, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v11

    .line 44
    iget-object v12, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v12

    .line 45
    iget-object v13, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v13

    .line 46
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "0"

    if-nez v14, :cond_2

    :try_start_1
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    :goto_0
    move-object v10, v15

    .line 47
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    move-object v11, v15

    .line 48
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 49
    :cond_6
    const-string v12, "120"

    .line 50
    :cond_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 51
    :cond_8
    const-string v13, "36"

    .line 52
    :cond_9
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 53
    iget-object v14, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/16 v16, 0x3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v14, v6}, Lcom/beizi/fusion/eq;->b(Landroid/content/Context;F)I

    move-result v6

    .line 54
    iget-object v14, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/16 v17, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14, v7}, Lcom/beizi/fusion/eq;->b(Landroid/content/Context;F)I

    move-result v7

    if-gtz v6, :cond_a

    .line 55
    iget-object v6, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/beizi/fusion/wo;->j(Landroid/content/Context;)I

    move-result v6

    .line 56
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x1

    const-string v8, "position containerWidth:"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";containerHeight:"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "20"

    if-nez v0, :cond_b

    :try_start_2
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move-object v12, v8

    .line 60
    :cond_c
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move-object v13, v8

    .line 61
    :cond_e
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x64

    goto :goto_1

    .line 63
    :cond_f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 64
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_10
    move v0, v9

    .line 65
    :goto_1
    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 66
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    goto :goto_2

    .line 67
    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 68
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_12
    move v7, v9

    .line 69
    :goto_2
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v14, 0x14

    if-eqz v8, :cond_13

    .line 70
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 71
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x64

    goto :goto_3

    .line 72
    :cond_13
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 73
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_14
    move v6, v14

    .line 74
    :goto_3
    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 75
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x64

    :goto_4
    move v14, v4

    goto :goto_5

    .line 76
    :cond_15
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 77
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 78
    :cond_16
    :goto_5
    iget-object v4, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v4

    .line 79
    iget-object v6, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v8, v14

    invoke-static {v6, v8}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v6

    .line 80
    iget-object v8, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v8, v0}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v0

    .line 81
    iget-object v8, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v8, v7}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v7

    .line 82
    aput v4, v5, v9

    .line 83
    aput v6, v5, v18

    if-lez v0, :cond_17

    .line 84
    aput v0, v5, v17

    :cond_17
    if-lez v7, :cond_18

    .line 85
    aput v7, v5, v16

    .line 86
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position widthInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";heightInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerX:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerY:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 87
    :goto_6
    iget-object v0, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v0, v2}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v0

    .line 88
    iget-object v2, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v2

    .line 89
    aput v0, v5, v9

    .line 90
    aput v2, v5, v18

    .line 91
    aput v9, v5, v17

    .line 92
    aput v9, v5, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    .line 93
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v5
.end method

.method private c(Landroid/view/ViewGroup;)[I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ShakeUtil"

    const-string v3, ";"

    const-string v4, "%"

    const/4 v5, 0x4

    .line 2
    new-array v5, v5, [I

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v10, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    if-nez v10, :cond_1

    :cond_0
    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {v10}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v10

    .line 5
    iget-object v11, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v11

    .line 6
    iget-object v12, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v12

    .line 7
    iget-object v13, v1, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "10"

    const/16 v16, 0x3

    const-string v6, "0"

    if-nez v14, :cond_2

    :try_start_1
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    :goto_0
    move-object v10, v15

    .line 9
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    move-object v11, v15

    .line 10
    :cond_5
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object v14, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Lcom/beizi/fusion/eq;->b(Landroid/content/Context;F)I

    move-result v14

    .line 12
    iget-object v15, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/16 v17, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v15, v7}, Lcom/beizi/fusion/eq;->b(Landroid/content/Context;F)I

    move-result v7

    if-gtz v14, :cond_6

    .line 13
    iget-object v14, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-static {v14}, Lcom/beizi/fusion/wo;->j(Landroid/content/Context;)I

    move-result v14

    .line 14
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x1

    const-string v8, "position containerWidth:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";containerHeight:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v2, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "20"

    if-nez v0, :cond_7

    :try_start_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move-object v12, v8

    .line 18
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move-object v13, v8

    .line 19
    :cond_a
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 20
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v14

    div-int/lit8 v0, v0, 0x64

    goto :goto_1

    .line 21
    :cond_b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 22
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_c
    move v0, v9

    .line 23
    :goto_1
    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 24
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x64

    goto :goto_2

    .line 25
    :cond_d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 26
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_e
    move v7, v9

    .line 27
    :goto_2
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x14

    if-eqz v6, :cond_f

    .line 28
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 29
    invoke-virtual {v12, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v14, v6

    div-int/lit8 v14, v14, 0x64

    goto :goto_3

    .line 30
    :cond_f
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 31
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    :cond_10
    move v14, v8

    .line 32
    :goto_3
    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 33
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v14

    div-int/lit8 v4, v4, 0x64

    :goto_4
    move v8, v4

    goto :goto_5

    .line 34
    :cond_11
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 35
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 36
    :cond_12
    :goto_5
    iget-object v4, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v6, v14

    invoke-static {v4, v6}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v4

    .line 37
    iget-object v6, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v8, v8

    invoke-static {v6, v8}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v6

    .line 38
    iget-object v8, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v8, v0}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v0

    .line 39
    iget-object v8, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v8, v7}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v7

    .line 40
    aput v4, v5, v9

    .line 41
    aput v6, v5, v18

    if-lez v0, :cond_13

    .line 42
    aput v0, v5, v17

    :cond_13
    if-lez v7, :cond_14

    .line 43
    aput v7, v5, v16

    .line 44
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position widthInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";heightInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerX:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerY:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 45
    :goto_6
    iget-object v0, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v0

    .line 46
    iget-object v2, v1, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    move-result v2

    .line 47
    aput v0, v5, v9

    .line 48
    aput v0, v5, v18

    .line 49
    aput v2, v5, v17

    .line 50
    aput v2, v5, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    .line 51
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v5
.end method

.method private f()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-wide v4, v1

    .line 47
    move-wide v6, v4

    .line 48
    move v0, v3

    .line 49
    :goto_0
    cmpl-double v4, v4, v1

    .line 50
    .line 51
    if-lez v4, :cond_2

    .line 52
    .line 53
    cmpl-double v1, v6, v1

    .line 54
    .line 55
    if-lez v1, :cond_2

    .line 56
    .line 57
    if-lez v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :cond_2
    return v3
.end method

.method private g()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gtz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    .line 24
    .line 25
    .line 26
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return v0
.end method

.method private h()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatCount()I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_2
    return v0
.end method

.method private i()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->D:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-object v3, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/beizi/fusion/vn;->D:Ljava/lang/String;

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v3, v4, v7}, Lcom/beizi/fusion/sm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    cmp-long v5, v3, v5

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sub-long/2addr v5, v3

    .line 51
    cmp-long v1, v5, v1

    .line 52
    .line 53
    if-gez v1, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    return v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return v0

    .line 60
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method private j()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/beizi/fusion/wo;->e(Landroid/content/Context;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    sub-long/2addr v5, v3

    .line 22
    cmp-long v1, v5, v1

    .line 23
    .line 24
    if-gez v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_1
    return v0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return v0
.end method

.method private n()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/beizi/fusion/vn;->L:Landroid/hardware/Sensor;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/beizi/fusion/vn;->J:Landroid/hardware/SensorEventListener;

    .line 18
    .line 19
    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->V:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "ShakeUtil"

    .line 2
    .line 3
    const-string v1, "registerShakeListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->C:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->p()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "sensor"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/hardware/SensorManager;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->m:Landroid/hardware/Sensor;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/beizi/fusion/vn;->m:Landroid/hardware/Sensor;

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/vn;->J:Landroid/hardware/SensorEventListener;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/vn;->m:Landroid/hardware/Sensor;

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/beizi/fusion/vn;->x:I

    .line 3
    .line 4
    iput v0, p0, Lcom/beizi/fusion/vn;->y:I

    .line 5
    .line 6
    iget v1, p0, Lcom/beizi/fusion/vn;->h:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    iput v1, p0, Lcom/beizi/fusion/vn;->o:F

    .line 10
    .line 11
    iput v1, p0, Lcom/beizi/fusion/vn;->p:F

    .line 12
    .line 13
    iput v1, p0, Lcom/beizi/fusion/vn;->q:F

    .line 14
    .line 15
    iget v1, p0, Lcom/beizi/fusion/vn;->i:I

    .line 16
    .line 17
    iput v1, p0, Lcom/beizi/fusion/vn;->r:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/beizi/fusion/vn;->P:F

    .line 21
    .line 22
    iput v1, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 23
    .line 24
    iput v1, p0, Lcom/beizi/fusion/vn;->R:F

    .line 25
    .line 26
    iput v1, p0, Lcom/beizi/fusion/vn;->S:F

    .line 27
    .line 28
    iput v1, p0, Lcom/beizi/fusion/vn;->T:F

    .line 29
    .line 30
    iput v1, p0, Lcom/beizi/fusion/vn;->U:F

    .line 31
    .line 32
    iput v1, p0, Lcom/beizi/fusion/vn;->M:F

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->W:Z

    .line 35
    .line 36
    iget v1, p0, Lcom/beizi/fusion/vn;->K:I

    .line 37
    .line 38
    if-lez v1, :cond_0

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->V:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-wide v1, p0, Lcom/beizi/fusion/vn;->Z:D

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    cmpl-double v1, v1, v3

    .line 48
    .line 49
    if-lez v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->V:Z

    .line 53
    .line 54
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->Y:Z

    .line 55
    .line 56
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->p()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->B:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->h()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->B:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iput-boolean v1, p0, Lcom/beizi/fusion/vn;->B:Z

    .line 34
    .line 35
    :goto_1
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->B:Z

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->t()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->g()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->s()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ShakeUtil"

    .line 7
    .line 8
    const-string v1, "setShakeSensitivityAliase"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->c(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeStartAmplitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->d(D)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeEndAmplitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->c(D)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatAmplitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->b(D)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->b(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-instance v1, Landroid/os/Handler;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/beizi/fusion/vn$a;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/beizi/fusion/vn$a;-><init>(Lcom/beizi/fusion/vn;)V

    .line 76
    .line 77
    .line 78
    int-to-long v3, v0

    .line 79
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ShakeUtil"

    .line 7
    .line 8
    const-string v1, "setShakeSensitivityCool"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->c(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeStartAmplitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->d(D)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeEndAmplitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->c(D)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatAmplitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->b(D)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "ShakeUtil"

    .line 2
    .line 3
    const-string v1, "setShakeSensitivityNormal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->p()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->c(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->d(D)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->c(D)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatAmplitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->b(D)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->b(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->c(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->d(D)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->c(D)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatAmplitude()D

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->b(D)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatCount()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void

    .line 109
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "ShakeUtil"

    .line 2
    .line 3
    const-string v1, "unRegisterShakeListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->C:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/vn;->J:Landroid/hardware/SensorEventListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void

    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/beizi/fusion/vn;->I:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    sget v3, Lcom/beizi/fusion/R$drawable;->beizi_icon_shake_native:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v3, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/beizi/fusion/rf;->a(Landroid/content/Context;)Lcom/beizi/fusion/rf;

    move-result-object v3

    iget-object v4, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    new-instance v5, Lcom/beizi/fusion/vn$c;

    invoke-direct {v5, p0, v1}, Lcom/beizi/fusion/vn$c;-><init>(Lcom/beizi/fusion/vn;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Lcom/beizi/fusion/rf;->b(Ljava/lang/String;Lcom/beizi/fusion/rf$f;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 13
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/beizi/fusion/vn;->b(Landroid/view/ViewGroup;)[I

    move-result-object v3

    .line 14
    instance-of v4, p1, Landroid/widget/RelativeLayout;

    const/16 v5, 0x53

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-eqz v4, :cond_4

    .line 15
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    aget v2, v3, v2

    if-lez v2, :cond_2

    .line 17
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 18
    :cond_2
    aget v2, v3, v8

    if-lez v2, :cond_3

    .line 19
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    :cond_3
    aget v2, v3, v7

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 21
    aget v2, v3, v6

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 24
    :cond_4
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_7

    .line 25
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 26
    aget v2, v3, v2

    if-lez v2, :cond_5

    .line 27
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 28
    :cond_5
    aget v2, v3, v8

    if-lez v2, :cond_6

    .line 29
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 30
    :cond_6
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 31
    :cond_7
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    .line 32
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-direct {v4, v10, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 33
    aget v2, v3, v2

    if-lez v2, :cond_8

    .line 34
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 35
    :cond_8
    aget v2, v3, v8

    if-lez v2, :cond_9

    .line 36
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 37
    :cond_9
    aget v2, v3, v7

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 38
    aget v2, v3, v6

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 39
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 40
    :cond_a
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    aget v2, v3, v2

    if-lez v2, :cond_b

    .line 42
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    :cond_b
    aget v2, v3, v8

    if-lez v2, :cond_c

    .line 44
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :cond_c
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 46
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_2
    return-object v0
.end method

.method public a(D)V
    .locals 1

    .line 67
    iget v0, p0, Lcom/beizi/fusion/vn;->K:I

    if-lez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iput-wide p1, p0, Lcom/beizi/fusion/vn;->Z:D

    .line 69
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->n()V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/beizi/fusion/vn;->V:Z

    return-void
.end method

.method public a(DD)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iput-wide p1, p0, Lcom/beizi/fusion/vn;->s:D

    .line 134
    iput-wide p3, p0, Lcom/beizi/fusion/vn;->t:D

    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lcom/beizi/fusion/vn;->x:I

    .line 136
    iput p1, p0, Lcom/beizi/fusion/vn;->y:I

    .line 137
    iget p1, p0, Lcom/beizi/fusion/vn;->h:I

    int-to-float p1, p1

    iput p1, p0, Lcom/beizi/fusion/vn;->o:F

    .line 138
    iput p1, p0, Lcom/beizi/fusion/vn;->p:F

    .line 139
    iput p1, p0, Lcom/beizi/fusion/vn;->q:F

    .line 140
    iget p1, p0, Lcom/beizi/fusion/vn;->i:I

    iput p1, p0, Lcom/beizi/fusion/vn;->r:I

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/beizi/fusion/vn;->P:F

    .line 142
    iput p1, p0, Lcom/beizi/fusion/vn;->Q:F

    .line 143
    iput p1, p0, Lcom/beizi/fusion/vn;->R:F

    .line 144
    iput p1, p0, Lcom/beizi/fusion/vn;->S:F

    .line 145
    iput p1, p0, Lcom/beizi/fusion/vn;->T:F

    .line 146
    iput p1, p0, Lcom/beizi/fusion/vn;->U:F

    .line 147
    iput p1, p0, Lcom/beizi/fusion/vn;->M:F

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 7

    .line 47
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const-string v4, "rotation"

    iget v6, p0, Lcom/beizi/fusion/vn;->F:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/vn;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 49
    const-string v4, "rotation"

    iget v5, v1, Lcom/beizi/fusion/vn;->F:F

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/vn;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 50
    const-string v4, "rotation"

    iget p1, v1, Lcom/beizi/fusion/vn;->F:F

    neg-float v6, p1

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/vn;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 51
    const-string v4, "rotation"

    iget p1, v1, Lcom/beizi/fusion/vn;->F:F

    neg-float v5, p1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/vn;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 53
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, v1, Lcom/beizi/fusion/vn;->G:Landroid/animation/AnimatorSet;

    .line 54
    new-instance v0, Lcom/beizi/fusion/vn$d;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/vn$d;-><init>(Lcom/beizi/fusion/vn;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    iget-object p1, v1, Lcom/beizi/fusion/vn;->G:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 56
    iget-object p1, v1, Lcom/beizi/fusion/vn;->G:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    return-void

    :catch_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    return-void
.end method

.method public a(Lcom/beizi/fusion/vn$f;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/beizi/fusion/vn;->n:Lcom/beizi/fusion/vn$f;

    return-void
.end method

.method public b(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/beizi/fusion/vn;->u:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/fusion/vn;->w:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    return-object v0
.end method

.method public c(D)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/beizi/fusion/vn;->t:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/beizi/fusion/vn;->v:I

    return-void
.end method

.method public d()D
    .locals 4

    .line 45
    :try_start_0
    iget-wide v0, p0, Lcom/beizi/fusion/vn;->a0:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 46
    iget-wide v2, p0, Lcom/beizi/fusion/vn;->g:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/beizi/fusion/vn;->a0:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/beizi/fusion/vn;->a0:D

    return-wide v0
.end method

.method public d(D)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/beizi/fusion/vn;->s:D

    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 10

    if-eqz p1, :cond_d

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->I:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    sget v2, Lcom/beizi/fusion/R$mipmap;->beizi_interaction_icon_shake:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/fusion/rf;->a(Landroid/content/Context;)Lcom/beizi/fusion/rf;

    move-result-object v2

    iget-object v3, p0, Lcom/beizi/fusion/vn;->H:Ljava/lang/String;

    new-instance v4, Lcom/beizi/fusion/vn$b;

    invoke-direct {v4, p0, v0}, Lcom/beizi/fusion/vn$b;-><init>(Lcom/beizi/fusion/vn;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v4}, Lcom/beizi/fusion/rf;->b(Ljava/lang/String;Lcom/beizi/fusion/rf$f;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/beizi/fusion/vn;->c(Landroid/view/ViewGroup;)[I

    move-result-object v2

    .line 8
    instance-of v3, p1, Landroid/widget/RelativeLayout;

    const/16 v4, 0x11

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-eqz v3, :cond_4

    .line 9
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    aget v1, v2, v1

    if-lez v1, :cond_2

    .line 11
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 12
    :cond_2
    aget v1, v2, v7

    if-lez v1, :cond_3

    .line 13
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    :cond_3
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 15
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 18
    :cond_4
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    .line 19
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 20
    aget v1, v2, v1

    if-lez v1, :cond_5

    .line 21
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 22
    :cond_5
    aget v1, v2, v7

    if-lez v1, :cond_6

    .line 23
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 24
    :cond_6
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 25
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 26
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 27
    :cond_7
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_a

    .line 28
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {v3, v9, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 29
    aget v1, v2, v1

    if-lez v1, :cond_8

    .line 30
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 31
    :cond_8
    aget v1, v2, v7

    if-lez v1, :cond_9

    .line 32
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 33
    :cond_9
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 34
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 35
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 36
    :cond_a
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    aget v1, v2, v1

    if-lez v1, :cond_b

    .line 38
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    :cond_b
    aget v1, v2, v7

    if-lez v1, :cond_c

    .line 40
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    :cond_c
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :goto_1
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/vn;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 43
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_3
    return-void
.end method

.method public e()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/vn;->b0:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->v()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/vn;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/vn;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/vn;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/beizi/fusion/vn;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/fusion/vn;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/beizi/fusion/vn;->a:Landroid/content/Context;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/beizi/fusion/vn;->l:Landroid/hardware/SensorManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/beizi/fusion/vn;->m:Landroid/hardware/Sensor;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/vn;->n:Lcom/beizi/fusion/vn$f;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/vn;->G:Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/beizi/fusion/vn;->G:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->z:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->v()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->C:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/beizi/fusion/vn;->I:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->z:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->r()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->o()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/beizi/fusion/vn;->q()V

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lcom/beizi/fusion/vn;->Z:D

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/vn;->a(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    return-void

    .line 31
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/vn;->K:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/beizi/fusion/vn;->n()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/beizi/fusion/vn;->V:Z

    .line 11
    .line 12
    return-void
.end method
