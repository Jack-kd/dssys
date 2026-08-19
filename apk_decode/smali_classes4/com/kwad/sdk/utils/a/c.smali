.class public final Lcom/kwad/sdk/utils/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/a/c$a;,
        Lcom/kwad/sdk/utils/a/c$c;,
        Lcom/kwad/sdk/utils/a/c$b;,
        Lcom/kwad/sdk/utils/a/c$d;,
        Lcom/kwad/sdk/utils/a/c$e;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I

.field private static final brN:[I

.field private static final brO:[B

.field private static final brP:I

.field private static final brQ:I

.field private static final brR:I


# instance fields
.field private final apn:Ljava/lang/String;

.field private final brS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/a/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final brT:Lcom/kwad/sdk/utils/a/c$d;

.field private brU:Ljava/nio/channels/FileChannel;

.field private brV:Ljava/nio/channels/FileChannel;

.field private brW:Ljava/io/RandomAccessFile;

.field private brX:Ljava/io/RandomAccessFile;

.field private brY:Ljava/nio/MappedByteBuffer;

.field private brZ:Ljava/nio/MappedByteBuffer;

.field private bsa:Lcom/kwad/sdk/utils/a/b;

.field private bsb:I

.field private bsc:J

.field private final bsd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private bse:Z

.field private bsf:I

.field private bsg:I

.field private bsh:I

.field private bsi:Z

.field private bsj:Ljava/lang/String;

.field private bsk:I

.field private final bsl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/utils/a/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private bsm:I

.field private bsn:Z

.field private final bso:Ljava/util/concurrent/Executor;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/sdk/utils/a/c;->brN:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    sput-object v0, Lcom/kwad/sdk/utils/a/c;->brO:[B

    .line 13
    .line 14
    invoke-static {}, Lcom/kwad/sdk/utils/a/h;->XF()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 19
    .line 20
    add-int/lit16 v1, v0, -0xc0

    .line 21
    .line 22
    sput v1, Lcom/kwad/sdk/utils/a/c;->brP:I

    .line 23
    .line 24
    shl-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    const/16 v1, 0x4000

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Lcom/kwad/sdk/utils/a/c;->brQ:I

    .line 33
    .line 34
    shl-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    sput v0, Lcom/kwad/sdk/utils/a/c;->brR:I

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x4
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/kwad/sdk/utils/a/c$b;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/kwad/sdk/utils/a/d;->bsx:Lcom/kwad/sdk/utils/a/c$d;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brT:Lcom/kwad/sdk/utils/a/c$d;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/kwad/sdk/utils/a/c;->bse:Z

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/kwad/sdk/utils/a/c;->bsn:Z

    .line 27
    .line 28
    new-instance v1, Lcom/kwad/sdk/utils/a/f;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/f;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bso:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 38
    .line 39
    iput p4, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 40
    .line 41
    new-instance p1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object p2, Lcom/kwad/sdk/utils/a/g;->bsE:Lcom/kwad/sdk/utils/a/g;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/kwad/sdk/utils/a/g;->XD()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    array-length p2, p3

    .line 58
    if-lez p2, :cond_1

    .line 59
    .line 60
    array-length p2, p3

    .line 61
    :goto_0
    if-ge v0, p2, :cond_1

    .line 62
    .line 63
    aget-object p4, p3, v0

    .line 64
    .line 65
    invoke-interface {p4}, Lcom/kwad/sdk/utils/a/c$b;->XD()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    new-instance p4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "duplicate encoder tag:"

    .line 78
    .line 79
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-direct {p0, p4}, Lcom/kwad/sdk/utils/a/c;->iy(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-interface {p1, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brS:Ljava/util/Map;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 102
    .line 103
    monitor-enter p1

    .line 104
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/utils/a/d;->getExecutor()Ljava/util/concurrent/Executor;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    new-instance p3, Lcom/kwad/sdk/utils/a/c$1;

    .line 109
    .line 110
    invoke-direct {p3, p0}, Lcom/kwad/sdk/utils/a/c$1;-><init>(Lcom/kwad/sdk/utils/a/c;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    :catch_0
    :goto_2
    iget-boolean p2, p0, Lcom/kwad/sdk/utils/a/c;->bse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    if-nez p2, :cond_2

    .line 119
    .line 120
    :try_start_1
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception p2

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    :try_start_2
    monitor-exit p1

    .line 129
    return-void

    .line 130
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    throw p2
.end method

.method private M(II)I
    .locals 2

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    if-le p2, v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    const-string v1, "data size out of limit"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/kwad/library/a/a;->pe:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    throw v0

    .line 25
    :cond_1
    :goto_0
    sget v0, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 26
    .line 27
    if-gt p2, v0, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    :goto_1
    if-ge p1, p2, :cond_4

    .line 31
    .line 32
    sget v0, Lcom/kwad/sdk/utils/a/c;->brQ:I

    .line 33
    .line 34
    if-gt p1, v0, :cond_3

    .line 35
    .line 36
    shl-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    add-int/2addr p1, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_4
    return p1
.end method

.method private N(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsk:I

    .line 2
    .line 3
    sub-int v1, p2, p1

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/kwad/sdk/utils/a/c;->bsk:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/sdk/utils/a/c$e;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Lcom/kwad/sdk/utils/a/c$e;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private XA()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/kwad/sdk/utils/a/c$e;

    .line 19
    .line 20
    :goto_0
    if-lez v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 23
    .line 24
    add-int/lit8 v3, v0, -0x1

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/kwad/sdk/utils/a/c$e;

    .line 31
    .line 32
    iget v4, v1, Lcom/kwad/sdk/utils/a/c$e;->start:I

    .line 33
    .line 34
    iget v5, v2, Lcom/kwad/sdk/utils/a/c$e;->end:I

    .line 35
    .line 36
    if-ne v4, v5, :cond_1

    .line 37
    .line 38
    iget v1, v1, Lcom/kwad/sdk/utils/a/c$e;->end:I

    .line 39
    .line 40
    iput v1, v2, Lcom/kwad/sdk/utils/a/c$e;->end:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    move-object v1, v2

    .line 48
    move v0, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method private XB()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/sdk/utils/a/c;->bsk:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private declared-synchronized Xk()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p0, Lcom/kwad/sdk/utils/a/c;->bse:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xn()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xl()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    new-instance v2, Lcom/kwad/sdk/utils/a/b;

    .line 39
    .line 40
    sget v3, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 46
    .line 47
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->brT:Lcom/kwad/sdk/utils/a/c$d;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    sub-long/2addr v2, v0

    .line 56
    const-wide/32 v0, 0xf4240

    .line 57
    .line 58
    .line 59
    div-long/2addr v2, v0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "loading finish, data len:"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", get keys:"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", use time:"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " ms"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    :cond_2
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :catchall_1
    move-exception v1

    .line 109
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :try_start_4
    throw v1

    .line 111
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    throw v0
.end method

.method private Xl()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "rw"

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v5, ".kva"

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/io/File;

    .line 32
    .line 33
    iget-object v4, v1, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v6, v1, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v6, ".kvb"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {v2}, Lcom/kwad/sdk/utils/a/h;->ag(Ljava/io/File;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_b

    .line 62
    .line 63
    invoke-static {v3}, Lcom/kwad/sdk/utils/a/h;->ag(Ljava/io/File;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_0

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 72
    .line 73
    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object v4, v1, Lcom/kwad/sdk/utils/a/c;->brW:Ljava/io/RandomAccessFile;

    .line 77
    .line 78
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 79
    .line 80
    invoke-direct {v4, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v4, v1, Lcom/kwad/sdk/utils/a/c;->brX:Ljava/io/RandomAccessFile;

    .line 84
    .line 85
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brW:Ljava/io/RandomAccessFile;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brX:Ljava/io/RandomAccessFile;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brW:Ljava/io/RandomAccessFile;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 104
    .line 105
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brX:Ljava/io/RandomAccessFile;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    :try_start_1
    iget-object v8, v1, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 114
    .line 115
    sget-object v9, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 116
    .line 117
    const-wide/16 v14, 0x0

    .line 118
    .line 119
    cmp-long v0, v4, v14

    .line 120
    .line 121
    if-lez v0, :cond_1

    .line 122
    .line 123
    move-wide v12, v4

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    sget v10, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 126
    .line 127
    int-to-long v10, v10

    .line 128
    move-wide v12, v10

    .line 129
    :goto_0
    const-wide/16 v10, 0x0

    .line 130
    .line 131
    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    iput-object v8, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 136
    .line 137
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 138
    .line 139
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    move-object v8, v10

    .line 143
    move-object v10, v9

    .line 144
    iget-object v9, v1, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 145
    .line 146
    cmp-long v15, v6, v14

    .line 147
    .line 148
    if-lez v15, :cond_2

    .line 149
    .line 150
    move-wide v13, v6

    .line 151
    goto :goto_1

    .line 152
    :cond_2
    sget v11, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 153
    .line 154
    int-to-long v11, v11

    .line 155
    move-wide v13, v11

    .line 156
    :goto_1
    const-wide/16 v11, 0x0

    .line 157
    .line 158
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    iput-object v9, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 163
    .line 164
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :try_start_2
    new-instance v2, Lcom/kwad/sdk/utils/a/b;

    .line 168
    .line 169
    iget-object v3, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-direct {v2, v3}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    .line 176
    .line 177
    .line 178
    iput-object v2, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 179
    .line 180
    const/16 v2, 0xc

    .line 181
    .line 182
    if-nez v0, :cond_3

    .line 183
    .line 184
    if-nez v15, :cond_3

    .line 185
    .line 186
    iput v2, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 187
    .line 188
    return-void

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :cond_3
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iget-object v3, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    .line 201
    .line 202
    .line 203
    move-result-wide v8

    .line 204
    iget-object v3, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    iget-object v10, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 211
    .line 212
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    .line 213
    .line 214
    .line 215
    move-result-wide v10

    .line 216
    const/4 v12, 0x0

    .line 217
    if-ltz v0, :cond_6

    .line 218
    .line 219
    const-wide/16 v15, 0xc

    .line 220
    .line 221
    int-to-long v13, v0

    .line 222
    sub-long v17, v4, v15

    .line 223
    .line 224
    cmp-long v13, v13, v17

    .line 225
    .line 226
    if-gtz v13, :cond_5

    .line 227
    .line 228
    add-int/lit8 v13, v0, 0xc

    .line 229
    .line 230
    iput v13, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 231
    .line 232
    iget-object v13, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 233
    .line 234
    invoke-virtual {v13}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 235
    .line 236
    .line 237
    iget-object v13, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 238
    .line 239
    iget-object v14, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 240
    .line 241
    iget-object v14, v14, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 242
    .line 243
    move-wide/from16 v17, v15

    .line 244
    .line 245
    iget v15, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 246
    .line 247
    invoke-virtual {v13, v14, v12, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 248
    .line 249
    .line 250
    iget-object v13, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 251
    .line 252
    invoke-virtual {v13, v2, v0}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 253
    .line 254
    .line 255
    move-result-wide v13

    .line 256
    cmp-long v0, v8, v13

    .line 257
    .line 258
    if-nez v0, :cond_7

    .line 259
    .line 260
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xo()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_7

    .line 265
    .line 266
    iput-wide v8, v1, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 267
    .line 268
    cmp-long v0, v4, v6

    .line 269
    .line 270
    if-nez v0, :cond_4

    .line 271
    .line 272
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xm()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_a

    .line 277
    .line 278
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    .line 279
    .line 280
    const-string v2, "B file error"

    .line 281
    .line 282
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-direct {v1, v0}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 289
    .line 290
    iget-object v2, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 291
    .line 292
    iget v3, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 293
    .line 294
    invoke-direct {v1, v0, v2, v3}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/nio/MappedByteBuffer;Ljava/nio/MappedByteBuffer;I)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_5
    move-wide/from16 v17, v15

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_6
    const-wide/16 v17, 0xc

    .line 302
    .line 303
    :cond_7
    :goto_2
    if-ltz v3, :cond_9

    .line 304
    .line 305
    int-to-long v4, v3

    .line 306
    sub-long v6, v6, v17

    .line 307
    .line 308
    cmp-long v0, v4, v6

    .line 309
    .line 310
    if-gtz v0, :cond_9

    .line 311
    .line 312
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    .line 316
    .line 317
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->XB()V

    .line 318
    .line 319
    .line 320
    add-int/lit8 v0, v3, 0xc

    .line 321
    .line 322
    iput v0, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 323
    .line 324
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 327
    .line 328
    array-length v0, v0

    .line 329
    iget-object v4, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-eq v0, v4, :cond_8

    .line 336
    .line 337
    new-instance v0, Lcom/kwad/sdk/utils/a/b;

    .line 338
    .line 339
    iget-object v4, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    invoke-direct {v0, v4}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    .line 346
    .line 347
    .line 348
    iput-object v0, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 349
    .line 350
    :cond_8
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 353
    .line 354
    .line 355
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 356
    .line 357
    iget-object v4, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 358
    .line 359
    iget-object v4, v4, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 360
    .line 361
    iget v5, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 362
    .line 363
    invoke-virtual {v0, v4, v12, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 364
    .line 365
    .line 366
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 367
    .line 368
    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 369
    .line 370
    .line 371
    move-result-wide v2

    .line 372
    cmp-long v0, v10, v2

    .line 373
    .line 374
    if-nez v0, :cond_9

    .line 375
    .line 376
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xo()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-nez v0, :cond_9

    .line 381
    .line 382
    new-instance v0, Ljava/lang/Exception;

    .line 383
    .line 384
    const-string v2, "A file error"

    .line 385
    .line 386
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-direct {v1, v0}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, v1, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 393
    .line 394
    iget-object v2, v1, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 395
    .line 396
    iget v3, v1, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 397
    .line 398
    invoke-direct {v1, v0, v2, v3}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/nio/MappedByteBuffer;Ljava/nio/MappedByteBuffer;I)V

    .line 399
    .line 400
    .line 401
    iput-wide v10, v1, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 402
    .line 403
    return-void

    .line 404
    :cond_9
    const-string v0, "both files error"

    .line 405
    .line 406
    invoke-direct {v1, v0}, Lcom/kwad/sdk/utils/a/c;->iy(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xu()V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    invoke-direct {v1, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 415
    .line 416
    .line 417
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xt()V

    .line 418
    .line 419
    .line 420
    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/utils/a/c;->j(Ljava/io/File;Ljava/io/File;)V

    .line 421
    .line 422
    .line 423
    :cond_a
    return-void

    .line 424
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/Exception;

    .line 425
    .line 426
    const-string v2, "open file failed"

    .line 427
    .line 428
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-direct {v1, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :goto_4
    invoke-direct {v1, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xv()V

    .line 442
    .line 443
    .line 444
    invoke-direct {v1}, Lcom/kwad/sdk/utils/a/c;->Xt()V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method private Xm()Z
    .locals 6

    .line 1
    new-instance v0, Lcom/kwad/sdk/utils/a/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 19
    .line 20
    iget v4, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 30
    .line 31
    iget-object v0, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 32
    .line 33
    move v3, v2

    .line 34
    :goto_0
    iget v4, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 35
    .line 36
    if-ge v3, v4, :cond_2

    .line 37
    .line 38
    aget-byte v4, v1, v3

    .line 39
    .line 40
    aget-byte v5, v0, v3

    .line 41
    .line 42
    if-eq v4, v5, :cond_1

    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x1

    .line 49
    return v0
.end method

.method private Xn()Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ".kvc"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ".tmp"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    move-object v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->af(Ljava/io/File;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->a(Lcom/kwad/sdk/utils/a/b;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x1

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    const-string v0, "recover from c file"

    .line 92
    .line 93
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .line 95
    .line 96
    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xs()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    move v2, v1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    :try_start_2
    iput v1, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 106
    .line 107
    return v2

    .line 108
    :cond_3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xv()V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xs()V

    .line 112
    .line 113
    .line 114
    return v2

    .line 115
    :cond_4
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    new-instance v0, Ljava/io/File;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, ".kva"

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/io/File;

    .line 146
    .line 147
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    iget-object v5, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v5, ".kvb"

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_5

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_5

    .line 182
    .line 183
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/utils/a/c;->j(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .line 185
    .line 186
    :cond_5
    return v2

    .line 187
    :goto_1
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    return v2
.end method

.method private Xo()I
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    iput v0, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 6
    .line 7
    :goto_0
    const/4 v2, -0x1

    .line 8
    :try_start_0
    iget v4, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 9
    .line 10
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    const-string v3, "parse dara failed"

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ge v4, v0, :cond_12

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->get()B

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    and-int/lit8 v6, v0, 0x3f

    .line 22
    .line 23
    int-to-byte v6, v6

    .line 24
    if-lez v6, :cond_11

    .line 25
    .line 26
    const/16 v7, 0x8

    .line 27
    .line 28
    if-gt v6, v7, :cond_11

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->get()B

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    and-int/lit16 v7, v7, 0xff

    .line 35
    .line 36
    const v8, 0xffff

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x5

    .line 40
    if-gez v0, :cond_1

    .line 41
    .line 42
    iget v0, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 43
    .line 44
    add-int/2addr v0, v7

    .line 45
    iput v0, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 46
    .line 47
    if-gt v6, v9, :cond_0

    .line 48
    .line 49
    sget-object v0, Lcom/kwad/sdk/utils/a/c;->brN:[I

    .line 50
    .line 51
    aget v0, v0, v6

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_0
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->getShort()S

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    and-int/2addr v0, v8

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 63
    .line 64
    iget v5, v3, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 65
    .line 66
    add-int/2addr v5, v0

    .line 67
    iput v5, v3, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 68
    .line 69
    invoke-direct {p0, v4, v5}, Lcom/kwad/sdk/utils/a/c;->N(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1, v7}, Lcom/kwad/sdk/utils/a/b;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    iget v7, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 78
    .line 79
    const/4 v11, 0x1

    .line 80
    if-gt v6, v9, :cond_7

    .line 81
    .line 82
    if-eq v6, v11, :cond_5

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    if-eq v6, v0, :cond_4

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    if-eq v6, v0, :cond_3

    .line 89
    .line 90
    const/4 v0, 0x4

    .line 91
    if-eq v6, v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 94
    .line 95
    new-instance v3, Lcom/kwad/sdk/utils/a/a$d;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->getDouble()D

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    invoke-direct {v3, v7, v4, v5}, Lcom/kwad/sdk/utils/a/a$d;-><init>(ID)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 109
    .line 110
    new-instance v3, Lcom/kwad/sdk/utils/a/a$g;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->getLong()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    invoke-direct {v3, v7, v4, v5}, Lcom/kwad/sdk/utils/a/a$g;-><init>(IJ)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 124
    .line 125
    new-instance v3, Lcom/kwad/sdk/utils/a/a$e;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->getFloat()F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-direct {v3, v7, v4}, Lcom/kwad/sdk/utils/a/a$e;-><init>(IF)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 140
    .line 141
    new-instance v3, Lcom/kwad/sdk/utils/a/a$f;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->getInt()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-direct {v3, v7, v4}, Lcom/kwad/sdk/utils/a/a$f;-><init>(II)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 156
    .line 157
    new-instance v3, Lcom/kwad/sdk/utils/a/a$c;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->get()B

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-ne v4, v11, :cond_6

    .line 164
    .line 165
    move v5, v11

    .line 166
    :cond_6
    invoke-direct {v3, v7, v5}, Lcom/kwad/sdk/utils/a/a$c;-><init>(IZ)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_7
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->getShort()S

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    and-int/2addr v8, v9

    .line 179
    and-int/lit8 v0, v0, 0x40

    .line 180
    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    move v5, v11

    .line 184
    :cond_8
    invoke-static {v8, v5}, Lcom/kwad/sdk/utils/a/c;->f(IZ)V

    .line 185
    .line 186
    .line 187
    const/4 v0, 0x6

    .line 188
    if-eq v6, v0, :cond_f

    .line 189
    .line 190
    const/4 v0, 0x7

    .line 191
    if-eq v6, v0, :cond_d

    .line 192
    .line 193
    if-eqz v5, :cond_9

    .line 194
    .line 195
    invoke-virtual {v1, v8}, Lcom/kwad/sdk/utils/a/b;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 200
    .line 201
    new-instance v3, Lcom/kwad/sdk/utils/a/a$h;

    .line 202
    .line 203
    add-int/lit8 v5, v7, 0x2

    .line 204
    .line 205
    move v7, v8

    .line 206
    const/4 v8, 0x1

    .line 207
    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/utils/a/a$h;-><init>(IILjava/lang/Object;IZ)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_9
    move v0, v7

    .line 216
    move v7, v8

    .line 217
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/b;->get()B

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    and-int/lit16 v5, v5, 0xff

    .line 222
    .line 223
    invoke-virtual {v1, v5}, Lcom/kwad/sdk/utils/a/b;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    iget-object v8, p0, Lcom/kwad/sdk/utils/a/c;->brS:Ljava/util/Map;

    .line 228
    .line 229
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Lcom/kwad/sdk/utils/a/c$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    sub-int v9, v7, v5

    .line 238
    .line 239
    if-ltz v9, :cond_c

    .line 240
    .line 241
    if-eqz v8, :cond_a

    .line 242
    .line 243
    :try_start_2
    iget-object v3, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 244
    .line 245
    iget v5, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 246
    .line 247
    invoke-interface {v8, v3, v5, v9}, Lcom/kwad/sdk/utils/a/c$b;->f([BII)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    if-eqz v6, :cond_b

    .line 252
    .line 253
    iget-object v11, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 254
    .line 255
    new-instance v3, Lcom/kwad/sdk/utils/a/a$h;

    .line 256
    .line 257
    add-int/lit8 v5, v0, 0x2

    .line 258
    .line 259
    const/4 v8, 0x0

    .line 260
    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/utils/a/a$h;-><init>(IILjava/lang/Object;IZ)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v11, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :catch_1
    move-exception v0

    .line 268
    :try_start_3
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v3, "object with tag: "

    .line 275
    .line 276
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v3, " without encoder"

    .line 283
    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->iy(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_b
    :goto_2
    iget v0, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 295
    .line 296
    add-int/2addr v0, v9

    .line 297
    iput v0, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 302
    .line 303
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :cond_d
    move v0, v7

    .line 308
    move v7, v8

    .line 309
    if-eqz v5, :cond_e

    .line 310
    .line 311
    invoke-virtual {v1, v7}, Lcom/kwad/sdk/utils/a/b;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    :goto_3
    move-object v6, v3

    .line 316
    goto :goto_4

    .line 317
    :cond_e
    invoke-virtual {v1, v7}, Lcom/kwad/sdk/utils/a/b;->getBytes(I)[B

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    goto :goto_3

    .line 322
    :goto_4
    iget-object v9, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 323
    .line 324
    new-instance v3, Lcom/kwad/sdk/utils/a/a$a;

    .line 325
    .line 326
    move v8, v5

    .line 327
    add-int/lit8 v5, v0, 0x2

    .line 328
    .line 329
    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/utils/a/a$a;-><init>(IILjava/lang/Object;IZ)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_f
    move v0, v7

    .line 338
    move v7, v8

    .line 339
    move v8, v5

    .line 340
    if-eqz v8, :cond_10

    .line 341
    .line 342
    invoke-virtual {v1, v7}, Lcom/kwad/sdk/utils/a/b;->gi(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    :goto_5
    move-object v6, v3

    .line 347
    goto :goto_6

    .line 348
    :cond_10
    invoke-virtual {v1, v7}, Lcom/kwad/sdk/utils/a/b;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    goto :goto_5

    .line 353
    :goto_6
    iget-object v9, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 354
    .line 355
    new-instance v3, Lcom/kwad/sdk/utils/a/a$i;

    .line 356
    .line 357
    add-int/lit8 v5, v0, 0x2

    .line 358
    .line 359
    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/utils/a/a$i;-><init>(IILjava/lang/String;IZ)V

    .line 360
    .line 361
    .line 362
    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_11
    new-instance v0, Ljava/lang/Exception;

    .line 368
    .line 369
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 373
    :cond_12
    if-eq v4, v0, :cond_13

    .line 374
    .line 375
    new-instance v0, Ljava/lang/Exception;

    .line 376
    .line 377
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    .line 381
    .line 382
    .line 383
    return v2

    .line 384
    :cond_13
    return v5

    .line 385
    :goto_7
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    .line 386
    .line 387
    .line 388
    return v2
.end method

.method private Xp()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/kwad/sdk/utils/a/c;->bsn:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xq()Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private Xq()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bso:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v2, Lcom/kwad/sdk/utils/a/c$2;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/kwad/sdk/utils/a/c$2;-><init>(Lcom/kwad/sdk/utils/a/c;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x2

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xr()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    return v1
.end method

.method private declared-synchronized Xr()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, ".tmp"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/kwad/sdk/utils/a/h;->ag(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 36
    .line 37
    const-string v3, "rw"

    .line 38
    .line 39
    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 43
    .line 44
    int-to-long v3, v3

    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 51
    .line 52
    iget v4, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 53
    .line 54
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 58
    .line 59
    .line 60
    new-instance v2, Ljava/io/File;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, ".kvc"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception v1

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 104
    .line 105
    .line 106
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    monitor-exit p0

    .line 110
    const/4 v0, 0x1

    .line 111
    return v0

    .line 112
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    .line 113
    .line 114
    const-string v2, "rename failed"

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v1}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_2
    monitor-exit p0

    .line 127
    return v0

    .line 128
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    throw v0
.end method

.method private Xs()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ".kvc"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->h(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ".tmp"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->h(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private Xt()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 22
    .line 23
    return-void
.end method

.method private Xu()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/nio/MappedByteBuffer;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/nio/MappedByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xt()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xv()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/io/File;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->h(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private Xv()V
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iput v0, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->XB()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v3, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 22
    .line 23
    array-length v3, v3

    .line 24
    sget v4, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 25
    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3, v3}, Lcom/kwad/sdk/utils/a/b;->J(II)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-virtual {v2, v3, v0, v1}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    new-instance v0, Lcom/kwad/sdk/utils/a/b;

    .line 41
    .line 42
    sget v1, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 48
    .line 49
    return-void
.end method

.method private Xw()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 6
    .line 7
    iget v3, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    .line 8
    .line 9
    iget v4, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 10
    .line 11
    invoke-virtual {v0, v3, v4}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    xor-long v0, v1, v3

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->b(Ljava/nio/MappedByteBuffer;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 38
    .line 39
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0xc

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->b(Ljava/nio/MappedByteBuffer;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/kwad/sdk/utils/a/c;->bsi:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 63
    .line 64
    add-int/lit8 v2, v2, -0xc

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/a/b;->J(II)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    iget-wide v3, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3, v4}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/kwad/sdk/utils/a/c;->bsi:Z

    .line 80
    .line 81
    iput v1, p0, Lcom/kwad/sdk/utils/a/c;->bsh:I

    .line 82
    .line 83
    iput v1, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 84
    .line 85
    return-void
.end method

.method private Xx()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 2
    .line 3
    const/16 v1, 0x4000

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x1000

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/high16 v2, 0x10000

    .line 11
    .line 12
    if-gt v0, v2, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x2000

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    return v1
.end method

.method private Xy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->gn(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 7
    .line 8
    iput v0, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    .line 9
    .line 10
    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    iput v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput v0, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/kwad/sdk/utils/a/c;->bsi:Z

    .line 23
    .line 24
    return-void
.end method

.method private Xz()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsk:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xx()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    shl-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 18
    .line 19
    const/16 v2, 0x4000

    .line 20
    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x50

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v1, 0xa0

    .line 27
    .line 28
    :goto_0
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->go(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;[BB)I
    .locals 4

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsj:Ljava/lang/String;

    .line 224
    array-length v0, p2

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/utils/a/c;->b(Ljava/lang/String;[BB)I

    move-result p1

    return p1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "large value, key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->info(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/kwad/sdk/utils/a/h;->XE()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {v1, p2}, Lcom/kwad/sdk/utils/a/h;->a(Ljava/io/File;[B)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 230
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsj:Ljava/lang/String;

    const/16 p2, 0x20

    .line 231
    new-array v2, p2, [B

    .line 232
    invoke-virtual {v0, v1, p2, v2, v1}, Ljava/lang/String;->getBytes(II[BI)V

    or-int/lit8 p2, p3, 0x40

    int-to-byte p2, p2

    .line 233
    invoke-direct {p0, p1, v2, p2}, Lcom/kwad/sdk/utils/a/c;->b(Ljava/lang/String;[BB)I

    move-result p1

    return p1

    .line 234
    :cond_1
    const-string p1, "save large value failed"

    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->iy(Ljava/lang/String;)V

    return v1
.end method

.method private a(Lcom/kwad/sdk/utils/a/a$h;)Ljava/lang/Object;
    .locals 4

    .line 48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->ah(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 50
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 51
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/kwad/sdk/utils/a/b;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 52
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->brS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/a/c$b;

    if-eqz v2, :cond_0

    add-int/2addr v0, v3

    .line 53
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-interface {v2, p1, v0, v1}, Lcom/kwad/sdk/utils/a/c$b;->f([BII)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No encoder for tag:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Read object data failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :goto_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/kwad/sdk/utils/a/a$i;)Ljava/lang/String;
    .locals 4

    .line 34
    const-string v0, ""

    iget-object p1, p1, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 35
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    invoke-static {v1}, Lcom/kwad/sdk/utils/a/h;->ah(Ljava/io/File;)[B

    move-result-object p1

    .line 37
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_2

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v1}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    move-result v1

    .line 40
    invoke-static {p1, v1}, Lcom/kwad/sdk/utils/a/b;->j([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 41
    array-length v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/kwad/sdk/utils/a/b;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    .line 42
    :goto_1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method private a(BI)V
    .locals 4

    .line 135
    iget-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p2}, Lcom/kwad/sdk/utils/a/c;->g(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 136
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    const/4 v3, 0x4

    if-nez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 139
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, p2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_2

    .line 141
    iget-wide v1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, p2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v2, v3, v0, v1}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 145
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    aput-byte p1, v0, p2

    :cond_3
    return-void
.end method

.method private a(BII)V
    .locals 8

    .line 235
    invoke-direct {p0, p2, p3}, Lcom/kwad/sdk/utils/a/c;->N(II)V

    or-int/lit8 p1, p1, -0x80

    int-to-byte p1, p1

    .line 236
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/kwad/sdk/utils/a/b;->brM:[B

    if-eqz p3, :cond_0

    .line 237
    aget-byte v0, p3, p2

    and-int/lit8 v1, p2, 0x7

    shl-int/lit8 v1, v1, 0x3

    .line 238
    iget-wide v2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    xor-int/2addr v0, p1

    int-to-long v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long v0, v4, v1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 239
    aput-byte p1, p3, p2

    .line 240
    :cond_0
    iput p2, p0, Lcom/kwad/sdk/utils/a/c;->bsh:I

    return-void
.end method

.method private a(I[I)V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/utils/a/a$b;

    .line 244
    iget v2, v1, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    if-le v2, p1, :cond_1

    .line 245
    invoke-static {p2, v2}, Lcom/kwad/sdk/utils/a/h;->binarySearch([II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 246
    aget v2, p2, v2

    .line 247
    iget v3, v1, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 248
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/a/a$b;->Xi()B

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1

    .line 249
    check-cast v1, Lcom/kwad/sdk/utils/a/a$j;

    iget v3, v1, Lcom/kwad/sdk/utils/a/a$j;->start:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/kwad/sdk/utils/a/a$j;->start:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/kwad/sdk/utils/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xk()V

    return-void
.end method

.method private a(Ljava/lang/String;B)V
    .locals 1

    .line 127
    sget-object v0, Lcom/kwad/sdk/utils/a/c;->brN:[I

    aget v0, v0, p2

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;BI)V

    return-void
.end method

.method private a(Ljava/lang/String;BI)V
    .locals 2

    .line 128
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/c;->gm(I)V

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 130
    iput v1, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 131
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xy()V

    .line 132
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p3, p2}, Lcom/kwad/sdk/utils/a/b;->e(B)V

    .line 134
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->u(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;II[BI)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p2, p1, :cond_0

    goto :goto_2

    :cond_0
    if-gez p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_2

    add-int/lit8 v1, p4, 0x1

    int-to-byte p1, p1

    xor-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 149
    aput-byte p1, p3, p4

    :goto_1
    move p1, v0

    move p4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p4, 0x1

    int-to-byte p1, p1

    .line 150
    aput-byte p1, p3, p4

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Lcom/kwad/sdk/utils/a/c$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/kwad/sdk/utils/a/c$b<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p3, :cond_1

    .line 58
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encoder is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    sget-object p2, Lcom/kwad/library/a/a;->pe:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_3

    .line 62
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :cond_1
    :try_start_3
    invoke-interface {p3}, Lcom/kwad/sdk/utils/a/c$b;->XD()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_3

    :cond_2
    move-object v3, p0

    goto/16 :goto_2

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_5

    .line 66
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encoder hasn\'t been registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object p2, Lcom/kwad/library/a/a;->pe:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 68
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 70
    :cond_4
    :try_start_5
    throw p1

    :cond_5
    if-nez p2, :cond_6

    .line 71
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/utils/a/c;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 73
    :cond_6
    :try_start_6
    invoke-interface {p3, p2}, Lcom/kwad/sdk/utils/a/c$b;->u(Ljava/lang/Object;)[B

    move-result-object p3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p3, v0

    .line 74
    :try_start_7
    invoke-direct {p0, p3}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_7

    .line 75
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/utils/a/c;->remove(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 77
    :cond_7
    :try_start_9
    invoke-static {v1}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    move-result v0

    .line 78
    new-instance v2, Lcom/kwad/sdk/utils/a/b;

    add-int/lit8 v3, v0, 0x1

    array-length v4, p3

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    int-to-byte v0, v0

    .line 79
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/utils/a/b;->e(B)V

    .line 80
    invoke-virtual {v2, v1}, Lcom/kwad/sdk/utils/a/b;->it(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, p3}, Lcom/kwad/sdk/utils/a/b;->p([B)V

    .line 82
    iget-object v6, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 83
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Lcom/kwad/sdk/utils/a/a$h;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/16 v8, 0x8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 84
    :try_start_a
    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/Object;[BLcom/kwad/sdk/utils/a/a$j;B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 85
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_1

    .line 86
    :goto_2
    :try_start_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid encoder tag:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object p2, Lcom/kwad/library/a/a;->pe:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    .line 88
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 89
    monitor-exit p0

    return-void

    .line 90
    :cond_8
    :try_start_c
    throw p1

    .line 91
    :goto_3
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;[BB)V
    .locals 6

    .line 199
    invoke-direct {p0, p1, p3, p4}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;[BB)I

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsj:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_1

    const/4 p2, 0x0

    .line 201
    iput-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsj:Ljava/lang/String;

    const/16 p2, 0x20

    move v4, p2

    move-object v3, v0

    goto :goto_2

    .line 202
    :cond_1
    array-length p3, p3

    move-object v3, p2

    move v4, p3

    :goto_2
    const/4 p2, 0x6

    if-ne p4, p2, :cond_2

    .line 203
    new-instance v0, Lcom/kwad/sdk/utils/a/a$i;

    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    check-cast v3, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/utils/a/a$i;-><init>(IILjava/lang/String;IZ)V

    goto :goto_3

    :cond_2
    const/4 p2, 0x7

    if-ne p4, p2, :cond_3

    .line 204
    new-instance v0, Lcom/kwad/sdk/utils/a/a$a;

    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/utils/a/a$a;-><init>(IILjava/lang/Object;IZ)V

    goto :goto_3

    .line 205
    :cond_3
    new-instance v0, Lcom/kwad/sdk/utils/a/a$h;

    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/utils/a/a$h;-><init>(IILjava/lang/Object;IZ)V

    .line 206
    :goto_3
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;[BLcom/kwad/sdk/utils/a/a$j;)V
    .locals 6
    .param p4    # Lcom/kwad/sdk/utils/a/a$j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 208
    invoke-virtual {p4}, Lcom/kwad/sdk/utils/a/a$b;->Xi()B

    move-result v0

    invoke-direct {p0, p1, p3, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;[BB)I

    move-result p1

    if-eqz p1, :cond_3

    .line 209
    iget-boolean v0, p4, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 210
    :goto_0
    invoke-virtual {p4}, Lcom/kwad/sdk/utils/a/a$b;->Xi()B

    move-result v2

    iget v3, p4, Lcom/kwad/sdk/utils/a/a$j;->start:I

    iget v4, p4, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    iget v5, p4, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/kwad/sdk/utils/a/c;->a(BII)V

    .line 211
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsj:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 212
    :goto_1
    iget v4, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    iput v4, p4, Lcom/kwad/sdk/utils/a/a$j;->start:I

    .line 213
    iput p1, p4, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 214
    iput-boolean v3, p4, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    if-eqz v3, :cond_2

    .line 215
    iput-object v2, p4, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    const/16 p1, 0x20

    .line 216
    iput p1, p4, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    .line 217
    iput-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsj:Ljava/lang/String;

    goto :goto_2

    .line 218
    :cond_2
    iput-object p2, p4, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 219
    array-length p1, p3

    iput p1, p4, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    .line 220
    :goto_2
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    .line 221
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xz()V

    if-eqz v0, :cond_3

    .line 222
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/a/h;->h(Ljava/io/File;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;[BLcom/kwad/sdk/utils/a/a$j;B)V
    .locals 1

    if-nez p4, :cond_0

    .line 193
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/Object;[BB)V

    goto :goto_1

    .line 194
    :cond_0
    iget-boolean p5, p4, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    if-nez p5, :cond_2

    iget p5, p4, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    array-length v0, p3

    if-eq p5, v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget p1, p4, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/utils/a/c;->updateBytes(I[B)V

    .line 196
    iput-object p2, p4, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/Object;[BLcom/kwad/sdk/utils/a/a$j;)V

    .line 198
    :goto_1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/utils/a/a$i;)V
    .locals 9

    .line 151
    invoke-static {p2}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x6

    if-nez p3, :cond_1

    .line 152
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    move-result p3

    .line 153
    invoke-static {p3}, Lcom/kwad/sdk/utils/a/c;->gm(I)V

    add-int/lit8 v1, p3, 0x4

    add-int v2, v1, v4

    .line 154
    iput v2, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 155
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xy()V

    .line 156
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/utils/a/b;->e(B)V

    .line 158
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/utils/a/c;->u(Ljava/lang/String;I)V

    .line 159
    invoke-direct {p0, p2, v4}, Lcom/kwad/sdk/utils/a/c;->v(Ljava/lang/String;I)V

    .line 160
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    new-instance v0, Lcom/kwad/sdk/utils/a/a$i;

    move v2, v1

    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    add-int/2addr v2, v1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/utils/a/a$i;-><init>(IILjava/lang/String;IZ)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    goto/16 :goto_2

    :cond_1
    move-object v3, p2

    .line 162
    iget p1, p3, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    iget p2, p3, Lcom/kwad/sdk/utils/a/a$j;->start:I

    sub-int p2, p1, p2

    .line 163
    iget v1, p3, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-ne v1, v4, :cond_4

    .line 164
    iget-wide v6, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    invoke-virtual {p2, p1, v1}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    move-result-wide p1

    xor-long/2addr p1, v6

    iput-wide p1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v4, p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    iget-object p1, p1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    iget p2, p3, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    invoke-static {v3, v2, v4, p1, p2}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;II[BI)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p1, :cond_3

    .line 168
    iget p2, p3, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    iput p2, p1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 169
    invoke-virtual {p1, v3}, Lcom/kwad/sdk/utils/a/b;->it(Ljava/lang/String;)V

    .line 170
    :cond_3
    :goto_0
    iget p1, p3, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    iput p1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    .line 171
    iput v4, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    goto :goto_1

    :cond_4
    add-int p1, p2, v4

    .line 172
    iput p1, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    .line 173
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xy()V

    .line 174
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p1, :cond_5

    .line 175
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/utils/a/b;->e(B)V

    :cond_5
    add-int/lit8 p1, p2, -0x3

    .line 176
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    const/4 v6, 0x1

    if-eqz v1, :cond_6

    .line 177
    iget-object v7, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    iget v8, p3, Lcom/kwad/sdk/utils/a/a$j;->start:I

    add-int/2addr v8, v6

    iget v1, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    invoke-static {v7, v8, v7, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_6
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz v1, :cond_7

    .line 179
    iget v7, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    add-int/2addr v7, p1

    iput v7, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 180
    :cond_7
    invoke-direct {p0, v3, v4}, Lcom/kwad/sdk/utils/a/c;->v(Ljava/lang/String;I)V

    .line 181
    iget p1, p3, Lcom/kwad/sdk/utils/a/a$j;->start:I

    iget v1, p3, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    iget v7, p3, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    add-int/2addr v1, v7

    invoke-direct {p0, v0, p1, v1}, Lcom/kwad/sdk/utils/a/c;->a(BII)V

    .line 182
    iget-boolean p1, p3, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    if-eqz p1, :cond_8

    .line 183
    iget-object p1, p3, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 184
    :cond_8
    iput-boolean v2, p3, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 185
    iget p1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    iput p1, p3, Lcom/kwad/sdk/utils/a/a$j;->start:I

    add-int/2addr p1, p2

    .line 186
    iput p1, p3, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 187
    iput v4, p3, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    move v2, v6

    .line 188
    :goto_1
    iput-object v3, p3, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 189
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    if-eqz v2, :cond_9

    .line 190
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xz()V

    :cond_9
    if-eqz v5, :cond_a

    .line 191
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/a/h;->h(Ljava/io/File;)V

    .line 192
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V

    return-void
.end method

.method private a(Ljava/nio/MappedByteBuffer;)V
    .locals 8

    if-nez p1, :cond_0

    goto :goto_2

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    sget v1, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    if-eq v0, v1, :cond_4

    .line 118
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    return-void

    :cond_2
    int-to-long v3, v1

    .line 119
    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 120
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 121
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    if-ne p1, v1, :cond_3

    .line 123
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    goto :goto_3

    .line 124
    :cond_3
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    :goto_3
    move-object p1, v0

    :cond_4
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(Ljava/nio/MappedByteBuffer;Ljava/nio/MappedByteBuffer;I)V
    .locals 7

    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 22
    :goto_1
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 23
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    if-ne p2, v1, :cond_1

    .line 25
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    goto :goto_2

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object p2, v0

    goto :goto_4

    .line 27
    :goto_3
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 28
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xt()V

    return-void

    .line 29
    :cond_2
    :goto_4
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 30
    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    invoke-virtual {p1, p3}, Ljava/nio/MappedByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 32
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/kwad/sdk/utils/a/c$b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 92
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 98
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/kwad/sdk/utils/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 99
    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 100
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/kwad/sdk/utils/a/c;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 101
    :cond_3
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 102
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/kwad/sdk/utils/a/c;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 104
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kwad/sdk/utils/a/c;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 105
    :cond_5
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 106
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/kwad/sdk/utils/a/c;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 107
    :cond_6
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_7

    .line 108
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/kwad/sdk/utils/a/c;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 109
    :cond_7
    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_8

    .line 110
    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    .line 111
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, v0, p2}, Lcom/kwad/sdk/utils/a/c;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 113
    :cond_8
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 114
    check-cast p2, [B

    invoke-direct {p0, v0, p2}, Lcom/kwad/sdk/utils/a/c;->b(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 115
    :cond_9
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "missing encoders"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 116
    :cond_a
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Lcom/kwad/sdk/utils/a/b;)Z
    .locals 12

    .line 2
    const-string v0, "rw"

    iget-object v1, p1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    array-length v1, v1

    .line 3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".kva"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".kvb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-static {v2}, Lcom/kwad/sdk/utils/a/h;->ag(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/kwad/sdk/utils/a/h;->ag(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v10, v1

    .line 8
    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 9
    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 10
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 12
    iget-object v6, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v6, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    iget-object v1, p1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 17
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    iget-object p1, p1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    invoke-virtual {v0, p1, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "open file failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    return v4
.end method

.method private a(Lcom/kwad/sdk/utils/a/a$a;)[B
    .locals 3

    .line 43
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->ah(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 45
    :cond_0
    sget-object p1, Lcom/kwad/sdk/utils/a/c;->brO:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 47
    sget-object p1, Lcom/kwad/sdk/utils/a/c;->brO:[B

    return-object p1
.end method

.method private af(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    const-wide/32 v4, 0x20000000

    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v4

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    long-to-int v0, v0

    .line 21
    sget v1, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 22
    .line 23
    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/utils/a/c;->M(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v4, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 32
    .line 33
    array-length v4, v4

    .line 34
    if-ne v4, v1, :cond_1

    .line 35
    .line 36
    iput v3, v2, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Lcom/kwad/sdk/utils/a/b;

    .line 40
    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lcom/kwad/sdk/utils/a/b;-><init>([B)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 47
    .line 48
    :goto_0
    iget-object v1, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 49
    .line 50
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/a/h;->a(Ljava/io/File;[BI)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/kwad/sdk/utils/a/b;->getInt()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {v2}, Lcom/kwad/sdk/utils/a/b;->getLong()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    add-int/lit8 v1, p1, 0xc

    .line 62
    .line 63
    iput v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 64
    .line 65
    if-ltz p1, :cond_2

    .line 66
    .line 67
    const/16 v1, 0xc

    .line 68
    .line 69
    sub-int/2addr v0, v1

    .line 70
    if-gt p1, v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2, v1, p1}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    cmp-long p1, v4, v0

    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xo()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    iput-wide v4, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    return p1

    .line 90
    :cond_2
    :goto_1
    return v3
.end method

.method private b(Ljava/lang/String;[BB)I
    .locals 1

    .line 39
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p3, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;BI)V

    .line 40
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p1, :cond_0

    .line 41
    array-length p3, p2

    int-to-short p3, p3

    invoke-virtual {p1, p3}, Lcom/kwad/sdk/utils/a/b;->a(S)V

    .line 42
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    iget p3, p1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 43
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/utils/a/b;->p([B)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(IJI)V
    .locals 4

    .line 15
    iget-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    invoke-static {p2, p3, p4}, Lcom/kwad/sdk/utils/a/c;->g(JI)J

    move-result-wide p2

    xor-long/2addr p2, v0

    iput-wide p2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 16
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 19
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p2, p4, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    if-eqz p2, :cond_2

    .line 21
    iget-wide v2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    invoke-virtual {p2, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 22
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p2, p4, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0, v1, p2, p3}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 25
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p2, :cond_3

    .line 26
    invoke-virtual {p2, p4, p1}, Lcom/kwad/sdk/utils/a/b;->J(II)V

    :cond_3
    return-void
.end method

.method private b(JJI)V
    .locals 4

    .line 27
    iget-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    invoke-static {p3, p4, p5}, Lcom/kwad/sdk/utils/a/c;->g(JI)J

    move-result-wide p3

    xor-long/2addr p3, v0

    iput-wide p3, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 28
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 31
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p3, p5, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    if-eqz p3, :cond_2

    .line 33
    iget-wide v2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    invoke-virtual {p3, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p3, p5, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0, v1, p3, p4}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 37
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    if-eqz p3, :cond_3

    .line 38
    invoke-virtual {p3, p5, p1, p2}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    :cond_3
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;[B)V
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p2, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/utils/a/c;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/kwad/sdk/utils/a/a$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x7

    move-object v4, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 5
    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/Object;[BLcom/kwad/sdk/utils/a/a$j;B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private b(Ljava/nio/MappedByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/sdk/utils/a/c;->bsi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    if-eq p1, v0, :cond_1

    .line 8
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    add-int/lit8 v0, v0, -0xc

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x4

    .line 9
    iget-wide v1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 10
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsh:I

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    iget-object v1, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 12
    :cond_2
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    if-eqz v0, :cond_3

    .line 13
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    invoke-virtual {p1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsf:I

    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsg:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/kwad/sdk/utils/a/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xr()Z

    move-result p0

    return p0
.end method

.method private static f(IZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/16 p1, 0x20

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string p1, "name size not match"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :cond_1
    if-ltz p0, :cond_2

    .line 17
    .line 18
    const/16 p1, 0x800

    .line 19
    .line 20
    if-ge p0, p1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string p1, "value size out of bound"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method private static g(JI)J
    .locals 2

    .line 1
    and-int/lit8 p2, p2, 0x7

    shl-int/lit8 p2, p2, 0x3

    shl-long v0, p0, p2

    rsub-int/lit8 p2, p2, 0x40

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private g(Ljava/lang/Exception;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brT:Lcom/kwad/sdk/utils/a/c$d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/utils/a/c$d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static gm(I)V
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "key\'s length must less than 256"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method private gn(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/a/b;

    .line 6
    .line 7
    sget v1, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/a/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 20
    .line 21
    add-int/2addr v1, p1

    .line 22
    if-lt v1, v0, :cond_2

    .line 23
    .line 24
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsk:I

    .line 25
    .line 26
    if-le v2, p1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xx()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->go(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/utils/a/c;->M(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-array v0, p1, [B

    .line 43
    .line 44
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 47
    .line 48
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 55
    .line 56
    iput-object v0, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 57
    .line 58
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 63
    .line 64
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 65
    .line 66
    int-to-long v8, p1

    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 74
    .line 75
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-object v6, v5

    .line 81
    iget-object v5, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 82
    .line 83
    move-wide v9, v8

    .line 84
    const-wide/16 v7, 0x0

    .line 85
    .line 86
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object p1, v0

    .line 98
    new-instance v0, Ljava/lang/Exception;

    .line 99
    .line 100
    const-string v1, "map failed"

    .line 101
    .line 102
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 109
    .line 110
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 111
    .line 112
    add-int/lit8 v0, v0, -0xc

    .line 113
    .line 114
    invoke-virtual {p1, v3, v0}, Lcom/kwad/sdk/utils/a/b;->J(II)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 118
    .line 119
    const/4 v0, 0x4

    .line 120
    iget-wide v1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1, v2}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xt()V

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void
.end method

.method private go(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/kwad/sdk/utils/a/c;->XA()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/kwad/sdk/utils/a/c$e;

    .line 27
    .line 28
    iget v3, v1, Lcom/kwad/sdk/utils/a/c$e;->start:I

    .line 29
    .line 30
    iget v4, v0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 31
    .line 32
    iget v5, v0, Lcom/kwad/sdk/utils/a/c;->bsk:I

    .line 33
    .line 34
    sub-int v5, v4, v5

    .line 35
    .line 36
    add-int/lit8 v6, v5, -0xc

    .line 37
    .line 38
    sub-int v7, v5, v3

    .line 39
    .line 40
    sub-int/2addr v4, v3

    .line 41
    add-int v8, v4, v7

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    if-ge v6, v8, :cond_2

    .line 45
    .line 46
    move v8, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v8, v2

    .line 49
    :goto_1
    if-nez v8, :cond_3

    .line 50
    .line 51
    iget-wide v10, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 52
    .line 53
    iget-object v12, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 54
    .line 55
    invoke-virtual {v12, v3, v4}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 56
    .line 57
    .line 58
    move-result-wide v12

    .line 59
    xor-long/2addr v10, v12

    .line 60
    iput-wide v10, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 61
    .line 62
    :cond_3
    iget-object v4, v0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget v10, v0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 69
    .line 70
    iget-object v11, v0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 71
    .line 72
    add-int/lit8 v12, v4, -0x1

    .line 73
    .line 74
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    check-cast v11, Lcom/kwad/sdk/utils/a/c$e;

    .line 79
    .line 80
    iget v11, v11, Lcom/kwad/sdk/utils/a/c$e;->end:I

    .line 81
    .line 82
    sub-int/2addr v10, v11

    .line 83
    if-lez v10, :cond_4

    .line 84
    .line 85
    move v11, v4

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v11, v12

    .line 88
    :goto_2
    shl-int/2addr v11, v9

    .line 89
    new-array v11, v11, [I

    .line 90
    .line 91
    iget v13, v1, Lcom/kwad/sdk/utils/a/c$e;->start:I

    .line 92
    .line 93
    iget v1, v1, Lcom/kwad/sdk/utils/a/c$e;->end:I

    .line 94
    .line 95
    move v14, v9

    .line 96
    :goto_3
    if-ge v14, v4, :cond_5

    .line 97
    .line 98
    iget-object v15, v0, Lcom/kwad/sdk/utils/a/c;->bsl:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    check-cast v15, Lcom/kwad/sdk/utils/a/c$e;

    .line 105
    .line 106
    move/from16 v16, v9

    .line 107
    .line 108
    iget v9, v15, Lcom/kwad/sdk/utils/a/c$e;->start:I

    .line 109
    .line 110
    sub-int/2addr v9, v1

    .line 111
    iget-object v2, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 114
    .line 115
    invoke-static {v2, v1, v2, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v2, v14, -0x1

    .line 119
    .line 120
    shl-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    aput v1, v11, v2

    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    sub-int/2addr v1, v13

    .line 127
    aput v1, v11, v2

    .line 128
    .line 129
    add-int/2addr v13, v9

    .line 130
    iget v1, v15, Lcom/kwad/sdk/utils/a/c$e;->end:I

    .line 131
    .line 132
    add-int/lit8 v14, v14, 0x1

    .line 133
    .line 134
    move/from16 v9, v16

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    move/from16 v16, v9

    .line 139
    .line 140
    if-lez v10, :cond_6

    .line 141
    .line 142
    iget-object v2, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 145
    .line 146
    invoke-static {v2, v1, v2, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    .line 148
    .line 149
    shl-int/lit8 v2, v12, 0x1

    .line 150
    .line 151
    aput v1, v11, v2

    .line 152
    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    sub-int/2addr v1, v13

    .line 156
    aput v1, v11, v2

    .line 157
    .line 158
    :cond_6
    invoke-direct {v0}, Lcom/kwad/sdk/utils/a/c;->XB()V

    .line 159
    .line 160
    .line 161
    if-eqz v8, :cond_7

    .line 162
    .line 163
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 164
    .line 165
    const/16 v2, 0xc

    .line 166
    .line 167
    invoke-virtual {v1, v2, v6}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    iput-wide v1, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    iget-wide v1, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 175
    .line 176
    iget-object v4, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 177
    .line 178
    invoke-virtual {v4, v3, v7}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 179
    .line 180
    .line 181
    move-result-wide v8

    .line 182
    xor-long/2addr v1, v8

    .line 183
    iput-wide v1, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 184
    .line 185
    :goto_4
    iput v5, v0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 186
    .line 187
    iget v1, v0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 188
    .line 189
    const/4 v2, 0x4

    .line 190
    if-nez v1, :cond_9

    .line 191
    .line 192
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 193
    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    const/4 v4, -0x1

    .line 197
    const/4 v8, 0x0

    .line 198
    invoke-virtual {v1, v8, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 202
    .line 203
    iget-wide v9, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 204
    .line 205
    invoke-virtual {v1, v2, v9, v10}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 214
    .line 215
    iget-object v4, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 216
    .line 217
    iget-object v4, v4, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 218
    .line 219
    invoke-virtual {v1, v4, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 223
    .line 224
    invoke-virtual {v1, v8, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_8
    const/4 v8, 0x0

    .line 229
    :goto_5
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 230
    .line 231
    if-eqz v1, :cond_a

    .line 232
    .line 233
    invoke-virtual {v1, v8, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 237
    .line 238
    iget-wide v8, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 239
    .line 240
    invoke-virtual {v1, v2, v8, v9}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 249
    .line 250
    iget-object v2, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 253
    .line 254
    invoke-virtual {v1, v2, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_9
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 259
    .line 260
    const/4 v8, 0x0

    .line 261
    invoke-virtual {v1, v8, v6}, Lcom/kwad/sdk/utils/a/b;->J(II)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 265
    .line 266
    iget-wide v6, v0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 267
    .line 268
    invoke-virtual {v1, v2, v6, v7}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 269
    .line 270
    .line 271
    :cond_a
    :goto_6
    invoke-direct {v0, v3, v11}, Lcom/kwad/sdk/utils/a/c;->a(I[I)V

    .line 272
    .line 273
    .line 274
    add-int v5, v5, p1

    .line 275
    .line 276
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 277
    .line 278
    iget-object v1, v1, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 279
    .line 280
    array-length v1, v1

    .line 281
    sub-int/2addr v1, v5

    .line 282
    sget v2, Lcom/kwad/sdk/utils/a/c;->brR:I

    .line 283
    .line 284
    if-le v1, v2, :cond_b

    .line 285
    .line 286
    invoke-direct {v0, v5}, Lcom/kwad/sdk/utils/a/c;->gp(I)V

    .line 287
    .line 288
    .line 289
    :cond_b
    const-string v1, "gc finish"

    .line 290
    .line 291
    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/a/c;->info(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method private gp(I)V
    .locals 7

    .line 1
    sget v0, Lcom/kwad/sdk/utils/a/c;->PAGE_SIZE:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/utils/a/c;->M(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    if-lt p1, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-array v1, p1, [B

    .line 19
    .line 20
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 35
    .line 36
    int-to-long v5, p1

    .line 37
    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 41
    .line 42
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 51
    .line 52
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 58
    .line 59
    invoke-virtual {p1, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 63
    .line 64
    const-wide/16 v3, 0x0

    .line 65
    .line 66
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    move-object p1, v0

    .line 78
    new-instance v0, Ljava/lang/Exception;

    .line 79
    .line 80
    const-string v1, "map failed"

    .line 81
    .line 82
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/c;->z(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xt()V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    const-string p1, "truncate finish"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->info(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private info(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brT:Lcom/kwad/sdk/utils/a/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/utils/a/c$d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static ix(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "key is empty"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method private iy(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brT:Lcom/kwad/sdk/utils/a/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/Exception;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/utils/a/c$d;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private j(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->af(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xv()V

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-direct {p0, p2}, Lcom/kwad/sdk/utils/a/c;->af(Ljava/io/File;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :catch_1
    move-exception p1

    .line 23
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->g(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xv()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private declared-synchronized putDouble(Ljava/lang/String;D)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kwad/sdk/utils/a/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget v1, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/utils/a/b;->bg(J)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v2, Lcom/kwad/sdk/utils/a/a$d;

    .line 40
    .line 41
    invoke-direct {v2, v1, p2, p3}, Lcom/kwad/sdk/utils/a/a$d;-><init>(ID)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p1, v0

    .line 50
    move-object v1, p0

    .line 51
    goto :goto_3

    .line 52
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_2
    iget-wide v1, v0, Lcom/kwad/sdk/utils/a/a$d;->value:D

    .line 58
    .line 59
    cmpl-double p1, v1, p2

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iget-wide v4, v0, Lcom/kwad/sdk/utils/a/a$d;->value:D

    .line 68
    .line 69
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    xor-long/2addr v4, v2

    .line 74
    iput-wide p2, v0, Lcom/kwad/sdk/utils/a/a$d;->value:D

    .line 75
    .line 76
    iget v6, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .line 78
    move-object v1, p0

    .line 79
    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/utils/a/c;->b(JJI)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    :goto_1
    move-object p1, v0

    .line 88
    goto :goto_3

    .line 89
    :catchall_2
    move-exception v0

    .line 90
    move-object v1, p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v1, p0

    .line 93
    :goto_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    throw p1
.end method

.method private declared-synchronized putFloat(Ljava/lang/String;F)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kwad/sdk/utils/a/a$e;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget v1, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/utils/a/b;->gf(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v2, Lcom/kwad/sdk/utils/a/a$e;

    .line 40
    .line 41
    invoke-direct {v2, v1, p2}, Lcom/kwad/sdk/utils/a/a$e;-><init>(IF)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_1
    :try_start_1
    iget p1, v0, Lcom/kwad/sdk/utils/a/a$e;->value:F

    .line 56
    .line 57
    cmpl-float p1, p1, p2

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iget v1, v0, Lcom/kwad/sdk/utils/a/a$e;->value:F

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    xor-int/2addr v1, p1

    .line 72
    int-to-long v1, v1

    .line 73
    const-wide v3, 0xffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    and-long/2addr v1, v3

    .line 79
    iput p2, v0, Lcom/kwad/sdk/utils/a/a$e;->value:F

    .line 80
    .line 81
    iget p2, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 82
    .line 83
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/kwad/sdk/utils/a/c;->b(IJI)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    :cond_2
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw p1
.end method

.method private declared-synchronized putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/utils/a/c;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    sget-object v0, Lcom/kwad/sdk/utils/a/g;->bsE:Lcom/kwad/sdk/utils/a/g;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/kwad/sdk/utils/a/c$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw p1
.end method

.method private u(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    int-to-byte v1, p2

    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/a/b;->e(B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p2, v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 19
    .line 20
    iget v0, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {p1, v2, p2, v1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;II[BI)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 27
    .line 28
    iget v0, p1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 29
    .line 30
    add-int/2addr v0, p2

    .line 31
    iput v0, p1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/kwad/sdk/utils/a/b;->it(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private updateBytes(I[B)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 7
    .line 8
    invoke-virtual {v1, p1, v0}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    xor-long v1, v2, v4

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 17
    .line 18
    iput p1, v1, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Lcom/kwad/sdk/utils/a/b;->p([B)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 24
    .line 25
    iget-object v3, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 26
    .line 27
    invoke-virtual {v3, p1, v0}, Lcom/kwad/sdk/utils/a/b;->L(II)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    xor-long v0, v1, v3

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 50
    .line 51
    iget-wide v4, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 67
    .line 68
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsb:I

    .line 69
    .line 70
    add-int/lit8 v2, v2, -0xc

    .line 71
    .line 72
    invoke-virtual {v0, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-wide v2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-wide v2, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 100
    .line 101
    invoke-virtual {p1, v1, v2, v3}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method private v(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    int-to-short v1, p2

    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/a/b;->a(S)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p2, v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 19
    .line 20
    iget v0, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {p1, v2, p2, v1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;II[BI)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/kwad/sdk/utils/a/b;->it(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private z(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brT:Lcom/kwad/sdk/utils/a/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/utils/a/c$d;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized contains(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public final declared-synchronized getAll()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x4

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x3

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/kwad/sdk/utils/a/a$b;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/kwad/sdk/utils/a/a$b;->Xi()B

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    packed-switch v4, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    goto :goto_1

    .line 74
    :pswitch_0
    move-object v4, v2

    .line 75
    check-cast v4, Lcom/kwad/sdk/utils/a/a$h;

    .line 76
    .line 77
    iget-boolean v5, v4, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 78
    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-direct {p0, v4}, Lcom/kwad/sdk/utils/a/c;->a(Lcom/kwad/sdk/utils/a/a$h;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    check-cast v2, Lcom/kwad/sdk/utils/a/a$h;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_1
    check-cast v2, Lcom/kwad/sdk/utils/a/a$a;

    .line 92
    .line 93
    iget-boolean v4, v2, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 94
    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-direct {p0, v2}, Lcom/kwad/sdk/utils/a/c;->a(Lcom/kwad/sdk/utils/a/a$a;)[B

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget-object v2, v2, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_2
    check-cast v2, Lcom/kwad/sdk/utils/a/a$i;

    .line 106
    .line 107
    iget-boolean v4, v2, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-direct {p0, v2}, Lcom/kwad/sdk/utils/a/c;->a(Lcom/kwad/sdk/utils/a/a$i;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object v2, v2, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_3
    check-cast v2, Lcom/kwad/sdk/utils/a/a$d;

    .line 120
    .line 121
    iget-wide v4, v2, Lcom/kwad/sdk/utils/a/a$d;->value:D

    .line 122
    .line 123
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    goto :goto_1

    .line 128
    :pswitch_4
    check-cast v2, Lcom/kwad/sdk/utils/a/a$g;

    .line 129
    .line 130
    iget-wide v4, v2, Lcom/kwad/sdk/utils/a/a$g;->value:J

    .line 131
    .line 132
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_1

    .line 137
    :pswitch_5
    check-cast v2, Lcom/kwad/sdk/utils/a/a$e;

    .line 138
    .line 139
    iget v2, v2, Lcom/kwad/sdk/utils/a/a$e;->value:F

    .line 140
    .line 141
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_1

    .line 146
    :pswitch_6
    check-cast v2, Lcom/kwad/sdk/utils/a/a$f;

    .line 147
    .line 148
    iget v2, v2, Lcom/kwad/sdk/utils/a/a$f;->value:I

    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    goto :goto_1

    .line 155
    :pswitch_7
    check-cast v2, Lcom/kwad/sdk/utils/a/a$c;

    .line 156
    .line 157
    iget-boolean v2, v2, Lcom/kwad/sdk/utils/a/a$c;->value:Z

    .line 158
    .line 159
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :goto_1
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    monitor-exit p0

    .line 168
    return-object v1

    .line 169
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    throw v0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/kwad/sdk/utils/a/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return p2

    .line 14
    :cond_0
    :try_start_1
    iget-boolean p1, p1, Lcom/kwad/sdk/utils/a/a$c;->value:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/kwad/sdk/utils/a/a$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return p2

    .line 14
    :cond_0
    :try_start_1
    iget p1, p1, Lcom/kwad/sdk/utils/a/a$f;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/kwad/sdk/utils/a/a$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-wide p2

    .line 14
    :cond_0
    :try_start_1
    iget-wide p1, p1, Lcom/kwad/sdk/utils/a/a$g;->value:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/kwad/sdk/utils/a/a$i;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-boolean p2, p1, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/c;->a(Lcom/kwad/sdk/utils/a/a$i;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object p1

    .line 30
    :cond_1
    monitor-exit p0

    .line 31
    return-object p2

    .line 32
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final declared-synchronized putBoolean(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kwad/sdk/utils/a/a$c;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget v1, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    int-to-byte v2, p2

    .line 26
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/utils/a/b;->e(B)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v2, Lcom/kwad/sdk/utils/a/a$c;

    .line 37
    .line 38
    invoke-direct {v2, v1, p2}, Lcom/kwad/sdk/utils/a/a$c;-><init>(IZ)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :cond_1
    :try_start_1
    iget-boolean p1, v0, Lcom/kwad/sdk/utils/a/a$c;->value:Z

    .line 53
    .line 54
    if-eq p1, p2, :cond_2

    .line 55
    .line 56
    iput-boolean p2, v0, Lcom/kwad/sdk/utils/a/a$c;->value:Z

    .line 57
    .line 58
    int-to-byte p1, p2

    .line 59
    iget p2, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 60
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/utils/a/c;->a(BI)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :cond_2
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw p1
.end method

.method public final declared-synchronized putInt(Ljava/lang/String;I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kwad/sdk/utils/a/a$f;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget v1, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/kwad/sdk/utils/a/b;->gf(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v2, Lcom/kwad/sdk/utils/a/a$f;

    .line 36
    .line 37
    invoke-direct {v2, v1, p2}, Lcom/kwad/sdk/utils/a/a$f;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_1
    :try_start_1
    iget p1, v0, Lcom/kwad/sdk/utils/a/a$f;->value:I

    .line 52
    .line 53
    if-eq p1, p2, :cond_2

    .line 54
    .line 55
    xor-int/2addr p1, p2

    .line 56
    int-to-long v1, p1

    .line 57
    const-wide v3, 0xffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v1, v3

    .line 63
    iput p2, v0, Lcom/kwad/sdk/utils/a/a$f;->value:I

    .line 64
    .line 65
    iget p1, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 66
    .line 67
    invoke-direct {p0, p2, v1, v2, p1}, Lcom/kwad/sdk/utils/a/c;->b(IJI)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public final declared-synchronized putLong(Ljava/lang/String;J)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kwad/sdk/utils/a/a$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget v1, v0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    invoke-virtual {v0, p2, p3}, Lcom/kwad/sdk/utils/a/b;->bg(J)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xw()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v2, Lcom/kwad/sdk/utils/a/a$g;

    .line 36
    .line 37
    invoke-direct {v2, v1, p2, p3}, Lcom/kwad/sdk/utils/a/a$g;-><init>(IJ)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    move-object v3, p0

    .line 47
    goto :goto_3

    .line 48
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :cond_1
    :try_start_2
    iget-wide v1, v0, Lcom/kwad/sdk/utils/a/a$g;->value:J

    .line 54
    .line 55
    cmp-long p1, v1, p2

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    xor-long v6, p2, v1

    .line 60
    .line 61
    iput-wide p2, v0, Lcom/kwad/sdk/utils/a/a$g;->value:J

    .line 62
    .line 63
    iget v8, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    .line 65
    move-object v3, p0

    .line 66
    move-wide v4, p2

    .line 67
    :try_start_3
    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/utils/a/c;->b(JJI)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    :goto_1
    move-object p1, v0

    .line 76
    goto :goto_3

    .line 77
    :catchall_2
    move-exception v0

    .line 78
    move-object v3, p0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v3, p0

    .line 81
    :goto_2
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    throw p1
.end method

.method public final declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/c;->ix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/utils/a/c;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    move-object p1, v0

    .line 14
    move-object v1, p0

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v5, v0

    .line 24
    check-cast v5, Lcom/kwad/sdk/utils/a/a$i;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    mul-int/lit8 v0, v0, 0x3

    .line 31
    .line 32
    const/16 v1, 0x800

    .line 33
    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    :try_start_3
    invoke-direct {p0, p1, p2, v5}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/utils/a/a$i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    :try_start_5
    sget-object v0, Lcom/kwad/sdk/utils/a/c;->brO:[B

    .line 48
    .line 49
    :goto_0
    move-object v4, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    if-nez v5, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ge v2, v1, :cond_4

    .line 59
    .line 60
    invoke-static {p2}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    new-array v2, v1, [B

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ne v1, v3, :cond_3

    .line 71
    .line 72
    invoke-static {p2, v0, v1, v2, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;II[BI)V

    .line 73
    .line 74
    .line 75
    :goto_1
    move-object v4, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-static {p2}, Lcom/kwad/sdk/utils/a/b;->iw(Ljava/lang/String;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    if-eqz v5, :cond_6

    .line 83
    .line 84
    iget-boolean v1, v5, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    invoke-static {p2}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    new-array v2, v1, [B

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne v1, v3, :cond_5

    .line 99
    .line 100
    invoke-static {p2, v0, v1, v2, v0}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;II[BI)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-static {p2}, Lcom/kwad/sdk/utils/a/b;->iw(Ljava/lang/String;)[B

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    :try_start_6
    invoke-static {p2}, Lcom/kwad/sdk/utils/a/b;->iw(Ljava/lang/String;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    goto :goto_0

    .line 114
    :goto_2
    const/4 v6, 0x6

    .line 115
    move-object v1, p0

    .line 116
    move-object v2, p1

    .line 117
    move-object v3, p2

    .line 118
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/utils/a/c;->a(Ljava/lang/String;Ljava/lang/Object;[BLcom/kwad/sdk/utils/a/a$j;B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    :goto_3
    move-object p1, v0

    .line 125
    goto :goto_4

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    move-object v1, p0

    .line 128
    goto :goto_3

    .line 129
    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 130
    throw p1
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brW:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brX:Ljava/io/RandomAccessFile;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brU:Ljava/nio/channels/FileChannel;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brV:Ljava/nio/channels/FileChannel;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget v1, Lcom/kwad/sdk/utils/a/c$a;->bsq:I

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/sdk/utils/a/c$c;->remove(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/kwad/sdk/utils/a/a$b;

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->bsd:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/sdk/utils/a/a$b;->Xi()B

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x5

    .line 22
    const/4 v3, 0x0

    .line 23
    if-gt v1, v2, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v0, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x2

    .line 32
    .line 33
    sub-int p1, v0, p1

    .line 34
    .line 35
    sget-object v2, Lcom/kwad/sdk/utils/a/c;->brN:[I

    .line 36
    .line 37
    aget v2, v2, v1

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    invoke-direct {p0, v1, p1, v0}, Lcom/kwad/sdk/utils/a/c;->a(BII)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    check-cast v0, Lcom/kwad/sdk/utils/a/a$j;

    .line 47
    .line 48
    iget p1, v0, Lcom/kwad/sdk/utils/a/a$j;->start:I

    .line 49
    .line 50
    iget v2, v0, Lcom/kwad/sdk/utils/a/a$b;->offset:I

    .line 51
    .line 52
    iget v4, v0, Lcom/kwad/sdk/utils/a/a$j;->brJ:I

    .line 53
    .line 54
    add-int/2addr v2, v4

    .line 55
    invoke-direct {p0, v1, p1, v2}, Lcom/kwad/sdk/utils/a/c;->a(BII)V

    .line 56
    .line 57
    .line 58
    iget-boolean p1, v0, Lcom/kwad/sdk/utils/a/a$j;->brK:Z

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, v0, Lcom/kwad/sdk/utils/a/a$j;->value:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v3, p1

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    :cond_1
    :goto_0
    or-int/lit8 p1, v1, -0x80

    .line 68
    .line 69
    int-to-byte p1, p1

    .line 70
    iget v0, p0, Lcom/kwad/sdk/utils/a/c;->bsm:I

    .line 71
    .line 72
    const/4 v1, 0x4

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-wide v4, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 80
    .line 81
    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brY:Ljava/nio/MappedByteBuffer;

    .line 85
    .line 86
    iget v2, p0, Lcom/kwad/sdk/utils/a/c;->bsh:I

    .line 87
    .line 88
    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-wide v4, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 96
    .line 97
    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/c;->brZ:Ljava/nio/MappedByteBuffer;

    .line 101
    .line 102
    iget v1, p0, Lcom/kwad/sdk/utils/a/c;->bsh:I

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/c;->bsa:Lcom/kwad/sdk/utils/a/b;

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-wide v4, p0, Lcom/kwad/sdk/utils/a/c;->bsc:J

    .line 113
    .line 114
    invoke-virtual {p1, v1, v4, v5}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/kwad/sdk/utils/a/c;->bsh:I

    .line 119
    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    new-instance p1, Ljava/io/File;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/kwad/sdk/utils/a/h;->h(Ljava/io/File;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xz()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/kwad/sdk/utils/a/c;->Xp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    :cond_6
    monitor-exit p0

    .line 156
    return-void

    .line 157
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "FastKV: path:"

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->apn:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " name:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/c;->name:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method
