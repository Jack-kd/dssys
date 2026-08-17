.class public Lcom/beizi/fusion/s4;
.super Lcom/beizi/fusion/e2;
.source "SourceFile"


# instance fields
.field private U:Landroid/content/Context;

.field private V:Lcom/beizi/fusion/hj;

.field private W:Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;

.field private X:Ljava/util/List;

.field private Y:Landroid/view/ViewGroup;

.field private Z:J

.field private a0:Z

.field private b0:J

.field private c0:Z

.field private d0:Z

.field private e0:Z

.field private f0:Lcom/beizi/fusion/wn;

.field private g0:Ljava/lang/String;

.field private h0:Z

.field private i0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/n3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/e2;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/s4;->g0:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/beizi/fusion/s4;->h0:Z

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/beizi/fusion/s4;->i0:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 14
    .line 15
    iput-wide p2, p0, Lcom/beizi/fusion/s4;->Z:J

    .line 16
    .line 17
    iput-object p4, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/beizi/fusion/e2;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->C()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic A(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic B(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/wn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic D(Lcom/beizi/fusion/s4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/s4;->a0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic E(Lcom/beizi/fusion/s4;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/s4;->b0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic F(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic G(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic H(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized N0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/s4;->d0:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/s4;->e0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/beizi/fusion/s4;->e0:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->Z()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->J0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0
.end method

.method private O0()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->p()Lcom/beizi/fusion/zk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/zk;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/zk;->c()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 25
    .line 26
    if-eqz v1, :cond_a

    .line 27
    .line 28
    iget-object v2, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_2
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_a

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_a

    .line 45
    .line 46
    iget-object v2, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    new-instance v2, Lcom/beizi/fusion/wn;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/beizi/fusion/wn;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/beizi/fusion/k3;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/s4;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const/4 v3, 0x0

    .line 101
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    invoke-virtual {v4, v2}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-object v2, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 112
    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    iget-object v4, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/beizi/fusion/k3;->s()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v4, v2}, Lcom/beizi/fusion/wn;->a(Ljava/lang/Boolean;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object v2, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 129
    .line 130
    iget-object v4, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 131
    .line 132
    iget-object v5, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    int-to-float v5, v5

    .line 139
    invoke-static {v4, v5}, Lcom/beizi/fusion/vo;->b(Landroid/content/Context;F)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    iget-object v5, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 144
    .line 145
    iget-object v6, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    .line 146
    .line 147
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    int-to-float v6, v6

    .line 152
    invoke-static {v5, v6}, Lcom/beizi/fusion/vo;->b(Landroid/content/Context;F)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v2, v4, v5, v6}, Lcom/beizi/fusion/wn;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .line 172
    if-eqz v5, :cond_9

    .line 173
    .line 174
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 175
    .line 176
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 177
    .line 178
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 179
    .line 180
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 181
    .line 182
    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 186
    .line 187
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 188
    .line 189
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 190
    .line 191
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 192
    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    const/4 v0, 0x4

    .line 196
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    const/4 v0, 0x0

    .line 201
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    :goto_2
    iget-object v0, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    .line 205
    .line 206
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-direct {p0, v1}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, v3, v1}, Lcom/beizi/fusion/s4;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 216
    .line 217
    new-instance v4, Lcom/beizi/fusion/s4$c;

    .line 218
    .line 219
    invoke-direct {v4, p0, v1}, Lcom/beizi/fusion/s4$c;-><init>(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v4}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/wn$c;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, v3, v1, v2}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    .line 228
    :cond_a
    :goto_3
    return-void

    .line 229
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method private P0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->C()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/e2;->g:Lcom/beizi/fusion/u5;

    .line 17
    .line 18
    sget-object v1, Lcom/beizi/fusion/u5;->a:Lcom/beizi/fusion/u5;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/beizi/fusion/s4$b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/beizi/fusion/s4$b;-><init>(Lcom/beizi/fusion/s4;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/beizi/fusion/n3;->a(Ljava/lang/String;Lcom/beizi/fusion/UnifiedSplashAdResponse;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    sget-object v1, Lcom/beizi/fusion/u5;->b:Lcom/beizi/fusion/u5;

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method private Q0()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/wn;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;J)J
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/beizi/fusion/s4;->b0:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;)Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/s4;->W:Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;)Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/s4;->W:Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;

    return-object p1
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/e2;->j:Lcom/beizi/fusion/c2;

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 49
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

    .line 50
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private declared-synchronized a(ILcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 43
    :try_start_0
    iput-boolean v0, p0, Lcom/beizi/fusion/s4;->d0:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/beizi/fusion/s4;->c0:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/beizi/fusion/s4;->N0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    .line 46
    :cond_2
    :try_start_1
    iput-boolean v0, p0, Lcom/beizi/fusion/s4;->c0:Z

    .line 47
    invoke-direct {p0}, Lcom/beizi/fusion/s4;->Q0()V

    .line 48
    iget-object p1, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/hj;->a(Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_2

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getSensorParam()I

    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCompliantAngle()I

    move-result v2

    .line 78
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getIsUnidirection()I

    move-result v4

    .line 79
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->isReturnAngle()Z

    move-result v3

    .line 80
    iget-object p1, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/beizi/fusion/k3;->r()Ljava/util/Map;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    if-nez v0, :cond_2

    :goto_2
    return-void

    .line 83
    :cond_2
    invoke-virtual/range {v0 .. v5}, Lcom/beizi/fusion/wn;->a(IIZILjava/util/Map;)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Landroid/view/View;)V
    .locals 7

    .line 61
    iget v0, p0, Lcom/beizi/fusion/s4;->i0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getFeedback()I

    move-result p2

    iput p2, p0, Lcom/beizi/fusion/s4;->i0:I

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/s4;->i0:I

    .line 64
    :cond_0
    iget p1, p0, Lcom/beizi/fusion/s4;->i0:I

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    if-nez p1, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 66
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2

    .line 67
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    new-instance p2, Lcom/beizi/fusion/update/ShakeArcView;

    iget-object p3, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/beizi/fusion/update/ShakeArcView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x5

    .line 69
    invoke-virtual {p2, p3}, Lcom/beizi/fusion/update/ShakeArcView;->setLineRadius(I)V

    .line 70
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-double v0, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0xc

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 73
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-double v1, p3

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-double v3, p1

    const-wide v5, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 74
    iget-object p1, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p1, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    iget p3, p0, Lcom/beizi/fusion/s4;->i0:I

    invoke-virtual {p1, p2, p3}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/update/ShakeArcView;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;D)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/e2;->a(D)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;ILcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/s4;->a(ILcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/e2;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p2

    if-lez p2, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result p2

    if-gtz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result p1

    if-lez p1, :cond_3

    :cond_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    .line 57
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p2

    if-lez p2, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result p2

    if-gtz p2, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result p1

    if-lez p1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic a(Lcom/beizi/fusion/s4;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/beizi/fusion/s4;->h0:Z

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/e2;->j:Lcom/beizi/fusion/c2;

    return-object p1
.end method

.method private b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 5

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/wn;->g(I)V

    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/e2;->E:Lcom/beizi/fusion/g5;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/beizi/fusion/g5;->b()D

    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {v3, v1, v2}, Lcom/beizi/fusion/wn;->a(D)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 14
    iget-object p2, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {p2, p1}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V

    .line 15
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p1

    .line 16
    invoke-static {p1}, Lcom/beizi/fusion/rl;->b(I)I

    move-result p1

    .line 17
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/s4$d;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/s4$d;-><init>(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 18
    :cond_2
    iput-boolean v2, p0, Lcom/beizi/fusion/s4;->h0:Z

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    return-void

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/s4;->b(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/s4;->i0:I

    .line 22
    iget-object p1, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {p1, v1}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 23
    :cond_4
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/s4;->c(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/s4;->i0:I

    .line 25
    iget-object p1, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {p1, v1}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 26
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 28
    iget-object p2, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {p2, p1}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V

    .line 29
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p1

    .line 30
    invoke-static {p1}, Lcom/beizi/fusion/rl;->b(I)I

    move-result p1

    .line 31
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/s4$e;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/s4$e;-><init>(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    .line 32
    :cond_7
    iput-boolean v2, p0, Lcom/beizi/fusion/s4;->h0:Z

    .line 33
    iget-object p1, p0, Lcom/beizi/fusion/s4;->f0:Lcom/beizi/fusion/wn;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/wn;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->g0()V

    return-void
.end method

.method public static synthetic b(Lcom/beizi/fusion/s4;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/e2;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(J)Z
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/s4;->g0:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/beizi/fusion/go;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long p1, v2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/s4;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/s4;->a0:Z

    return p1
.end method

.method private c(J)Z
    .locals 5

    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    cmp-long p1, v3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static synthetic c(Lcom/beizi/fusion/s4;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->W()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/s4;->P0()V

    return-void
.end method

.method public static synthetic e(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method public static synthetic h(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    return-void
.end method

.method public static synthetic i(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->M0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->j0()V

    return-void
.end method

.method public static synthetic n(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->z0()V

    return-void
.end method

.method public static synthetic o(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/s4;->O0()V

    return-void
.end method

.method public static synthetic q(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/s4;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    return-object p0
.end method

.method public static synthetic t(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/hj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic v(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/beizi/fusion/s4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/beizi/fusion/s4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/s4;->c0:Z

    return p0
.end method

.method public static synthetic y(Lcom/beizi/fusion/s4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/s4;->h0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z(Lcom/beizi/fusion/s4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/s4;->g0:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->L0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getScreenConfigVo()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/beizi/fusion/s4;->X:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/beizi/fusion/hj;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/beizi/fusion/e2;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/beizi/fusion/hj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 25
    .line 26
    new-instance v1, Lcom/beizi/fusion/s4$a;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/beizi/fusion/s4$a;-><init>(Lcom/beizi/fusion/s4;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/hj;->a(Lcom/beizi/fusion/jo;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/beizi/fusion/s4;->Z:J

    .line 37
    .line 38
    long-to-int v1, v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/k3;->a(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/k3;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventBean;->clone()Lcom/beizi/fusion/events/EventBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/k3;->a(Lcom/beizi/fusion/events/EventBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->l()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "S2S"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->l()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/k3;->c(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 87
    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->q()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_0

    .line 99
    .line 100
    iget-object v1, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/k3;->b(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    iget-object v1, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->y()Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/k3;->c(Ljava/util/Map;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/beizi/fusion/n3;->v()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/k3;->d(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->w()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public B0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAppId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/beizi/fusion/e2;->h:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/e2;->i:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/beizi/fusion/e2;->c:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "splash_cool_"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/beizi/fusion/e2;->i:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/beizi/fusion/s4;->g0:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "AdWorker chanel = "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/beizi/fusion/e2;->c:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "BeiZis"

    .line 72
    .line 73
    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/e2;->a:Lcom/beizi/fusion/lk;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/beizi/fusion/lk;->a()Lcom/beizi/fusion/s1;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/beizi/fusion/e2;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/s1;->b(Ljava/lang/String;)Lcom/beizi/fusion/events/EventBean;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->D()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->v0()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/beizi/fusion/s4;->U:Landroid/content/Context;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/beizi/fusion/e2;->h:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/beizi/fusion/yq;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->w0()V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/e2;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/beizi/fusion/n3;->I()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    iget-object v2, p0, Lcom/beizi/fusion/e2;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getHotRequestDelay()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    const-wide/16 v2, 0x0

    .line 138
    .line 139
    cmp-long v2, v0, v2

    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    if-lez v2, :cond_3

    .line 143
    .line 144
    iget-object v2, p0, Lcom/beizi/fusion/e2;->L:Landroid/os/Handler;

    .line 145
    .line 146
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->n()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-ge v0, v3, :cond_4

    .line 159
    .line 160
    iget-object v0, p0, Lcom/beizi/fusion/e2;->d:Lcom/beizi/fusion/n3;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/4 v1, 0x2

    .line 167
    if-eq v0, v1, :cond_4

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/beizi/fusion/s4;->A0()V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_0
    return-void
.end method

.method public H0()V
    .locals 0

    return-void
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->v()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setError(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setErrorCode(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->f0()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/hj;->a(Landroid/view/View;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/beizi/fusion/UnifiedSplashActionData;)V
    .locals 9

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;

    invoke-direct {v0}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/beizi/fusion/UnifiedSplashActionData;->getType()I

    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setClickType(I)V

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/fusion/UnifiedSplashActionData;->getDownX()I

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/beizi/fusion/UnifiedSplashActionData;->getDownY()I

    move-result v2

    .line 26
    invoke-virtual {p1}, Lcom/beizi/fusion/UnifiedSplashActionData;->getUpX()I

    move-result v3

    .line 27
    invoke-virtual {p1}, Lcom/beizi/fusion/UnifiedSplashActionData;->getUpY()I

    move-result p1

    const/4 v4, 0x2

    .line 28
    new-array v4, v4, [I

    .line 29
    iget-object v5, p0, Lcom/beizi/fusion/s4;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    .line 30
    aget v6, v4, v5

    add-int v7, v1, v6

    const/4 v8, 0x1

    .line 31
    aget v4, v4, v8

    add-int v8, v2, v4

    add-int/2addr v6, v3

    add-int/2addr v4, p1

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setDownX(Ljava/lang/String;)V

    .line 33
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setDownY(Ljava/lang/String;)V

    .line 34
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setDownRawX(Ljava/lang/String;)V

    .line 35
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setDownRawY(Ljava/lang/String;)V

    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setUpX(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setUpY(Ljava/lang/String;)V

    .line 38
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setUpRawX(Ljava/lang/String;)V

    .line 39
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->setUpRawY(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v5, v0}, Lcom/beizi/fusion/s4;->a(ILcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/hj;->a(Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    .line 42
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 4

    const-string v0, "lossReason"

    const-string v1, "adnId"

    const-string v2, "winPrice"

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/fusion/k3;->a(Ljava/util/Map;)V

    .line 4
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    .line 23
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->s0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/fusion/k3;->b(Ljava/util/Map;)V

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    iget-object v3, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 22
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 24
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/e2;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->I0()V

    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->t0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/beizi/fusion/e2;->g()V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/s4;->Q0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public h()Lcom/beizi/fusion/c2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/e2;->j:Lcom/beizi/fusion/c2;

    return-object v0
.end method

.method public m()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/e2;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Lorg/json/JSONObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->l()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/s4;->W:Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "BEIZI"

    return-object v0
.end method

.method public z()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/s4;->V:Lcom/beizi/fusion/hj;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/e2;->G0()V

    :cond_0
    return-void
.end method
