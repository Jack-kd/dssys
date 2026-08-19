.class public Lorg/fourthline/cling/model/ServerClientTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNKNOWN_PLACEHOLDER:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private majorVersion:I

.field private minorVersion:I

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 4
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 5
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 6
    const-string v0, "Cling"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 7
    const-string v0, "2.0"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 11
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 12
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 13
    const-string v0, "Cling"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 14
    const-string v0, "2.0"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 15
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 16
    iput p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 27
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 28
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 30
    iput p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 31
    iput-object p3, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 20
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 21
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/ServerClientTokens;

    .line 20
    .line 21
    iget v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 22
    .line 23
    iget v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 29
    .line 30
    iget v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    return v1

    .line 46
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_5

    .line 55
    .line 56
    return v1

    .line 57
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_6

    .line 66
    .line 67
    return v1

    .line 68
    :cond_6
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p1, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_7

    .line 77
    .line 78
    return v1

    .line 79
    :cond_7
    return v0

    .line 80
    :cond_8
    :goto_0
    return v1
.end method

.method public getHttpToken()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v2, 0x20

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v3, 0x5f

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-eq v1, v4, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x2f

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eq v5, v4, :cond_1

    .line 45
    .line 46
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 54
    .line 55
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, " UPnP/"

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v5, 0x2e

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eq v5, v4, :cond_2

    .line 88
    .line 89
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 97
    .line 98
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eq v1, v4, :cond_3

    .line 111
    .line 112
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 120
    .line 121
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsToken()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, " "

    .line 11
    .line 12
    const-string v3, "_"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "/"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProductToken()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, " "

    .line 11
    .line 12
    const-string v3, "_"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "/"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    return v0
.end method

.method public setMajorVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " UPnP/"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMajorVersion()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "."

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMinorVersion()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
