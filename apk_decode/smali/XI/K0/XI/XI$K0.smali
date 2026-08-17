.class public LXI/K0/XI/XI$K0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LXI/K0/XI/XI$K0$K0;
    }
.end annotation


# instance fields
.field public CA:Landroid/content/ServiceConnection;

.field public K0:Ljava/lang/String;

.field public XI:LXI/K0/XI/XI;

.field public kM:Ljava/lang/String;

.field public final xo:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    iput-object v0, p0, LXI/K0/XI/XI$K0;->K0:Ljava/lang/String;

    iput-object v0, p0, LXI/K0/XI/XI$K0;->kM:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    new-instance v0, LXI/K0/XI/XI$K0$XI;

    invoke-direct {v0, p0}, LXI/K0/XI/XI$K0$XI;-><init>(LXI/K0/XI/XI$K0;)V

    iput-object v0, p0, LXI/K0/XI/XI$K0;->CA:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, LXI/K0/XI/XI$K0;->K0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, LXI/K0/XI/XI$K0;->K0:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, LXI/K0/XI/XI$K0;->kM:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, LXI/K0/XI/XI$K0;->K0:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/16 v5, 0x40

    .line 33
    .line 34
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    move-object v0, v3

    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    .line 48
    array-length v4, v0

    .line 49
    if-lez v4, :cond_2

    .line 50
    .line 51
    aget-object v0, v0, v2

    .line 52
    .line 53
    const-string v4, "SHA1"

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :try_start_1
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    array-length v5, v0

    .line 75
    move v6, v2

    .line 76
    :goto_1
    if-ge v6, v5, :cond_1

    .line 77
    .line 78
    aget-byte v7, v0, v6

    .line 79
    .line 80
    and-int/lit16 v7, v7, 0xff

    .line 81
    .line 82
    or-int/lit16 v7, v7, 0x100

    .line 83
    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const/4 v8, 0x3

    .line 89
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    goto :goto_3

    .line 106
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_3
    iput-object v3, p0, LXI/K0/XI/XI$K0;->kM:Ljava/lang/String;

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    .line 112
    .line 113
    const-string v3, ""

    .line 114
    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    return-object v3

    .line 121
    :cond_4
    iget-object p1, p0, LXI/K0/XI/XI$K0;->K0:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v4, p0, LXI/K0/XI/XI$K0;->kM:Ljava/lang/String;

    .line 124
    .line 125
    check-cast v0, LXI/K0/XI/XI$XI$XI;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const-string v7, "com.heytap.openid.IOpenID"

    .line 136
    .line 137
    :try_start_2
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, v0, LXI/K0/XI/XI$XI$XI;->XI:Landroid/os/IBinder;

    .line 150
    .line 151
    invoke-interface {p1, v1, v5, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_5

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_5
    move-object v3, p1

    .line 175
    :goto_4
    return-object v3

    .line 176
    :catchall_0
    move-exception p1

    .line 177
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public declared-synchronized XI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    :try_start_1
    iget-object v0, p0, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/content/ComponentName;

    .line 28
    .line 29
    const-string v2, "com.heytap.openid"

    .line 30
    .line 31
    const-string v3, "com.heytap.openid.IdentifyService"

    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, LXI/K0/XI/XI$K0;->CA:Landroid/content/ServiceConnection;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    iget-object v1, p0, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    .line 57
    .line 58
    const-wide/16 v2, 0xbb8

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    :goto_0
    :try_start_3
    monitor-exit v0

    .line 67
    goto :goto_2

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :try_start_4
    throw p1

    .line 70
    :cond_1
    :goto_2
    iget-object v0, p0, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-object p1

    .line 78
    :cond_2
    :try_start_5
    invoke-virtual {p0, p1, p2}, LXI/K0/XI/XI$K0;->K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    monitor-exit p0

    .line 83
    return-object p1

    .line 84
    :catch_1
    :try_start_6
    const-string p1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-object p1

    .line 88
    :cond_3
    :try_start_7
    invoke-virtual {p0, p1, p2}, LXI/K0/XI/XI$K0;->K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 92
    monitor-exit p0

    .line 93
    return-object p1

    .line 94
    :catch_2
    :try_start_8
    const-string p1, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return-object p1

    .line 98
    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 99
    throw p1
.end method
