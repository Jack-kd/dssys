.class public Lcom/meishu/sdk/platform/ms/splash/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/splash/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/ms/splash/g$d;
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Lcom/meishu/sdk/core/ad/splash/d;

.field public c:Lcom/meishu/sdk/platform/ms/splash/a;

.field public d:Lcom/meishu/sdk/platform/ms/splash/b;

.field public volatile e:Z

.field public f:Z

.field public final g:Lcom/meishu/sdk/meishu_ad/v;

.field public h:Z

.field public i:Landroid/view/View;

.field public j:Z

.field public k:Lcom/meishu/sdk/platform/ms/splash/g$d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/a;Lcom/meishu/sdk/core/ad/splash/d;ZLcom/meishu/sdk/meishu_ad/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/meishu/sdk/platform/ms/splash/g;->f:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/splash/g;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/g;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/splash/g;)I
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    if-eqz p0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    if-eqz p0, :cond_1

    .line 6
    check-cast p0, Lcom/meishu/sdk/meishu_ad/splash/d;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAd_type()I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 7
    :cond_0
    sget-object p0, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result p0

    return p0

    .line 8
    :cond_1
    sget-object p0, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/d;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 17
    .line 18
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCloseUrl()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_1

    .line 29
    .line 30
    aget-object v3, v0, v2

    .line 31
    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v5, Lcom/meishu/sdk/core/utils/i;

    .line 49
    .line 50
    invoke-direct {v5}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v3, v5}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lcom/meishu/sdk/platform/ms/splash/g$b;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/splash/g$b;-><init>(Lcom/meishu/sdk/platform/ms/splash/g;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public declared-synchronized onADExposure()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    monitor-enter p0

    .line 12
    const v3, 0x895442

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v6, "stepNum"

    .line 26
    .line 27
    const/4 v7, 0x6

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string v6, "msg"

    .line 36
    .line 37
    const-string v7, "start exposure"

    .line 38
    .line 39
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/g;->a()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    const-string v7, "creativeType"

    .line 49
    .line 50
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_6

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_4

    .line 58
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    const-string v6, "adView"

    .line 63
    .line 64
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-string v6, "adView"

    .line 69
    .line 70
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-boolean v6, p0, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    const-string v6, "hasExposed"

    .line 78
    .line 79
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const-string v6, "hasExposed"

    .line 84
    .line 85
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :goto_2
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 89
    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    const-string v0, "adWrapper"

    .line 93
    .line 94
    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    const-string v2, "adWrapper"

    .line 99
    .line 100
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :goto_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :goto_5
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 117
    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 125
    .line 126
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 127
    .line 128
    new-instance v1, Lcom/meishu/sdk/platform/ms/splash/g$a;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/splash/g$a;-><init>(Lcom/meishu/sdk/platform/ms/splash/g;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 138
    .line 139
    const-string v1, "adView \u4e3a\u7a7a"

    .line 140
    .line 141
    invoke-static {v0, v3, v1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_8

    .line 145
    :catch_1
    move-exception v0

    .line 146
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :goto_6
    :try_start_4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 151
    .line 152
    const-string v2, "adWrapper \u4e3a\u7a7a"

    .line 153
    .line 154
    invoke-static {v1, v3, v2}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    goto :goto_9

    .line 160
    :catch_2
    move-exception v1

    .line 161
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    .line 166
    .line 167
    :cond_5
    :goto_8
    monitor-exit p0

    .line 168
    return-void

    .line 169
    :goto_9
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    throw v0
.end method

.method public onADLoaded(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/meishu/sdk/platform/ms/splash/b;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/meishu/sdk/platform/ms/splash/g;->f:Z

    .line 11
    .line 12
    invoke-direct {v1, p1, v0, p0, v2}, Lcom/meishu/sdk/platform/ms/splash/b;-><init>(Lcom/meishu/sdk/meishu_ad/splash/b;Lcom/meishu/sdk/platform/ms/splash/a;Lcom/meishu/sdk/platform/ms/splash/g;Z)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/ms/splash/g$c;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/platform/ms/splash/g$c;-><init>(Lcom/meishu/sdk/platform/ms/splash/g;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
