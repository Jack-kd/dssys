.class public Lcom/ubix/ssp/ad/e/a0/n$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[B

.field static final d:Lcom/ubix/ssp/ad/e/a0/n$c;

.field static final e:Lcom/ubix/ssp/ad/e/a0/n$c;

.field static final f:Lcom/ubix/ssp/ad/e/a0/n$c;


# instance fields
.field private final g:[B

.field private final h:I

.field private final i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/n$c;->a:[C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/n$c;->b:[C

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/n$c;->c:[B

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/n$c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ubix/ssp/ad/e/a0/n$c;-><init>(Z[BIZ)V

    sput-object v1, Lcom/ubix/ssp/ad/e/a0/n$c;->d:Lcom/ubix/ssp/ad/e/a0/n$c;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/n$c;

    invoke-direct {v1, v5, v3, v4, v5}, Lcom/ubix/ssp/ad/e/a0/n$c;-><init>(Z[BIZ)V

    sput-object v1, Lcom/ubix/ssp/ad/e/a0/n$c;->e:Lcom/ubix/ssp/ad/e/a0/n$c;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/n$c;

    const/16 v3, 0x4c

    invoke-direct {v1, v2, v0, v3, v5}, Lcom/ubix/ssp/ad/e/a0/n$c;-><init>(Z[BIZ)V

    sput-object v1, Lcom/ubix/ssp/ad/e/a0/n$c;->f:Lcom/ubix/ssp/ad/e/a0/n$c;

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->i:Z

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->g:[B

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->h:I

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->j:Z

    return-void
.end method

.method public synthetic constructor <init>(Z[BIZLcom/ubix/ssp/ad/e/a0/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/e/a0/n$c;-><init>(Z[BIZ)V

    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->j:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_0
    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/2addr p1, v0

    :goto_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->h:I

    if-lez v0, :cond_2

    add-int/lit8 v1, p1, -0x1

    div-int/2addr v1, v0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->g:[B

    array-length v0, v0

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    :cond_2
    return p1
.end method

.method private a([BII[B)I
    .locals 14

    .line 2
    move/from16 v0, p3

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->i:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/n$c;->b:[C

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ubix/ssp/ad/e/a0/n$c;->a:[C

    :goto_0
    sub-int v2, v0, p2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int v3, p2, v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->h:I

    if-lez v4, :cond_1

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    if-le v2, v4, :cond_1

    move v2, v4

    :cond_1
    const/4 v4, 0x0

    move/from16 v5, p2

    move v6, v4

    :goto_1
    if-ge v5, v3, :cond_4

    add-int v7, v5, v2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v8, v5

    move v9, v6

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v10, v8, 0x1

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v8, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x3

    aget-byte v11, p1, v12

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v10, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v1, v12

    int-to-byte v12, v12

    aput-byte v12, p4, v9

    add-int/lit8 v12, v9, 0x2

    ushr-int/lit8 v13, v10, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-char v13, v1, v13

    int-to-byte v13, v13

    aput-byte v13, p4, v11

    add-int/lit8 v11, v9, 0x3

    ushr-int/lit8 v13, v10, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v13, v1, v13

    int-to-byte v13, v13

    aput-byte v13, p4, v12

    add-int/lit8 v9, v9, 0x4

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v1, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v11

    goto :goto_2

    :cond_2
    sub-int v5, v7, v5

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v6, v5

    iget v8, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->h:I

    if-ne v5, v8, :cond_3

    if-ge v7, v0, :cond_3

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->g:[B

    array-length v8, v5

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_3

    aget-byte v10, v5, v9

    add-int/lit8 v11, v6, 0x1

    aput-byte v10, p4, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v11

    goto :goto_3

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    if-ge v5, v0, :cond_8

    add-int/lit8 v2, v5, 0x1

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v5, v3, 0x2

    aget-char v5, v1, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v6

    const/16 v5, 0x3d

    if-ne v2, v0, :cond_6

    add-int/lit8 p1, v6, 0x2

    shl-int/lit8 v0, v3, 0x4

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    int-to-byte v0, v0

    aput-byte v0, p4, v4

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->j:Z

    if-eqz v0, :cond_5

    add-int/lit8 v0, v6, 0x3

    aput-byte v5, p4, p1

    add-int/lit8 v6, v6, 0x4

    aput-byte v5, p4, v0

    return v6

    :cond_5
    return p1

    :cond_6
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v0, v6, 0x2

    shl-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0x3f

    shr-int/lit8 v3, p1, 0x4

    or-int/2addr v2, v3

    aget-char v2, v1, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v4

    add-int/lit8 v2, v6, 0x3

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v1, p1

    int-to-byte p1, p1

    aput-byte p1, p4, v0

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/n$c;->j:Z

    if-eqz p1, :cond_7

    add-int/lit8 v6, v6, 0x4

    aput-byte v5, p4, v2

    return v6

    :cond_7
    return v2

    :cond_8
    return v6
.end method

.method public static synthetic a()[C
    .locals 1

    .line 4
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/n$c;->a:[C

    return-object v0
.end method

.method public static synthetic b()[C
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/n$c;->b:[C

    return-object v0
.end method


# virtual methods
.method public a([B)[B
    .locals 4

    .line 3
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/a0/n$c;->a(I)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/ubix/ssp/ad/e/a0/n$c;->a([BII[B)I

    move-result p1

    if-eq p1, v0, :cond_0

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public b([B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/n$c;->a([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method
