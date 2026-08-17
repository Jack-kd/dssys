.class public abstract Lcom/meishu/sdk/core/loader/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/IAdLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/loader/IAdLoadListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/loader/IAdLoader;"
    }
.end annotation


# static fields
.field public static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"

.field private static final TAG:Ljava/lang/String; = "AdLoader"

.field private static final adCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final adTypeCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/meishu/sdk/core/ad/AdType;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private static checkSupport:Ljava/lang/String;

.field private static cryptCipher:Ljavax/crypto/Cipher;

.field private static cryptKey:[B

.field private static cryptKeyStr:Ljava/lang/String;

.field private static final hashParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final queryParams:[Ljava/lang/String;


# instance fields
.field private T1:J

.field private T10:J

.field private T2:J

.field private T3:J

.field private T8:J

.field private T9:J

.field public accept_ad_height:Ljava/lang/Integer;

.field public accept_ad_width:Ljava/lang/Integer;

.field public channel:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field private volatile isLoadSucc:Z

.field private volatile isLoadTimeout:Z

.field public loaderListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private loaderManager:Lcom/meishu/sdk/core/loader/concurrent/e;

.field public posId:Ljava/lang/String;

.field public startLoadTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->hashParams:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "device_imei"

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->adCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->adTypeCounter:Ljava/util/Map;

    .line 28
    .line 29
    invoke-static {}, Lcom/meishu/sdk/core/ad/AdType;->values()[Lcom/meishu/sdk/core/ad/AdType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v1, :cond_0

    .line 36
    .line 37
    aget-object v3, v0, v2

    .line 38
    .line 39
    sget-object v4, Lcom/meishu/sdk/core/loader/c;->adTypeCounter:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v7, "sdk_version_code"

    .line 53
    .line 54
    const-string v8, "device_os"

    .line 55
    .line 56
    const-string v3, "app_id"

    .line 57
    .line 58
    const-string v4, "pid"

    .line 59
    .line 60
    const-string v5, "accept_ad_type"

    .line 61
    .line 62
    const-string v6, "sdk_version"

    .line 63
    .line 64
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->queryParams:[Ljava/lang/String;

    .line 69
    .line 70
    const/16 v0, 0x10

    .line 71
    .line 72
    :try_start_0
    new-array v0, v0, [B

    .line 73
    .line 74
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->cryptKey:[B

    .line 75
    .line 76
    new-instance v0, Ljava/security/SecureRandom;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/meishu/sdk/core/loader/c;->cryptKey:[B

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lcom/meishu/sdk/core/loader/c;->cryptKey:[B

    .line 87
    .line 88
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->cryptKeyStr:Ljava/lang/String;

    .line 97
    .line 98
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 99
    .line 100
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->cryptCipher:Ljavax/crypto/Cipher;

    .line 105
    .line 106
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 107
    .line 108
    sget-object v2, Lcom/meishu/sdk/core/loader/c;->cryptKey:[B

    .line 109
    .line 110
    const-string v3, "AES"

    .line 111
    .line 112
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 116
    .line 117
    const-string v3, "MD5"

    .line 118
    .line 119
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    sget-object v5, Lcom/meishu/sdk/core/loader/c;->cryptKeyStr:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 153
    .line 154
    .line 155
    const/4 v3, 0x2

    .line 156
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const/4 v1, 0x0

    .line 162
    sput-object v1, Lcom/meishu/sdk/core/loader/c;->cryptKeyStr:Ljava/lang/String;

    .line 163
    .line 164
    sput-object v1, Lcom/meishu/sdk/core/loader/c;->cryptCipher:Ljavax/crypto/Cipher;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/loader/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/loader/c;->isLoadTimeout:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/core/loader/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/loader/c;->isLoadTimeout:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/core/loader/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/loader/c;->isLoadSucc:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/loader/c;->handleCsj(Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/loader/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/loader/c;->isLoadSucc:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/core/loader/c;)Lcom/meishu/sdk/core/loader/concurrent/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/loader/c;->loaderManager:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1102(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/loader/concurrent/e;)Lcom/meishu/sdk/core/loader/concurrent/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c;->loaderManager:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/core/loader/c;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meishu/sdk/core/loader/c;->getRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/core/loader/c;Lokhttp3/Request;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/c;->retryNet(Lokhttp3/Request;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/core/loader/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/loader/c;->T9:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/core/loader/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/loader/c;->T9:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/core/loader/c;[BLjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/c;->onLoadSuccess([BLjava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/c;->loadAd(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/core/loader/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/loader/c;->T8:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/core/loader/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/loader/c;->T10:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/loader/c;->handleDynamicClick(Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private asynGetDns()V
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 4
    .line 5
    new-instance v1, Lcom/meishu/sdk/core/loader/c$d;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/loader/c$d;-><init>(Lcom/meishu/sdk/core/loader/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private declared-synchronized decryptBody([B)Ljava/lang/String;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, ""

    .line 3
    .line 4
    if-eqz p1, :cond_8

    .line 5
    .line 6
    sget-object v1, Lcom/meishu/sdk/core/loader/c;->cryptCipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_1
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 17
    .line 18
    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 19
    .line 20
    .line 21
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 24
    .line 25
    .line 26
    :try_start_3
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    .line 27
    .line 28
    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    .line 31
    const/16 v3, 0x400

    .line 32
    .line 33
    :try_start_4
    new-array v3, v3, [B

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, -0x1

    .line 40
    if-eq v6, v7, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v3

    .line 49
    goto :goto_8

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto/16 :goto_e

    .line 60
    .line 61
    :catch_1
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 62
    .line 63
    .line 64
    :catch_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 65
    .line 66
    .line 67
    goto/16 :goto_b

    .line 68
    .line 69
    :goto_2
    move-object v3, v1

    .line 70
    goto :goto_a

    .line 71
    :catchall_2
    move-exception p1

    .line 72
    goto :goto_3

    .line 73
    :catch_3
    move-exception v5

    .line 74
    goto :goto_4

    .line 75
    :goto_3
    move-object v5, v3

    .line 76
    goto :goto_2

    .line 77
    :goto_4
    move-object v8, v5

    .line 78
    move-object v5, v3

    .line 79
    move-object v3, v8

    .line 80
    goto :goto_8

    .line 81
    :catchall_3
    move-exception p1

    .line 82
    goto :goto_5

    .line 83
    :catch_4
    move-exception v1

    .line 84
    goto :goto_6

    .line 85
    :goto_5
    move-object v5, v3

    .line 86
    goto :goto_a

    .line 87
    :goto_6
    move-object v5, v3

    .line 88
    :goto_7
    move-object v3, v1

    .line 89
    move-object v1, v5

    .line 90
    goto :goto_8

    .line 91
    :catchall_4
    move-exception p1

    .line 92
    move-object v1, v3

    .line 93
    move-object v5, v1

    .line 94
    goto :goto_9

    .line 95
    :catch_5
    move-exception v1

    .line 96
    move-object v4, v3

    .line 97
    move-object v5, v4

    .line 98
    goto :goto_7

    .line 99
    :goto_8
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 105
    .line 106
    .line 107
    :catch_6
    :cond_1
    if-eqz v5, :cond_2

    .line 108
    .line 109
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 110
    .line 111
    .line 112
    :catch_7
    :cond_2
    if-eqz v4, :cond_6

    .line 113
    .line 114
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 115
    .line 116
    .line 117
    goto :goto_b

    .line 118
    :catchall_5
    move-exception p1

    .line 119
    move-object v3, v4

    .line 120
    :goto_9
    move-object v4, v3

    .line 121
    goto :goto_2

    .line 122
    :goto_a
    if-eqz v3, :cond_3

    .line 123
    .line 124
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 125
    .line 126
    .line 127
    :catch_8
    :cond_3
    if-eqz v5, :cond_4

    .line 128
    .line 129
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 130
    .line 131
    .line 132
    :catch_9
    :cond_4
    if-eqz v4, :cond_5

    .line 133
    .line 134
    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 135
    .line 136
    .line 137
    :catch_a
    :cond_5
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 138
    :catch_b
    :cond_6
    :goto_b
    :try_start_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 145
    .line 146
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sput-object v1, Lcom/meishu/sdk/core/loader/c;->cryptCipher:Ljavax/crypto/Cipher;

    .line 151
    .line 152
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 153
    .line 154
    sget-object v4, Lcom/meishu/sdk/core/loader/c;->cryptKey:[B

    .line 155
    .line 156
    const-string v5, "AES"

    .line 157
    .line 158
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 162
    .line 163
    const-string v5, "MD5"

    .line 164
    .line 165
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    sget-object v7, Lcom/meishu/sdk/core/loader/c;->cryptKeyStr:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 199
    .line 200
    .line 201
    const/4 v5, 0x2

    .line 202
    invoke-virtual {v1, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 203
    .line 204
    .line 205
    sget-object v1, Lcom/meishu/sdk/core/loader/c;->cryptCipher:Ljavax/crypto/Cipher;

    .line 206
    .line 207
    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/String;

    .line 216
    .line 217
    const-string v3, "UTF-8"

    .line 218
    .line 219
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 220
    .line 221
    .line 222
    move-object v0, v2

    .line 223
    goto :goto_c

    .line 224
    :catchall_6
    move-exception v1

    .line 225
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 226
    .line 227
    .line 228
    :cond_7
    :goto_c
    :try_start_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_8

    .line 233
    .line 234
    new-instance v1, Ljava/lang/String;

    .line 235
    .line 236
    const-string v2, "UTF-8"

    .line 237
    .line 238
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 239
    .line 240
    .line 241
    move-object v0, v1

    .line 242
    goto :goto_d

    .line 243
    :catch_c
    move-exception p1

    .line 244
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 245
    .line 246
    .line 247
    :cond_8
    :goto_d
    monitor-exit p0

    .line 248
    return-object v0

    .line 249
    :goto_e
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 250
    throw p1
.end method

.method private generateParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "accept_ad_width"

    .line 18
    .line 19
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ltz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "accept_ad_height"

    .line 39
    .line 40
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p1
.end method

.method private getRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "message"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "="

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "&"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "nonce"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "signature"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "enc"

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    check-cast p3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p3, "s0"

    .line 91
    .line 92
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v3, p0, Lcom/meishu/sdk/core/loader/c;->T1:J

    .line 99
    .line 100
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p3, "."

    .line 104
    .line 105
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v3, p0, Lcom/meishu/sdk/core/loader/c;->T2:J

    .line 109
    .line 110
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-wide v3, p0, Lcom/meishu/sdk/core/loader/c;->T3:J

    .line 117
    .line 118
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, "s1"

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    sget-wide v3, Lcom/meishu/sdk/core/utils/r;->e:J

    .line 133
    .line 134
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    sget-wide v3, Lcom/meishu/sdk/core/utils/r;->f:J

    .line 141
    .line 142
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget-wide v3, Lcom/meishu/sdk/core/utils/a0;->d:J

    .line 149
    .line 150
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-wide v3, Lcom/meishu/sdk/core/utils/a0;->e:J

    .line 157
    .line 158
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    if-eqz p2, :cond_3

    .line 174
    .line 175
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_3

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Ljava/util/Map$Entry;

    .line 194
    .line 195
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Ljava/lang/String;

    .line 200
    .line 201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    check-cast p2, Ljava/lang/String;

    .line 206
    .line 207
    const-string v4, "app_id"

    .line 208
    .line 209
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_1

    .line 214
    .line 215
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_0

    .line 224
    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_0

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    const-string v5, "?"

    .line 236
    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_2

    .line 242
    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_3
    new-instance p1, Lokhttp3/Request$Builder;

    .line 270
    .line 271
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    const-string p2, "application/x-www-form-urlencoded; charset=utf-8"

    .line 283
    .line 284
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 293
    .line 294
    .line 295
    if-eqz p4, :cond_5

    .line 296
    .line 297
    new-instance p2, Lokhttp3/Headers$Builder;

    .line 298
    .line 299
    invoke-direct {p2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result p4

    .line 314
    if-eqz p4, :cond_4

    .line 315
    .line 316
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p4

    .line 320
    check-cast p4, Ljava/util/Map$Entry;

    .line 321
    .line 322
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Ljava/lang/String;

    .line 327
    .line 328
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p4

    .line 332
    check-cast p4, Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {p2, v0, p4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_4
    invoke-virtual {p2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 343
    .line 344
    .line 345
    :cond_5
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    return-object p1
.end method

.method private getUrlFromToken(Ljava/lang/String;)Lcom/meishu/sdk/core/utils/h1;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "\\|"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    aget-object p1, p1, v0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/g1;->a(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/google/gson/Gson;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class v2, Lcom/meishu/sdk/core/utils/h1;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/meishu/sdk/core/utils/h1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method private handleCsj(Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSdk()[Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "CSJ-GM"

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCsjGM(Z)V

    .line 27
    .line 28
    .line 29
    sput-boolean v3, Lcom/meishu/sdk/core/utils/k0;->b:Z

    .line 30
    .line 31
    const-string v4, "CSJ"

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "bidding"

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    const-string v4, "price"

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setOtype(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCsjGMBidding(Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method private handleDynamicClick(Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 2

    .line 1
    const-string v0, "act_type="

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AdLoader"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->getPower()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->getPtime()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ge v1, v0, :cond_0

    .line 44
    .line 45
    sget-object v0, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method private handleTimeout()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/core/loader/c;->isLoadTimeout:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/meishu/sdk/core/loader/c;->isLoadSucc:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/c;->getFetchDelay()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x1f4

    .line 21
    .line 22
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getTo()I

    .line 39
    .line 40
    .line 41
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-ltz v1, :cond_0

    .line 43
    .line 44
    move v0, v1

    .line 45
    :catchall_0
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/meishu/sdk/core/loader/c$b;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/loader/c$b;-><init>(Lcom/meishu/sdk/core/loader/c;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/c;->getFetchDelay()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr v3, v0

    .line 59
    int-to-long v3, v3

    .line 60
    invoke-virtual {v1, v2, v3, v4}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public static isSupportTurn()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/loader/c;->checkSupport:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "false"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/meishu/sdk/core/loader/c;->checkSupport:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "shake_act_type"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "true"

    .line 43
    .line 44
    sput-object v0, Lcom/meishu/sdk/core/loader/c;->checkSupport:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sput-object v1, Lcom/meishu/sdk/core/loader/c;->checkSupport:Ljava/lang/String;

    .line 48
    .line 49
    :cond_2
    :goto_0
    sget-object v0, Lcom/meishu/sdk/core/loader/c;->checkSupport:Ljava/lang/String;

    .line 50
    .line 51
    return-object v0
.end method

.method private loadAd(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/meishu/sdk/core/loader/c$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/meishu/sdk/core/loader/c$g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadGDTAD(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getdUrl()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    new-instance v1, Lcom/meishu/sdk/core/loader/c$f;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/core/loader/c$f;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meishu/sdk/core/utils/z;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private onLoadSuccess([BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/loader/c;->decryptBody([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->fromJson(Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdType;)Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/meishu/sdk/core/loader/c;->T10:J

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "meishuAdInfo is null"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setPid(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setLoadedTime(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_appid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lcom/meishu/sdk/core/loader/c;->saveWxAppid(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTarget_type()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x1

    .line 53
    if-ne v0, v1, :cond_1

    .line 54
    .line 55
    const-string v0, "GDT"

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/c;->loadGDTAD(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/c;->loadAd(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private preLoadVideo(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/loader/c;->getUrlFromToken(Ljava/lang/String;)Lcom/meishu/sdk/core/utils/h1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private retryNet(Lokhttp3/Request;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/loader/c$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/core/loader/c$c;-><init>(Lcom/meishu/sdk/core/loader/c;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Lokhttp3/Request;Lcom/meishu/sdk/core/utils/y;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private saveLoadRecord(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object p2, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    sget-object p2, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 4
    .line 5
    new-instance v0, Lcom/meishu/sdk/core/loader/c$e;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/loader/c$e;-><init>(Lcom/meishu/sdk/core/loader/c;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private saveWxAppid(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "wx_appid"

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private wrapParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/meishu/sdk/core/loader/AdParallelLoader;->wrapParams(Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, p0, Lcom/meishu/sdk/core/loader/c;->T3:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x3

    .line 19
    .line 20
    div-long/2addr v0, v2

    .line 21
    mul-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x1

    .line 23
    .line 24
    add-long/2addr v0, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v5, Lcom/meishu/sdk/core/loader/c;->hashParams:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    if-eqz v5, :cond_0

    .line 76
    .line 77
    :try_start_2
    const-string v5, "MD5"

    .line 78
    .line 79
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v5}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    :catch_1
    :cond_0
    :try_start_3
    const-string v5, "pid"

    .line 100
    .line 101
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, "="

    .line 136
    .line 137
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_2
    move-exception p1

    .line 152
    goto :goto_1

    .line 153
    :cond_2
    const-string p1, "5317f4377245bfb8efdc42c45d71bd43"

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v3, "message"

    .line 170
    .line 171
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const/4 v4, 0x2

    .line 180
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v1, "nonce"

    .line 188
    .line 189
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const-string v0, "signature"

    .line 193
    .line 194
    const-string v1, "SHA-256"

    .line 195
    .line 196
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string v3, "&"

    .line 201
    .line 202
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 219
    .line 220
    .line 221
    return-object p1

    .line 222
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :cond_3
    const/4 p1, 0x0

    .line 226
    return-object p1
.end method


# virtual methods
.method public clearErrorState()V
    .locals 0

    return-void
.end method

.method public abstract createDelegate(Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
.end method

.method public abstract createMeishuAdDelegate(Landroid/content/Context;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->loaderManager:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->d:Lcom/meishu/sdk/core/loader/strategy/a;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    check-cast v0, Lcom/meishu/sdk/core/loader/strategy/e;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/meishu/sdk/core/loader/strategy/e;->l:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/core/loader/strategy/e;->t:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_3

    .line 28
    .line 29
    iget-object v1, v0, Lcom/meishu/sdk/core/loader/strategy/e;->t:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/meishu/sdk/core/loader/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    :try_start_1
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/IAdLoader;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    .line 54
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->t:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method public getAccept_ad_height()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAccept_ad_width()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdType()Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->BANNER:Lcom/meishu/sdk/core/ad/AdType;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_2
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_3
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->PASTER:Lcom/meishu/sdk/core/ad/AdType;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_4
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_5
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->DRAW:Lcom/meishu/sdk/core/ad/AdType;

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_6
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_7
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFetchDelay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->loaderListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getT1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/loader/c;->T1:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public handleNoAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c;->loaderListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/meishu/sdk/core/loader/c$h;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/core/loader/c$h;-><init>(Lcom/meishu/sdk/core/loader/c;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c;->context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/c;->loaderListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    return-void
.end method

.method public loadAd()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public loadAd(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "KEY_TOKEN"

    const-string v1, "AdType is null\uff01"

    const-string v2, "pid\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_0

    .line 3
    :try_start_1
    const-string p1, "meishusdk"

    const-string v0, "SDK IS NOT INITED \uff01"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    const-string p1, "SDK IS NOT INITED\uff01"

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_5

    .line 5
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/meishu/sdk/core/loader/c;->startLoadTime:J

    .line 6
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;->asynGetDns()V

    .line 7
    sget-boolean v3, Lcom/meishu/sdk/core/utils/j;->b:Z

    .line 8
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/meishu/sdk/core/utils/j;->b(Landroid/content/Context;)V

    .line 9
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v5, "AdLoader"

    if-eqz v4, :cond_1

    .line 10
    :try_start_3
    invoke-static {v5, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 12
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/c;->getAdType()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v6, :cond_2

    .line 13
    :try_start_5
    invoke-static {v5, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    .line 15
    :cond_2
    :try_start_6
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;->handleTimeout()V

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/c;->clearErrorState()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meishu/sdk/core/loader/c;->T1:J

    .line 18
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    sget-object v1, Lcom/meishu/sdk/core/loader/c;->adCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    sget-object v1, Lcom/meishu/sdk/core/loader/c;->adTypeCounter:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    invoke-static/range {v4 .. v10}, Lcom/meishu/sdk/core/utils/y0;->b(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdType;JJ)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meishu/sdk/core/loader/c;->generateParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 19
    const-string v2, "msec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/meishu/sdk/core/loader/c;->startLoadTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 20
    :try_start_7
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    const-string v2, "token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0, v0}, Lcom/meishu/sdk/core/loader/c;->preLoadVideo(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v3, :cond_4

    .line 25
    :try_start_9
    sget-object v3, Lcom/meishu/sdk/core/utils/d$b;->a:Lcom/meishu/sdk/core/utils/d;

    .line 26
    invoke-virtual {v3, v2, v0}, Lcom/meishu/sdk/core/utils/d;->a(ZZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 27
    :cond_4
    :try_start_a
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-nez v3, :cond_5

    .line 28
    :try_start_b
    const-string v3, "channel"

    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 29
    :cond_5
    :try_start_c
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/MSAdConfig;->getCanUseSdkPersonalRecommend()Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    const-string v4, "impersonal"

    if-eqz v3, :cond_6

    .line 30
    :try_start_d
    const-string v3, "0"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_1

    .line 31
    :cond_6
    :try_start_e
    const-string v3, "1"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/meishu/sdk/core/loader/c;->T2:J

    .line 33
    sget-object v3, Lcom/meishu/sdk/core/loader/c;->cryptCipher:Ljavax/crypto/Cipher;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    if-eqz v3, :cond_7

    .line 34
    :try_start_f
    const-string v3, "gzip_crypt_key"

    sget-object v4, Lcom/meishu/sdk/core/loader/c;->cryptKeyStr:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 35
    :cond_7
    :try_start_10
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v3, "MS-SDK-Version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "sdk_version"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-direct {p0, v1}, Lcom/meishu/sdk/core/loader/c;->wrapParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    sget-object v3, Lcom/meishu/sdk/core/loader/c;->queryParams:[Ljava/lang/String;

    array-length v4, v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move v8, v0

    :goto_2
    if-ge v8, v4, :cond_9

    :try_start_11
    aget-object v9, v3, v8

    .line 41
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 42
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 43
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 44
    :cond_9
    :try_start_12
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/meishu/sdk/core/loader/c;->saveLoadRecord(Ljava/lang/String;I)V

    .line 45
    const-string v1, "http://sdk.1rtb.net/sdk/req_ad"

    .line 46
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/MSAdConfig;->secure()I

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    if-eq v3, v2, :cond_a

    :try_start_13
    sget v3, Lcom/meishu/sdk/core/utils/r0;->l:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    if-ne v3, v2, :cond_b

    .line 47
    :cond_a
    :try_start_14
    const-string v1, "https://sdk.1rtb.net/sdk/req_ad"

    .line 48
    :cond_b
    invoke-direct {p0, v1, v5, v6, v7}, Lcom/meishu/sdk/core/loader/c;->getRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object v1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/meishu/sdk/core/loader/c;->T8:J

    .line 50
    new-instance v3, Lcom/meishu/sdk/core/loader/c$a;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    move-object v4, p0

    move-object v8, p1

    :try_start_15
    invoke-direct/range {v3 .. v8}, Lcom/meishu/sdk/core/loader/c$a;-><init>(Lcom/meishu/sdk/core/loader/c;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v1, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Lokhttp3/Request;Lcom/meishu/sdk/core/utils/y;)V

    .line 51
    sget p1, Lcom/meishu/sdk/core/utils/r0;->s:I

    if-nez p1, :cond_e

    .line 52
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->isTest()Z

    move-result v1

    if-eqz v1, :cond_c

    move v0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_5

    .line 53
    :cond_c
    :goto_4
    sget-boolean v1, Lcom/meishu/sdk/core/exception/a;->b:Z

    if-nez v1, :cond_d

    goto :goto_6

    .line 54
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 55
    instance-of v2, v1, Lcom/meishu/sdk/core/exception/a$b;

    if-nez v2, :cond_e

    .line 56
    new-instance v2, Lcom/meishu/sdk/core/exception/a$b;

    invoke-direct {v2, p1, v0, v1}, Lcom/meishu/sdk/core/exception/a$b;-><init>(Landroid/content/Context;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v4, p0

    goto :goto_3

    .line 57
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    :cond_e
    :goto_6
    return-void
.end method
