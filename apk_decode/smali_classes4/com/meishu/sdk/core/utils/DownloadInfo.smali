.class public Lcom/meishu/sdk/core/utils/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATUS_COMPLETE:I = 0x2

.field public static final STATUS_INTERRUPTED:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Download.DownloadInfo"


# instance fields
.field public cacheFile:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public deeplinkUrl:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public downloadFile:Ljava/lang/String;

.field public downloadStartReported:Z

.field public downloadSuccessReported:Z

.field public fileName:Ljava/lang/String;

.field public hasNotifiedOpen:Z

.field public installStartReported:Z

.field public installSuccessReported:Z

.field public key:Ljava/lang/String;

.field public notificationId:I

.field public packageName:Ljava/lang/String;

.field public reportDownloadStart:[Ljava/lang/String;

.field public reportDownloadSuccess:[Ljava/lang/String;

.field public reportInstallStart:[Ljava/lang/String;

.field public reportInstallSucc:[Ljava/lang/String;

.field public retryTime:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->retryTime:I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadStartReported:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadSuccessReported:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->installStartReported:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->installSuccessReported:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->hasNotifiedOpen:Z

    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->key:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {p4}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/DownloadInfo;->makeFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p1, Ljava/io/File;

    .line 63
    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ".TempFile"

    .line 75
    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    .line 91
    .line 92
    new-instance p1, Ljava/io/File;

    .line 93
    .line 94
    iget-object p3, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {p4}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportDownloadStart:[Ljava/lang/String;

    .line 114
    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    move p1, v1

    .line 118
    :goto_0
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportDownloadStart:[Ljava/lang/String;

    .line 119
    .line 120
    array-length p3, p2

    .line 121
    if-ge p1, p3, :cond_0

    .line 122
    .line 123
    aget-object p3, p2, p1

    .line 124
    .line 125
    invoke-static {p3, p4}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    aput-object p3, p2, p1

    .line 130
    .line 131
    add-int/lit8 p1, p1, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p4}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportDownloadSuccess:[Ljava/lang/String;

    .line 143
    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    move p1, v1

    .line 147
    :goto_1
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportDownloadSuccess:[Ljava/lang/String;

    .line 148
    .line 149
    array-length p3, p2

    .line 150
    if-ge p1, p3, :cond_1

    .line 151
    .line 152
    aget-object p3, p2, p1

    .line 153
    .line 154
    invoke-static {p3, p4}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    aput-object p3, p2, p1

    .line 159
    .line 160
    add-int/lit8 p1, p1, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {p4}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportInstallStart:[Ljava/lang/String;

    .line 172
    .line 173
    if-eqz p1, :cond_2

    .line 174
    .line 175
    move p1, v1

    .line 176
    :goto_2
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportInstallStart:[Ljava/lang/String;

    .line 177
    .line 178
    array-length p3, p2

    .line 179
    if-ge p1, p3, :cond_2

    .line 180
    .line 181
    aget-object p3, p2, p1

    .line 182
    .line 183
    invoke-static {p3, p4}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    aput-object p3, p2, p1

    .line 188
    .line 189
    add-int/lit8 p1, p1, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_2
    invoke-interface {p4}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportInstallSucc:[Ljava/lang/String;

    .line 201
    .line 202
    if-eqz p1, :cond_3

    .line 203
    .line 204
    :goto_3
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportInstallSucc:[Ljava/lang/String;

    .line 205
    .line 206
    array-length p2, p1

    .line 207
    if-ge v1, p2, :cond_3

    .line 208
    .line 209
    aget-object p2, p1, v1

    .line 210
    .line 211
    invoke-static {p2, p4}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    aput-object p2, p1, v1

    .line 216
    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_3
    invoke-interface {p4}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->deeplinkUrl:Ljava/lang/String;

    .line 229
    .line 230
    return-void
.end method

.method private static final makeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MD5"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ".apk"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    const-string p0, "tempName.apk"

    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public downloadStatus()I
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public onDownloadFailed()V
    .locals 2

    .line 1
    const-string v0, "Download.DownloadInfo"

    .line 2
    .line 3
    const-string v1, "onDownloadFailed: \u4e0b\u8f7d\u5931\u8d25"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDownloadStart()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadStartReported:Z

    .line 2
    .line 3
    const-string v1, "Download.DownloadInfo"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Report dn_start reported abandon(reported)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadStartReported:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportDownloadStart:[Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v2, "Report send dn_start"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "onDownloaded: \u4e0b\u8f7d\u5f00\u59cb"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onDownloaded()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadSuccessReported:Z

    .line 2
    .line 3
    const-string v1, "Download.DownloadInfo"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Report dn_succ reported abandon(reported)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadSuccessReported:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportDownloadSuccess:[Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v2, "Report send dn_succ"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "onDownloaded: \u4e0b\u8f7d\u5b8c\u6210"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onInstallStart()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->installStartReported:Z

    .line 2
    .line 3
    const-string v1, "Download.DownloadInfo"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Report dn_inst_start abandon(reported)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->installStartReported:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportInstallStart:[Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v2, "Report send dn_inst_start"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "onInstallStart: \u5f00\u59cb\u5b89\u88c5"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onInstallSucc()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->installSuccessReported:Z

    .line 2
    .line 3
    const-string v1, "Download.DownloadInfo"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Report dn_inst_succ abandon(reported)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->installSuccessReported:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->reportInstallSucc:[Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v2, "Report send dn_inst_succ"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "onInstallStart: \u5b89\u88c5\u6210\u529f"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "DownloadInfo: DisplayName: %s\r\nUrl: %s\r\nDownloadFile:%s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
