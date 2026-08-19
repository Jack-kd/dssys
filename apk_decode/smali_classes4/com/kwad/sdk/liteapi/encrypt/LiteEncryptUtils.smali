.class public Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final KEY_AES:Ljava/lang/String; = "aes_key"

.field public static final KEY_PRIVATE:Ljava/lang/String; = "rsa_private_key"

.field public static final KEY_PUBLISH:Ljava/lang/String; = "rsa_public_key"

.field public static final TAG:Ljava/lang/String; = "EncryptUtils"

.field private static sAESKey:Ljava/lang/String; = ""

.field private static sRSEPrivateKey:Ljava/lang/String; = ""

.field private static sRSEPublicKey:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "ksad_common_encrypt_image.png"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, ""

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    if-eq p1, v2, :cond_1

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    move-object v5, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v4, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->sRSEPrivateKey:Ljava/lang/String;

    .line 17
    .line 18
    const-string v5, "rsa_private_key"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v4, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->sRSEPublicKey:Ljava/lang/String;

    .line 22
    .line 23
    const-string v5, "rsa_public_key"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    sget-object v4, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->sAESKey:Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "aes_key"

    .line 29
    .line 30
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_3

    .line 35
    .line 36
    return-object v4

    .line 37
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-string v6, "EncryptUtils"

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    const-string v4, "EncryptUtils getKey get id is error "

    .line 46
    .line 47
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v4

    .line 64
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v8, "EncryptUtils getKey get InputStream from loader is null,  e: "

    .line 67
    .line 68
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_1
    if-nez v4, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :cond_5
    invoke-static {v5, v4}, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->readKey(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    const-string v0, "EncryptUtils getKey get encryptedKey is invalid "

    .line 103
    .line 104
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_6
    if-eqz p1, :cond_9

    .line 108
    .line 109
    if-eq p1, v2, :cond_8

    .line 110
    .line 111
    if-eq p1, v1, :cond_7

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    sput-object p0, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->sRSEPrivateKey:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    sput-object p0, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->sRSEPublicKey:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    sput-object p0, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;->sAESKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .line 122
    :goto_2
    return-object p0

    .line 123
    :catchall_1
    return-object v3
.end method

.method public static readKey(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/liteapi/encrypt/LiteEncryptUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/kwad/sdk/pngencrypt/o;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {v1, p1, v2}, Lcom/kwad/sdk/pngencrypt/o;-><init>(Ljava/io/InputStream;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/o;->Tk()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/o;->Tj()Lcom/kwad/sdk/pngencrypt/chunk/w;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/kwad/sdk/pngencrypt/chunk/w;->hu(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/o;->end()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
