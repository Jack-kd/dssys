.class public Lcom/meishu/sdk/core/loader/AdParallelLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/math/BigInteger;

.field public static b:Ljava/math/BigInteger;

.field public static c:Ljava/security/SecureRandom;

.field public static final d:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/meishu/sdk/core/loader/AdParallelLoader;->a:Ljava/math/BigInteger;

    .line 14
    .line 15
    new-instance v0, Ljava/math/BigInteger;

    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/meishu/sdk/core/loader/AdParallelLoader;->b:Ljava/math/BigInteger;

    .line 28
    .line 29
    new-instance v0, Ljava/security/SecureRandom;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/meishu/sdk/core/loader/AdParallelLoader;->c:Ljava/security/SecureRandom;

    .line 35
    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/meishu/sdk/core/loader/AdParallelLoader;->d:Lcom/google/gson/Gson;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 1
        -0x3et
        -0x2et
        -0x28t
        0x45t
        -0x1bt
        0x76t
        0x21t
        -0x48t
        -0x4ct
        -0x46t
        -0x2ft
        -0x50t
        0xdt
        0x2at
        0x2ct
        -0x6bt
        0x4dt
        -0x58t
        -0x48t
        -0x43t
        0x79t
        0x1bt
        -0x7et
        -0x48t
        -0x60t
        -0x7bt
        -0x34t
        0x26t
        -0x45t
        -0x2ct
        0x6et
        0x2et
        -0x4et
        0x7ct
        0x14t
        0x3et
        -0x58t
        0x32t
        -0x21t
        0x15t
        -0x12t
        0x75t
        -0x5ft
        -0x2dt
        -0x42t
        -0x32t
        -0x75t
        -0x1at
        -0x4ct
        0x38t
        0x24t
        0x72t
        -0x46t
        0x65t
        0x16t
        0x44t
        -0x57t
        -0x7bt
        -0x6dt
        0x4t
        -0x6dt
        -0x64t
        -0x79t
        0x4dt
    .end array-data
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

.method public static a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/meishu/sdk/core/loader/AdParallelLoader$a;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/meishu/sdk/core/loader/AdParallelLoader$a;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static b([B)[B
    .locals 8

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    array-length v2, p0

    .line 6
    rsub-int/lit8 v3, v2, 0x40

    .line 7
    .line 8
    rsub-int/lit8 v2, v2, 0x3f

    .line 9
    .line 10
    array-length v4, p0

    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-static {p0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    aput-byte v5, v1, v5

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    const/4 v3, 0x2

    .line 19
    aput-byte v3, v1, p0

    .line 20
    .line 21
    aput-byte v5, v1, v2

    .line 22
    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    add-int/lit8 v4, v3, 0x1

    .line 26
    .line 27
    sget-object v6, Lcom/meishu/sdk/core/loader/AdParallelLoader;->c:Ljava/security/SecureRandom;

    .line 28
    .line 29
    const/16 v7, 0xff

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    add-int/2addr v6, p0

    .line 36
    int-to-byte v6, v6

    .line 37
    aput-byte v6, v1, v3

    .line 38
    .line 39
    move v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    .line 42
    .line 43
    invoke-direct {v2, p0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lcom/meishu/sdk/core/loader/AdParallelLoader;->a:Ljava/math/BigInteger;

    .line 47
    .line 48
    sget-object v3, Lcom/meishu/sdk/core/loader/AdParallelLoader;->b:Ljava/math/BigInteger;

    .line 49
    .line 50
    invoke-virtual {v2, p0, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 59
    .line 60
    const-string v3, "L="

    .line 61
    .line 62
    invoke-static {v3}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    array-length v4, p0

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    array-length v2, p0

    .line 78
    if-ne v2, v0, :cond_1

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_1
    array-length v2, p0

    .line 82
    if-le v2, v0, :cond_2

    .line 83
    .line 84
    array-length v1, p0

    .line 85
    sub-int/2addr v1, v0

    .line 86
    array-length v0, p0

    .line 87
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_2
    array-length v2, p0

    .line 93
    sub-int/2addr v0, v2

    .line 94
    array-length v2, p0

    .line 95
    invoke-static {p0, v5, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    move p0, v5

    .line 99
    :goto_1
    if-ge p0, v0, :cond_3

    .line 100
    .line 101
    add-int/lit8 v2, p0, 0x1

    .line 102
    .line 103
    aput-byte v5, v1, p0

    .line 104
    .line 105
    move p0, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    return-object v1
.end method

.method public static wrapParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
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
    sget-object v0, Lcom/meishu/sdk/core/loader/AdParallelLoader;->d:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/meishu/sdk/core/loader/AdParallelLoader;->wrapParams([B)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static wrapParams([B)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    const-string v0, "enc"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    div-long/2addr v1, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 7
    array-length v3, p0

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 8
    array-length v4, p0

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v4, "nonce"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/meishu/sdk/core/loader/AdParallelLoader;->b([B)[B

    move-result-object v3

    .line 13
    const-string v4, "signature"

    const/16 v5, 0xa

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-static {p0}, Lcom/meishu/sdk/core/loader/AdParallelLoader;->a([B)[B

    move-result-object v3

    .line 15
    const-string v4, "3"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, v3

    goto :goto_0

    .line 16
    :catch_0
    :try_start_2
    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/16 v0, 0x10

    .line 17
    new-array v3, v0, [B

    .line 18
    sget-object v4, Lcom/meishu/sdk/core/loader/AdParallelLoader;->c:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 19
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 20
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 21
    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 22
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 23
    array-length p0, p0

    invoke-static {v3, v6, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    const-string p0, "message"

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
