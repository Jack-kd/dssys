.class public final Lorg/seamless/util/io/HexBin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASELENGTH:I = 0xff

.field private static final LOOKUPLENGTH:I = 0x10

.field private static hexNumberTable:[B

.field private static lookUpHexAlphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    sput-object v1, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    sput-object v1, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    sget-object v3, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    aput-byte v4, v3, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x39

    .line 26
    .line 27
    :goto_1
    const/16 v2, 0x30

    .line 28
    .line 29
    if-lt v0, v2, :cond_1

    .line 30
    .line 31
    sget-object v2, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 32
    .line 33
    add-int/lit8 v3, v0, -0x30

    .line 34
    .line 35
    int-to-byte v3, v3

    .line 36
    aput-byte v3, v2, v0

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v0, 0x46

    .line 42
    .line 43
    :goto_2
    const/16 v2, 0x41

    .line 44
    .line 45
    if-lt v0, v2, :cond_2

    .line 46
    .line 47
    sget-object v2, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 48
    .line 49
    add-int/lit8 v3, v0, -0x37

    .line 50
    .line 51
    int-to-byte v3, v3

    .line 52
    aput-byte v3, v2, v0

    .line 53
    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v0, 0x66

    .line 58
    .line 59
    :goto_3
    const/16 v2, 0x61

    .line 60
    .line 61
    if-lt v0, v2, :cond_3

    .line 62
    .line 63
    sget-object v2, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 64
    .line 65
    add-int/lit8 v3, v0, -0x57

    .line 66
    .line 67
    int-to-byte v3, v3

    .line 68
    aput-byte v3, v2, v0

    .line 69
    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_4
    const/16 v0, 0xa

    .line 74
    .line 75
    if-ge v1, v0, :cond_4

    .line 76
    .line 77
    sget-object v0, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    .line 78
    .line 79
    add-int/lit8 v2, v1, 0x30

    .line 80
    .line 81
    int-to-byte v2, v2

    .line 82
    aput-byte v2, v0, v1

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    :goto_5
    const/16 v1, 0xf

    .line 88
    .line 89
    if-gt v0, v1, :cond_5

    .line 90
    .line 91
    sget-object v1, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    .line 92
    .line 93
    add-int/lit8 v2, v0, 0x37

    .line 94
    .line 95
    int-to-byte v2, v2

    .line 96
    aput-byte v2, v1, v0

    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
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

.method public static bytesToString([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v5, v0, v3

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->decode([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    return-object v0
.end method

.method public static decode([B)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p0

    .line 2
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    return-object v0

    .line 3
    :cond_1
    div-int/lit8 v1, v1, 0x2

    .line 4
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    mul-int/lit8 v4, v3, 0x2

    .line 5
    aget-byte v5, p0, v4

    invoke-static {v5}, Lorg/seamless/util/io/HexBin;->isHex(B)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p0, v5

    invoke-static {v6}, Lorg/seamless/util/io/HexBin;->isHex(B)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v6, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    aget-byte v4, p0, v4

    aget-byte v4, v6, v4

    shl-int/lit8 v4, v4, 0x4

    aget-byte v5, p0, v5

    aget-byte v5, v6, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object v2
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->encode([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    return-object v0
.end method

.method public static encode([B)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 3
    sget-object v4, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v4, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 4
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static isHex(B)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 2
    .line 3
    aget-byte p0, v0, p0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 2
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->decode([B)[B

    move-result-object p0

    return-object p0
.end method
