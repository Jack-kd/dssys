.class public Lcom/meishu/sdk/core/webview/p;
.super Lcom/meishu/sdk/core/webview/listener/e;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/meishu/sdk/platform/ms/c;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/meishu/sdk/core/webview/q;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/q;Lcom/meishu/sdk/core/webview/listener/d;Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/p;->d:Lcom/meishu/sdk/core/webview/q;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/core/webview/p;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/core/webview/p;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/meishu/sdk/core/webview/listener/e;-><init>(Lcom/meishu/sdk/core/webview/listener/d;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClosePage()V
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/p;->d:Lcom/meishu/sdk/core/webview/q;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/q;->g:Lcom/meishu/sdk/core/webview/j;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/j;->onCloseWebView()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onWebClicked(Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getOpen_browser()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/p;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 12
    .line 13
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->a:I

    .line 14
    .line 15
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/p;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/meishu/sdk/core/webview/o;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-gtz v0, :cond_1

    .line 48
    .line 49
    :cond_0
    const/4 p1, 0x1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/p;->d:Lcom/meishu/sdk/core/webview/q;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/p;->c:Landroid/content/Context;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/meishu/sdk/core/webview/p;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    instance-of v3, v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-interface {v2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-gtz v3, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRewardTmpId()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :cond_2
    invoke-interface {v2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_time()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-lez v2, :cond_4

    .line 100
    .line 101
    mul-int/lit16 v2, v2, 0x3e8

    .line 102
    .line 103
    sput v2, Lcom/meishu/sdk/core/webview/q;->j:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const/4 v3, 0x0

    .line 107
    :cond_4
    :goto_0
    iget-boolean v2, v0, Lcom/meishu/sdk/core/webview/q;->d:Z

    .line 108
    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    sget-object v2, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 112
    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    new-instance v2, Landroid/os/Handler;

    .line 116
    .line 117
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 118
    .line 119
    .line 120
    sput-object v2, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 121
    .line 122
    :cond_5
    sget-object v2, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/q;->f:Ljava/lang/Runnable;

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v2, Landroid/content/Intent;

    .line 138
    .line 139
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v4, "broadcast_onclick"

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const-string v4, "clk_act_type"

    .line 148
    .line 149
    const/4 v5, 0x2

    .line 150
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 154
    .line 155
    const-string v5, "image_width"

    .line 156
    .line 157
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 161
    .line 162
    const-string v4, "image_height"

    .line 163
    .line 164
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    const-string v0, "click_reward_tmp_id"

    .line 168
    .line 169
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string v0, "open_loading_page_browser"

    .line 173
    .line 174
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public onWebReady(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/p;->d:Lcom/meishu/sdk/core/webview/q;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/q;->g:Lcom/meishu/sdk/core/webview/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/j;->onWebReady(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
