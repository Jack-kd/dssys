.class public abstract Lorg/eclipse/jetty/util/Utf8Appendable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    }
.end annotation


# static fields
.field public static final d:LR1/c;

.field public static final e:[B

.field public static final f:[B


# instance fields
.field public final a:Ljava/lang/Appendable;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/util/Utf8Appendable;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->d:LR1/c;

    .line 8
    .line 9
    const/16 v0, 0x100

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->e:[B

    .line 17
    .line 18
    const/16 v0, 0x6c

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_1

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->f:[B

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    .line 30
    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable;->c(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public b([BII)V
    .locals 1

    .line 1
    add-int/2addr p3, p2

    .line 2
    :goto_0
    if-ge p2, p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    aget-byte v0, p1, p2

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;->c(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p2

    .line 19
    :cond_0
    return-void
.end method

.method public c(B)V
    .locals 4

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 10
    .line 11
    and-int/2addr p1, v0

    .line 12
    int-to-char p1, p1

    .line 13
    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    and-int/lit16 v1, p1, 0xff

    .line 18
    .line 19
    sget-object v2, Lorg/eclipse/jetty/util/Utf8Appendable;->e:[B

    .line 20
    .line 21
    aget-byte v2, v2, v1

    .line 22
    .line 23
    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    shr-int/2addr v0, v2

    .line 28
    and-int/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    .line 31
    .line 32
    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 33
    .line 34
    shl-int/lit8 v1, v1, 0x6

    .line 35
    .line 36
    or-int/2addr v0, v1

    .line 37
    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 38
    .line 39
    sget-object v1, Lorg/eclipse/jetty/util/Utf8Appendable;->f:[B

    .line 40
    .line 41
    add-int/2addr v3, v2

    .line 42
    aget-byte v1, v1, v3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/16 v0, 0xc

    .line 48
    .line 49
    if-eq v1, v0, :cond_2

    .line 50
    .line 51
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "byte "

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lorg/eclipse/jetty/util/n;->h(B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " in state "

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 77
    .line 78
    div-int/2addr p1, v0

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput v2, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 87
    .line 88
    iput v2, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 89
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 91
    .line 92
    const v1, 0xfffd

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 96
    .line 97
    .line 98
    new-instance v0, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 105
    .line 106
    const p1, 0xd800

    .line 107
    .line 108
    .line 109
    if-ge v0, p1, :cond_4

    .line 110
    .line 111
    iget-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 112
    .line 113
    int-to-char v0, v0

    .line 114
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    array-length v0, p1

    .line 123
    :goto_1
    if-ge v2, v0, :cond_5

    .line 124
    .line 125
    aget-char v1, p1, v2

    .line 126
    .line 127
    iget-object v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 128
    .line 129
    invoke-interface {v3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 10
    .line 11
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 14
    .line 15
    const v1, 0xfffd

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    new-instance v0, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    .line 22
    .line 23
    const-string v1, "incomplete UTF8 sequence"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 3
    .line 4
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 9
    .line 10
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:I

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 13
    .line 14
    const v2, 0xfffd

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    new-instance v1, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    .line 21
    .line 22
    const-string v2, "incomplete UTF8 sequence"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Lorg/eclipse/jetty/util/Utf8Appendable;->d:LR1/c;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {v2, v3, v0}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v1}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
