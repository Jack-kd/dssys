.class public Lcom/meishu/sdk/meishu_ad/splash/i;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget v3, Lcom/meishu/sdk/R$id;->ms_webview_container:I

    .line 9
    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    move-object v1, v2

    .line 21
    :goto_0
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/l;->a()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;->b:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "l"

    .line 44
    .line 45
    const-string v1, "View has been removed"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/l;->a()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 63
    .line 64
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    const/4 v4, -0x1

    .line 67
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 82
    .line 83
    sget-object v1, Lcom/meishu/sdk/core/utils/h;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    instance-of v1, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    move-object v2, v0

    .line 107
    check-cast v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getClickExtInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->setWebTempId(IZ)Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 136
    .line 137
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 138
    .line 139
    if-nez v1, :cond_7

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_7
    new-instance v2, Lcom/meishu/sdk/meishu_ad/splash/k;

    .line 143
    .line 144
    invoke-direct {v2, v0}, Lcom/meishu/sdk/meishu_ad/splash/k;-><init>(Lcom/meishu/sdk/meishu_ad/splash/l;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;->setWindowEventListener(Lcom/meishu/sdk/meishu_ad/view/ViewContainer$a;)V

    .line 148
    .line 149
    .line 150
    :goto_4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 151
    .line 152
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 153
    .line 154
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/splash/l;->a(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/i;->b:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    instance-of v2, v1, Landroid/app/Activity;

    .line 166
    .line 167
    if-nez v2, :cond_8

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_8
    check-cast v1, Landroid/app/Activity;

    .line 171
    .line 172
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->d:Landroid/app/Activity;

    .line 173
    .line 174
    new-instance v1, Lcom/meishu/sdk/meishu_ad/splash/j;

    .line 175
    .line 176
    invoke-direct {v1, v0}, Lcom/meishu/sdk/meishu_ad/splash/j;-><init>(Lcom/meishu/sdk/meishu_ad/splash/l;)V

    .line 177
    .line 178
    .line 179
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->e:Lcom/meishu/sdk/core/service/e;

    .line 180
    .line 181
    invoke-static {v1}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :goto_6
    return-void
.end method
