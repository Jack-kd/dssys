.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;
.super Lcom/meishu/sdk/core/view/TouchPositionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initClickEvent(Lcom/meishu/sdk/core/bquery/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Lcom/meishu/sdk/core/ad/IAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const-string v0, "broadcast_onclick"

    .line 2
    .line 3
    const-string v1, "touchContainer onClick"

    .line 4
    .line 5
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v2, v2, Lcom/meishu/sdk/core/webview/s;->b:Lcom/meishu/sdk/core/webview/f;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/meishu/sdk/core/webview/s;->b:Lcom/meishu/sdk/core/webview/f;

    .line 25
    .line 26
    iput-boolean v3, v2, Lcom/meishu/sdk/core/webview/f;->f:Z

    .line 27
    .line 28
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/view/TouchPositionListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/meishu/sdk/core/webview/q;->a(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$500()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0, v1, v2}, Lcom/meishu/sdk/core/view/TouchPositionListener;->isClickEvent(FF)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/utils/t1;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/utils/t1;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {v1, v2, p2}, Lcom/meishu/sdk/core/utils/t1;->a(FF)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_1

    .line 100
    .line 101
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$700()Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {p2, v1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 113
    .line 114
    invoke-static {p2, v0, v3}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$800(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    :cond_1
    return p1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    if-eqz p2, :cond_2

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ne v2, v3, :cond_2

    .line 126
    .line 127
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 128
    .line 129
    invoke-static {v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/meishu/sdk/core/webview/q;->a(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_2

    .line 138
    .line 139
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$500()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/meishu/sdk/core/view/TouchPositionListener;->isClickEvent(FF)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_2

    .line 159
    .line 160
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/utils/t1;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_2

    .line 167
    .line 168
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 169
    .line 170
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/utils/t1;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    invoke-virtual {v1, v2, p2}, Lcom/meishu/sdk/core/utils/t1;->a(FF)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_2

    .line 187
    .line 188
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$700()Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {p2, v1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 200
    .line 201
    invoke-static {p2, v0, v3}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$800(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;Z)V

    .line 202
    .line 203
    .line 204
    :cond_2
    throw p1
.end method
