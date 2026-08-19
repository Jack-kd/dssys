.class public final Lcom/kwad/sdk/core/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/g/c$a;
    }
.end annotation


# instance fields
.field private volatile aXN:Z

.field private aXO:J

.field private aXP:D

.field private aXQ:[D

.field private aXR:[D

.field aXS:Z

.field aXT:Z

.field aXU:Z

.field aXV:Z

.field aXW:Z

.field aXX:Z

.field private aXY:Lcom/kwad/sdk/core/g/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aXZ:Lcom/kwad/sdk/core/g/c$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aYa:Lcom/kwad/sdk/utils/bk$b;

.field private rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXN:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/kwad/sdk/core/g/c;->aXO:J

    .line 10
    .line 11
    const-wide v0, 0x3e112e0be0000000L    # 9.999999717180685E-10

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lcom/kwad/sdk/core/g/c;->aXP:D

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    new-array v1, v0, [D

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 25
    .line 26
    new-array v0, v0, [D

    .line 27
    .line 28
    fill-array-data v0, :array_1

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXS:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXT:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXU:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXV:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXW:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXX:Z

    .line 45
    .line 46
    new-instance v0, Lcom/kwad/sdk/core/g/c$1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/g/c$1;-><init>(Lcom/kwad/sdk/core/g/c;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/kwad/sdk/core/g/c;->aYa:Lcom/kwad/sdk/utils/bk$b;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private NI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/kwad/sdk/core/g/c;->aXO:J

    .line 16
    .line 17
    return-void
.end method

.method private NK()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXN:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-wide v2, v0, v1

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 16
    .line 17
    aget-wide v4, v0, v1

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmpl-double v0, v2, v4

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 30
    .line 31
    aget-wide v3, v2, v1

    .line 32
    .line 33
    aput-wide v3, v0, v1

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aget-wide v2, v0, v1

    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 45
    .line 46
    aget-wide v4, v0, v1

    .line 47
    .line 48
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmpl-double v0, v2, v4

    .line 53
    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 57
    .line 58
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 59
    .line 60
    aget-wide v3, v2, v1

    .line 61
    .line 62
    aput-wide v3, v0, v1

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    aget-wide v2, v0, v1

    .line 68
    .line 69
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 74
    .line 75
    aget-wide v4, v0, v1

    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    cmpl-double v0, v2, v4

    .line 82
    .line 83
    if-lez v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 86
    .line 87
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 88
    .line 89
    aget-wide v3, v2, v1

    .line 90
    .line 91
    aput-wide v3, v0, v1

    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void
.end method

.method private NL()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXN:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    :try_start_0
    iget-boolean v2, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->bidirectionalSwitch:Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/g/c;->c(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    move v0, v1

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->aXY:Lcom/kwad/sdk/core/g/a;

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->x:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    .line 33
    .line 34
    iget v3, v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    .line 35
    .line 36
    int-to-double v3, v3

    .line 37
    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-direct {p0, v5, v3, v4, v2}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->y:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    .line 49
    .line 50
    iget v3, v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    .line 51
    .line 52
    int-to-double v3, v3

    .line 53
    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    .line 54
    .line 55
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->z:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    .line 64
    .line 65
    iget v2, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    .line 66
    .line 67
    int-to-double v2, v2

    .line 68
    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    invoke-direct {p0, v4, v2, v3, v1}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    :cond_3
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iput-boolean v5, p0, Lcom/kwad/sdk/core/g/c;->aXN:Z

    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXY:Lcom/kwad/sdk/core/g/a;

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c;->NM()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/g/a;->t(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    return-void
.end method

.method private NM()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{\"x\": "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget-wide v2, v1, v2

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",\"y\":"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-wide v2, v1, v2

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ",\"z\":"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/sdk/core/g/c;->aXQ:[D

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    aget-wide v2, v1, v2

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "}"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method private NN()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXS:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXT:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXU:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXV:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXW:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXX:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/kwad/sdk/core/g/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/core/g/c;->aXO:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/kwad/sdk/core/g/c;)Lcom/kwad/sdk/core/g/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/sdk/core/g/c;->aXY:Lcom/kwad/sdk/core/g/a;

    return-object p0
.end method

.method private a(IDI)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    aget-wide v4, v2, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p2, v4, p2

    if-ltz p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    aget-wide p1, p2, p1

    cmpl-double p3, p1, v0

    const/4 v2, 0x1

    if-lez p3, :cond_0

    if-eq p4, v2, :cond_1

    :cond_0
    cmpg-double p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x2

    if-ne p4, p1, :cond_2

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public static synthetic b(Lcom/kwad/sdk/core/g/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/core/g/c;->aXO:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/kwad/sdk/core/g/c;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/core/g/c;->aXP:D

    return-wide v0
.end method

.method private c(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)Z
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXS:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->x:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->x:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXS:Z

    goto :goto_0

    :cond_0
    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXV:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->x:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->x:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXV:Z

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    const/4 v2, 0x1

    aget-wide v6, v0, v2

    cmpl-double v0, v6, v4

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXT:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->y:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    int-to-double v6, v0

    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->y:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    invoke-direct {p0, v2, v6, v7, v0}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXT:Z

    goto :goto_1

    :cond_2
    cmpg-double v0, v6, v4

    if-gez v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXW:Z

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->y:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    int-to-double v6, v0

    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->y:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    invoke-direct {p0, v2, v6, v7, v0}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXW:Z

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    const/4 v3, 0x2

    aget-wide v6, v0, v3

    cmpl-double v0, v6, v4

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXU:Z

    if-nez v0, :cond_4

    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->z:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    int-to-double v4, p1

    iget-object p1, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->z:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/c;->aXU:Z

    goto :goto_2

    :cond_4
    cmpg-double v0, v6, v4

    if-gez v0, :cond_5

    .line 12
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXX:Z

    if-nez v0, :cond_5

    .line 13
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->z:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->rotateDegree:I

    int-to-double v4, p1

    iget-object p1, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->z:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;->direction:I

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/kwad/sdk/core/g/c;->a(IDI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/c;->aXX:Z

    .line 14
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/kwad/sdk/core/g/c;->aXS:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/kwad/sdk/core/g/c;->aXV:Z

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    move p1, v1

    .line 15
    :goto_3
    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXT:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXW:Z

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    .line 16
    :goto_4
    iget-boolean v3, p0, Lcom/kwad/sdk/core/g/c;->aXU:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/kwad/sdk/core/g/c;->aXX:Z

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_5
    if-nez p1, :cond_9

    if-nez v0, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    .line 17
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c;->NN()V

    :cond_b
    return v1
.end method

.method public static synthetic d(Lcom/kwad/sdk/core/g/c;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/g/c;->aXR:[D

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/sdk/core/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c;->NK()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/kwad/sdk/core/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c;->NL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized NJ()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c;->NI()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/c;->aXN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final a(Lcom/kwad/sdk/core/g/a;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/g/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/core/g/c;->aXY:Lcom/kwad/sdk/core/g/a;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    return-void
.end method

.method public final b(Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    return-void
.end method

.method public final cb(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;->enable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c;->NI()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/c;->aXN:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/kwad/sdk/core/g/c;->aXZ:Lcom/kwad/sdk/core/g/c$a;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    new-instance p1, Lcom/kwad/sdk/core/g/c$a;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p0, v0}, Lcom/kwad/sdk/core/g/c$a;-><init>(Lcom/kwad/sdk/core/g/c;B)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/kwad/sdk/core/g/c;->aXZ:Lcom/kwad/sdk/core/g/c$a;

    .line 28
    .line 29
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXZ:Lcom/kwad/sdk/core/g/c$a;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/sdk/core/g/c;->aYa:Lcom/kwad/sdk/utils/bk$b;

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/kwad/sdk/utils/bk;->a(IILandroid/hardware/SensorEventListener;Lcom/kwad/sdk/utils/bk$b;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final declared-synchronized cc(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/kwad/sdk/core/g/c;->aXZ:Lcom/kwad/sdk/core/g/c$a;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/kwad/sdk/core/g/c;->aXZ:Lcom/kwad/sdk/core/g/c$a;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/utils/bk;->a(Landroid/hardware/SensorEventListener;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/kwad/sdk/core/g/c;->aXZ:Lcom/kwad/sdk/core/g/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    .line 27
    return-void
.end method
