.class public Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;
.super Lcom/meishu/sdk/core/safe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/c;->a(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getCurrentPosition()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/widget/TextView;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-long v0, v0

    .line 35
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 36
    .line 37
    iget-wide v3, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    .line 38
    .line 39
    cmp-long v3, v3, v0

    .line 40
    .line 41
    const-wide/16 v4, 0x64

    .line 42
    .line 43
    if-lez v3, :cond_0

    .line 44
    .line 45
    sub-long v6, v0, v4

    .line 46
    .line 47
    iput-wide v6, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    .line 48
    .line 49
    :cond_0
    iget-object v3, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 50
    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iget v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 57
    .line 58
    if-ne v2, v8, :cond_1

    .line 59
    .line 60
    if-lez p1, :cond_1

    .line 61
    .line 62
    cmp-long v2, v0, v6

    .line 63
    .line 64
    if-lez v2, :cond_1

    .line 65
    .line 66
    int-to-long v9, p1

    .line 67
    invoke-interface {v3, v9, v10, v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onProgressUpdate(JJ)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 71
    .line 72
    iget-wide v9, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    .line 73
    .line 74
    cmp-long v3, v9, v6

    .line 75
    .line 76
    if-lez v3, :cond_2

    .line 77
    .line 78
    int-to-long v6, p1

    .line 79
    cmp-long v3, v6, v9

    .line 80
    .line 81
    if-ltz v3, :cond_2

    .line 82
    .line 83
    iget-boolean v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->H:Z

    .line 84
    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 88
    .line 89
    invoke-static {v2, v8}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->B:Lcom/meishu/sdk/meishu_ad/n0$b;

    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/n0$b;->onKeepTimeFinished()V

    .line 99
    .line 100
    .line 101
    :cond_2
    int-to-float p1, p1

    .line 102
    const/high16 v2, 0x3f800000    # 1.0f

    .line 103
    .line 104
    mul-float/2addr p1, v2

    .line 105
    long-to-float v0, v0

    .line 106
    div-float/2addr p1, v0

    .line 107
    float-to-double v0, p1

    .line 108
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 109
    .line 110
    cmpl-double p1, v0, v2

    .line 111
    .line 112
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 113
    .line 114
    if-ltz p1, :cond_4

    .line 115
    .line 116
    cmpg-double p1, v0, v2

    .line 117
    .line 118
    if-gez p1, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 121
    .line 122
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->I:Z

    .line 123
    .line 124
    if-nez p1, :cond_8

    .line 125
    .line 126
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoOneQuarter()V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 136
    .line 137
    invoke-static {p1, v8}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    cmpl-double p1, v0, v2

    .line 142
    .line 143
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 144
    .line 145
    if-ltz p1, :cond_6

    .line 146
    .line 147
    cmpg-double p1, v0, v2

    .line 148
    .line 149
    if-gez p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 152
    .line 153
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->J:Z

    .line 154
    .line 155
    if-nez p1, :cond_8

    .line 156
    .line 157
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 160
    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoOneHalf()V

    .line 164
    .line 165
    .line 166
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 167
    .line 168
    invoke-static {p1, v8}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_6
    cmpl-double p1, v0, v2

    .line 173
    .line 174
    if-ltz p1, :cond_8

    .line 175
    .line 176
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 177
    .line 178
    cmpg-double p1, v0, v2

    .line 179
    .line 180
    if-gez p1, :cond_8

    .line 181
    .line 182
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 183
    .line 184
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->K:Z

    .line 185
    .line 186
    if-nez p1, :cond_8

    .line 187
    .line 188
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 191
    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoThreeQuarter()V

    .line 195
    .line 196
    .line 197
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 198
    .line 199
    invoke-static {p1, v8}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 205
    .line 206
    invoke-virtual {p1, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    .line 208
    .line 209
    return-void
.end method
