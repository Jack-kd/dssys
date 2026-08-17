.class public Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;
.super Lcom/meishu/sdk/core/safe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/meishu/sdk/core/safe/c;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/c;->a(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getCurrentPosition()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 20
    .line 21
    iget-wide v1, v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v3, v1, v3

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    int-to-long v5, p1

    .line 31
    cmp-long v1, v5, v1

    .line 32
    .line 33
    if-ltz v1, :cond_0

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->i:Z

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-static {v0, v4}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e:Lcom/meishu/sdk/meishu_ad/n0$b;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0$b;->onKeepTimeFinished()V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-double v0, v0

    .line 60
    int-to-double v2, p1

    .line 61
    div-double/2addr v2, v0

    .line 62
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 63
    .line 64
    cmpl-double p1, v2, v0

    .line 65
    .line 66
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 67
    .line 68
    if-ltz p1, :cond_2

    .line 69
    .line 70
    cmpg-double p1, v2, v0

    .line 71
    .line 72
    if-gez p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 75
    .line 76
    iget-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->j:Z

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoOneQuarter()V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 88
    .line 89
    invoke-static {p1, v4}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    cmpl-double p1, v2, v0

    .line 94
    .line 95
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 96
    .line 97
    if-ltz p1, :cond_4

    .line 98
    .line 99
    cmpg-double p1, v2, v0

    .line 100
    .line 101
    if-gez p1, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 104
    .line 105
    iget-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->k:Z

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoOneHalf()V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 117
    .line 118
    invoke-static {p1, v4}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    cmpl-double p1, v2, v0

    .line 123
    .line 124
    if-ltz p1, :cond_6

    .line 125
    .line 126
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 127
    .line 128
    cmpg-double p1, v2, v0

    .line 129
    .line 130
    if-gez p1, :cond_6

    .line 131
    .line 132
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 133
    .line 134
    iget-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->l:Z

    .line 135
    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoThreeQuarter()V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 146
    .line 147
    invoke-static {p1, v4}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 153
    .line 154
    const-wide/16 v0, 0x64

    .line 155
    .line 156
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    .line 158
    .line 159
    return-void
.end method
