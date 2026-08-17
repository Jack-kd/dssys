.class Lcom/baidu/mobads/sdk/api/SplashAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/ct$a;


# instance fields
.field final synthetic this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

.field final synthetic val$prodContainer:Lcom/baidu/mobads/sdk/internal/ct;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/SplashAd;Lcom/baidu/mobads/sdk/internal/ct;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->val$prodContainer:Lcom/baidu/mobads/sdk/internal/ct;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dk;->a(Landroid/view/MotionEvent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bj;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bj;->o()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLayoutComplete(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$300(Lcom/baidu/mobads/sdk/api/SplashAd;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/bb;->e(Landroid/content/Context;)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters;->isCustomSize()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    int-to-float p1, p1

    .line 64
    mul-float/2addr p1, v0

    .line 65
    float-to-int p1, p1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_2

    .line 77
    .line 78
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 79
    .line 80
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/api/RequestParameters;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    int-to-float p2, p2

    .line 89
    mul-float/2addr p2, v0

    .line 90
    float-to-int p2, p2

    .line 91
    :cond_2
    move v4, p1

    .line 92
    move v5, p2

    .line 93
    int-to-float p1, v4

    .line 94
    const/high16 p2, 0x43480000    # 200.0f

    .line 95
    .line 96
    mul-float/2addr p2, v0

    .line 97
    cmpg-float p1, p1, p2

    .line 98
    .line 99
    if-ltz p1, :cond_5

    .line 100
    .line 101
    int-to-float p1, v5

    .line 102
    const/high16 p2, 0x43160000    # 150.0f

    .line 103
    .line 104
    mul-float/2addr v0, p2

    .line 105
    cmpg-float p1, p1, v0

    .line 106
    .line 107
    if-gez p1, :cond_3

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_3
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 112
    .line 113
    new-instance v1, Lcom/baidu/mobads/sdk/internal/dk;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 116
    .line 117
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$300(Lcom/baidu/mobads/sdk/api/SplashAd;)Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 122
    .line 123
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$600(Lcom/baidu/mobads/sdk/api/SplashAd;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 128
    .line 129
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$700(Lcom/baidu/mobads/sdk/api/SplashAd;)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 134
    .line 135
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$800(Lcom/baidu/mobads/sdk/api/SplashAd;)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 140
    .line 141
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$900(Lcom/baidu/mobads/sdk/api/SplashAd;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 146
    .line 147
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1000(Lcom/baidu/mobads/sdk/api/SplashAd;)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 156
    .line 157
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1100(Lcom/baidu/mobads/sdk/api/SplashAd;)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 166
    .line 167
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1200(Lcom/baidu/mobads/sdk/api/SplashAd;)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    invoke-direct/range {v1 .. v11}, Lcom/baidu/mobads/sdk/internal/dk;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZZZZ)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$002(Lcom/baidu/mobads/sdk/api/SplashAd;Lcom/baidu/mobads/sdk/internal/dk;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->val$prodContainer:Lcom/baidu/mobads/sdk/internal/ct;

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->a(Landroid/widget/RelativeLayout;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 193
    .line 194
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 199
    .line 200
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1300(Lcom/baidu/mobads/sdk/api/SplashAd;)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->d(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 214
    .line 215
    iget p2, p2, Lcom/baidu/mobads/sdk/api/SplashAd;->mTwistLogoHeightDp:I

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->a(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 221
    .line 222
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 227
    .line 228
    iget p2, p2, Lcom/baidu/mobads/sdk/api/SplashAd;->mTwistBgColor:I

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->c(I)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 234
    .line 235
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 240
    .line 241
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1400(Lcom/baidu/mobads/sdk/api/SplashAd;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 249
    .line 250
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 255
    .line 256
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1500(Lcom/baidu/mobads/sdk/api/SplashAd;)I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    iput p2, p1, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    .line 261
    .line 262
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 263
    .line 264
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 269
    .line 270
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$500(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/SplashAdListener;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->a(Lcom/baidu/mobads/sdk/api/SplashAdListener;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 278
    .line 279
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    if-eqz p1, :cond_4

    .line 284
    .line 285
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 286
    .line 287
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 292
    .line 293
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$400(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 298
    .line 299
    .line 300
    :cond_4
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    const/4 p2, 0x0

    .line 307
    iput-boolean p2, p1, Lcom/baidu/mobads/sdk/internal/dk;->u:Z

    .line 308
    .line 309
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 316
    .line 317
    invoke-static {p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$1600(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/SplashAd$SplashAdDownloadDialogListener;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dk;->a(Lcom/baidu/mobads/sdk/api/SplashAd$SplashAdDownloadDialogListener;)V

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 325
    .line 326
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/dk;->a()V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_5
    :goto_0
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/de;->a()Lcom/baidu/mobads/sdk/internal/de;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->b:Lcom/baidu/mobads/sdk/internal/br;

    .line 339
    .line 340
    const-string v0, "\u5f00\u5c4f\u663e\u793a\u533a\u57df\u592a\u5c0f,\u5bbd\u5ea6\u81f3\u5c11200dp,\u9ad8\u5ea6\u81f3\u5c11150dp"

    .line 341
    .line 342
    invoke-virtual {p1, p2, v0}, Lcom/baidu/mobads/sdk/internal/de;->a(Lcom/baidu/mobads/sdk/internal/br;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/internal/bv;->c(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 354
    .line 355
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$500(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/SplashAdListener;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    if-eqz p1, :cond_6

    .line 360
    .line 361
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 362
    .line 363
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$500(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/SplashAdListener;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    instance-of p1, p1, Lcom/baidu/mobads/sdk/api/SplashInteractionListener;

    .line 368
    .line 369
    if-eqz p1, :cond_6

    .line 370
    .line 371
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 372
    .line 373
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$500(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/api/SplashAdListener;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    check-cast p1, Lcom/baidu/mobads/sdk/api/SplashInteractionListener;

    .line 378
    .line 379
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/SplashInteractionListener;->onAdDismissed()V

    .line 380
    .line 381
    .line 382
    :cond_6
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/SplashAd$3;->this$0:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->access$000(Lcom/baidu/mobads/sdk/api/SplashAd;)Lcom/baidu/mobads/sdk/internal/dk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bj;->b(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
