.class public Lcom/meishu/sdk/meishu_ad/reward/g;
.super Lcom/meishu/sdk/core/safe/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->p:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    .line 26
    .line 27
    sget v3, Lcom/meishu/sdk/R$id;->ms_controlbar_video_play_button:I

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 36
    .line 37
    .line 38
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    .line 39
    .line 40
    sget v3, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    .line 52
    .line 53
    sget v3, Lcom/meishu/sdk/R$id;->ms_controlbar_video_pause_button:I

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 60
    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 64
    .line 65
    .line 66
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d:Landroid/media/MediaPlayer;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 103
    .line 104
    invoke-static {p1, v2}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/g;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoLoaded()V

    .line 114
    .line 115
    .line 116
    :cond_2
    return-void
.end method
