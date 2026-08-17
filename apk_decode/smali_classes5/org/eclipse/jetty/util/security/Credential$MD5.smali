.class public Lorg/eclipse/jetty/util/security/Credential$MD5;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field private static __md:Ljava/security/MessageDigest; = null

.field public static final __md5Lock:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x4ccc2c1bfb42a250L


# instance fields
.field private final _digest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MD5:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    const/16 v0, 0x10

    .line 18
    .line 19
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/n;->d(Ljava/lang/String;I)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 24
    .line 25
    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    :try_start_2
    const-string v2, "MD5"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sput-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()LR1/c;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, p0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-object v0

    .line 30
    :cond_0
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 36
    .line 37
    const-string v3, "ISO-8859-1"

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "MD5:"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x10

    .line 64
    .line 65
    invoke-static {p0, v2}, Lorg/eclipse/jetty/util/n;->j([BI)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 76
    return-object p0

    .line 77
    :catch_1
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 81
    :goto_2
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()LR1/c;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v1, p0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    instance-of v1, p1, [C

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, [C

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 11
    .line 12
    .line 13
    move-object p1, v1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    :goto_0
    instance-of v1, p1, Lorg/eclipse/jetty/util/security/Password;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_7

    .line 22
    .line 23
    instance-of v1, p1, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    instance-of v1, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    check-cast p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    .line 33
    .line 34
    iget-object v1, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 35
    .line 36
    array-length v1, v1

    .line 37
    iget-object v3, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 38
    .line 39
    array-length v3, v3

    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    move v1, v0

    .line 44
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 45
    .line 46
    array-length v4, v3

    .line 47
    if-ge v1, v4, :cond_4

    .line 48
    .line 49
    aget-byte v3, v3, v1

    .line 50
    .line 51
    iget-object v4, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 52
    .line 53
    aget-byte v4, v4, v1

    .line 54
    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    return v0

    .line 58
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    return v2

    .line 62
    :cond_5
    instance-of v1, p1, Lorg/eclipse/jetty/util/security/Credential;

    .line 63
    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    check-cast p1, Lorg/eclipse/jetty/util/security/Credential;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_6
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()LR1/c;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "Can\'t check "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " against MD5"

    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-array v2, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-interface {v1, p1, v2}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return v0

    .line 109
    :cond_7
    :goto_2
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 113
    .line 114
    if-nez v3, :cond_8

    .line 115
    .line 116
    const-string v3, "MD5"

    .line 117
    .line 118
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    sput-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto :goto_6

    .line 127
    :cond_8
    :goto_3
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 130
    .line 131
    .line 132
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v4, "ISO-8859-1"

    .line 139
    .line 140
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    .line 146
    .line 147
    sget-object p1, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    if-eqz p1, :cond_c

    .line 155
    .line 156
    :try_start_2
    array-length v1, p1

    .line 157
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 158
    .line 159
    array-length v3, v3

    .line 160
    if-eq v1, v3, :cond_9

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_9
    move v1, v0

    .line 164
    :goto_4
    array-length v3, p1

    .line 165
    if-ge v1, v3, :cond_b

    .line 166
    .line 167
    aget-byte v3, p1, v1

    .line 168
    .line 169
    iget-object v4, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 170
    .line 171
    aget-byte v4, v4, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .line 173
    if-eq v3, v4, :cond_a

    .line 174
    .line 175
    return v0

    .line 176
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_b
    return v2

    .line 180
    :cond_c
    :goto_5
    return v0

    .line 181
    :goto_6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 183
    :goto_7
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()LR1/c;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {v1, p1}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    return v0
.end method

.method public getDigest()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 2
    .line 3
    return-object v0
.end method
