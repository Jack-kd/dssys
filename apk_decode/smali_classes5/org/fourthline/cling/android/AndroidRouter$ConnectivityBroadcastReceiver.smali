.class Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/android/AndroidRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/android/AndroidRouter;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/android/AndroidRouter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public displayIntentInfo(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "noConnectivity"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "reason"

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "isFailover"

    .line 15
    .line 16
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v3, "networkInfo"

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/net/NetworkInfo;

    .line 27
    .line 28
    const-string v4, "otherNetwork"

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/net/NetworkInfo;

    .line 35
    .line 36
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "Connectivity change detected..."

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v7, "EXTRA_NO_CONNECTIVITY: "

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "EXTRA_REASON: "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v5, "EXTRA_IS_FAILOVER: "

    .line 103
    .line 104
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "EXTRA_NETWORK_INFO: "

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, "none"

    .line 132
    .line 133
    if-nez v3, :cond_0

    .line 134
    .line 135
    move-object v3, v2

    .line 136
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v3, "EXTRA_OTHER_NETWORK_INFO: "

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    if-nez v4, :cond_1

    .line 161
    .line 162
    move-object v4, v2

    .line 163
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "EXTRA_EXTRA_INFO: "

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v2, "extraInfo"

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public isSameNetworkType(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    :goto_0
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->displayIntentInfo(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :goto_0
    const/4 v1, 0x3

    .line 31
    if-gt v0, v1, :cond_2

    .line 32
    .line 33
    const-wide/16 v1, 0x3e8

    .line 34
    .line 35
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    .line 43
    .line 44
    iget-object v1, v1, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "%s => NONE network transition, waiting for new network... retry #%d"

    .line 59
    .line 60
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    return-void

    .line 78
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    .line 79
    .line 80
    iget-object p1, p1, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->isSameNetworkType(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$000()Ljava/util/logging/Logger;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "No actual network change... ignoring event!"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    :try_start_1
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    .line 99
    .line 100
    iget-object v0, p1, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 101
    .line 102
    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/android/AndroidRouter;->onNetworkTypeChange(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V
    :try_end_1
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_1
    move-exception p1

    .line 107
    iget-object p2, p0, Lorg/fourthline/cling/android/AndroidRouter$ConnectivityBroadcastReceiver;->this$0:Lorg/fourthline/cling/android/AndroidRouter;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lorg/fourthline/cling/android/AndroidRouter;->handleRouterExceptionOnNetworkTypeChange(Lorg/fourthline/cling/transport/RouterException;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
