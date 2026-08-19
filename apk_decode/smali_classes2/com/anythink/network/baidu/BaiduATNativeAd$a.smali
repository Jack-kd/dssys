.class Lcom/anythink/network/baidu/BaiduATNativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativeAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public adActReward(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Baidu Native adActReward:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdActReward(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public adActRewardSuccess()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Baidu Native adActRewardSuccess:"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdActRewardSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onADExposed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onADExposureFailed(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Baidu Native onADExposureFailed:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onADStatusChanged()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 12
    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPackage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->getDownloadProgress()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v0, v0

    .line 42
    mul-long/2addr v0, v2

    .line 43
    const-wide/16 v4, 0x64

    .line 44
    .line 45
    div-long v4, v0, v4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->getDownloadStatus()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v8, 0x1

    .line 54
    const/4 v9, 0x0

    .line 55
    if-eq v0, v8, :cond_5

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    if-eq v0, v1, :cond_2

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    if-eq v0, v1, :cond_1

    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    if-eq v0, v1, :cond_0

    .line 68
    .line 69
    const/4 v1, 0x7

    .line 70
    if-eq v0, v1, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->g(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v1, v0

    .line 80
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 81
    .line 82
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadFail(JJLjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 86
    .line 87
    invoke-static {v0, v9}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Lcom/anythink/network/baidu/BaiduATNativeAd;Z)Z

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->f(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 98
    .line 99
    invoke-interface {v0, v2, v3, v6, v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadFinish(JLjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 103
    .line 104
    invoke-static {v0, v9}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Lcom/anythink/network/baidu/BaiduATNativeAd;Z)Z

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->b(Lcom/anythink/network/baidu/BaiduATNativeAd;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->c(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    move-object v1, v0

    .line 123
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 124
    .line 125
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadStart(JJLjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 129
    .line 130
    invoke-static {v0, v8}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Lcom/anythink/network/baidu/BaiduATNativeAd;Z)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->d(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    move-object v1, v0

    .line 141
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 142
    .line 143
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadUpdate(JJLjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->h(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 154
    .line 155
    invoke-interface {v0, v6, v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->b(Lcom/anythink/network/baidu/BaiduATNativeAd;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->e(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    move-object v1, v0

    .line 174
    check-cast v1, Lcom/anythink/china/api/CustomAdapterDownloadListener;

    .line 175
    .line 176
    invoke-interface/range {v1 .. v7}, Lcom/anythink/china/api/CustomAdapterDownloadListener;->onDownloadPause(JJLjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 180
    .line 181
    invoke-static {v0, v9}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Lcom/anythink/network/baidu/BaiduATNativeAd;Z)Z

    .line 182
    .line 183
    .line 184
    :cond_6
    :goto_0
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdUnionClick()V
    .locals 0

    return-void
.end method
