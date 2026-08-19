.class public final Lcom/smartdigimkt/p0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/o0/d;


# static fields
.field public static final D:I

.field public static final E:[B

.field public static final F:Lcom/smartdigimkt/j0/s;


# instance fields
.field public A:[Lcom/smartdigimkt/w0/e0;

.field public B:[Lcom/smartdigimkt/w0/e0;

.field public C:Z

.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Landroid/util/SparseArray;

.field public final d:Lcom/smartdigimkt/a1/l;

.field public final e:Lcom/smartdigimkt/a1/l;

.field public final f:Lcom/smartdigimkt/a1/l;

.field public final g:Lcom/smartdigimkt/a1/l;

.field public final h:[B

.field public final i:Ljava/util/ArrayDeque;

.field public final j:Ljava/util/ArrayDeque;

.field public k:I

.field public l:I

.field public m:J

.field public n:I

.field public o:Lcom/smartdigimkt/a1/l;

.field public p:J

.field public q:I

.field public r:J

.field public s:J

.field public t:J

.field public u:Lcom/smartdigimkt/p0/l;

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Lcom/smartdigimkt/o0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    const-string v0, "seig"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/smartdigimkt/a1/t;->a(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/smartdigimkt/p0/m;->D:I

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/smartdigimkt/p0/m;->E:[B

    .line 17
    .line 18
    new-instance v1, Lcom/smartdigimkt/j0/s;

    .line 19
    .line 20
    const/16 v27, 0x0

    .line 21
    .line 22
    const/16 v28, 0x0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v4, "application/x-emsg"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, -0x1

    .line 30
    const/4 v7, -0x1

    .line 31
    const/4 v8, -0x1

    .line 32
    const/4 v9, -0x1

    .line 33
    const/high16 v10, -0x40800000    # -1.0f

    .line 34
    .line 35
    const/4 v11, -0x1

    .line 36
    const/high16 v12, -0x40800000    # -1.0f

    .line 37
    .line 38
    const/4 v13, 0x0

    .line 39
    const/4 v14, -0x1

    .line 40
    const/4 v15, 0x0

    .line 41
    const/16 v16, -0x1

    .line 42
    .line 43
    const/16 v17, -0x1

    .line 44
    .line 45
    const/16 v18, -0x1

    .line 46
    .line 47
    const/16 v19, -0x1

    .line 48
    .line 49
    const/16 v20, -0x1

    .line 50
    .line 51
    const/16 v21, 0x0

    .line 52
    .line 53
    const/16 v22, 0x0

    .line 54
    .line 55
    const/16 v23, -0x1

    .line 56
    .line 57
    const-wide v24, 0x7fffffffffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    invoke-direct/range {v1 .. v28}, Lcom/smartdigimkt/j0/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/smartdigimkt/b1/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/smartdigimkt/n0/d;Lcom/smartdigimkt/r0/c;)V

    .line 65
    .line 66
    .line 67
    sput-object v1, Lcom/smartdigimkt/p0/m;->F:Lcom/smartdigimkt/j0/s;

    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/smartdigimkt/p0/m;->a:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->b:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/smartdigimkt/a1/l;

    .line 16
    .line 17
    const/16 v2, 0x10

    .line 18
    .line 19
    invoke-direct {v0, v2}, Lcom/smartdigimkt/a1/l;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    .line 23
    .line 24
    new-instance v0, Lcom/smartdigimkt/a1/l;

    .line 25
    .line 26
    sget-object v3, Lcom/smartdigimkt/a1/j;->a:[B

    .line 27
    .line 28
    invoke-direct {v0, v3}, Lcom/smartdigimkt/a1/l;-><init>([B)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->d:Lcom/smartdigimkt/a1/l;

    .line 32
    .line 33
    new-instance v0, Lcom/smartdigimkt/a1/l;

    .line 34
    .line 35
    const/4 v3, 0x5

    .line 36
    invoke-direct {v0, v3}, Lcom/smartdigimkt/a1/l;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->e:Lcom/smartdigimkt/a1/l;

    .line 40
    .line 41
    new-instance v0, Lcom/smartdigimkt/a1/l;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/smartdigimkt/a1/l;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    .line 47
    .line 48
    new-array v0, v2, [B

    .line 49
    .line 50
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->h:[B

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->j:Ljava/util/ArrayDeque;

    .line 65
    .line 66
    new-instance v0, Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    .line 72
    .line 73
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    iput-wide v2, p0, Lcom/smartdigimkt/p0/m;->s:J

    .line 79
    .line 80
    iput-wide v2, p0, Lcom/smartdigimkt/p0/m;->r:J

    .line 81
    .line 82
    iput-wide v2, p0, Lcom/smartdigimkt/p0/m;->t:J

    .line 83
    .line 84
    iput v1, p0, Lcom/smartdigimkt/p0/m;->k:I

    .line 85
    .line 86
    iput v1, p0, Lcom/smartdigimkt/p0/m;->n:I

    .line 87
    .line 88
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/smartdigimkt/n0/d;
    .locals 14

    .line 567
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_a

    .line 568
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartdigimkt/p0/b;

    .line 569
    iget v6, v5, Lcom/smartdigimkt/p0/c;->a:I

    sget v7, Lcom/smartdigimkt/p0/c;->V:I

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    .line 570
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 571
    :cond_0
    iget-object v5, v5, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    iget-object v5, v5, Lcom/smartdigimkt/a1/l;->a:[B

    .line 572
    new-instance v6, Lcom/smartdigimkt/a1/l;

    invoke-direct {v6, v5}, Lcom/smartdigimkt/a1/l;-><init>([B)V

    .line 573
    iget v8, v6, Lcom/smartdigimkt/a1/l;->c:I

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    goto :goto_2

    .line 574
    :cond_1
    invoke-virtual {v6, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 575
    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v8

    .line 576
    iget v9, v6, Lcom/smartdigimkt/a1/l;->c:I

    iget v10, v6, Lcom/smartdigimkt/a1/l;->b:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 577
    :cond_2
    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_2

    .line 578
    :cond_3
    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    :goto_1
    move-object v6, v1

    goto :goto_3

    .line 579
    :cond_4
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->b()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->b()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 580
    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    .line 581
    iget v8, v6, Lcom/smartdigimkt/a1/l;->b:I

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 582
    :cond_5
    invoke-virtual {v6}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v7

    .line 583
    iget v8, v6, Lcom/smartdigimkt/a1/l;->c:I

    iget v10, v6, Lcom/smartdigimkt/a1/l;->b:I

    sub-int/2addr v8, v10

    if-eq v7, v8, :cond_6

    :goto_2
    goto :goto_1

    .line 584
    :cond_6
    new-array v8, v7, [B

    .line 585
    invoke-virtual {v6, v8, v2, v7}, Lcom/smartdigimkt/a1/l;->a([BII)V

    .line 586
    new-instance v6, Lcom/smartdigimkt/p0/q;

    invoke-direct {v6, v9}, Lcom/smartdigimkt/p0/q;-><init>(Ljava/util/UUID;)V

    :goto_3
    if-nez v6, :cond_7

    move-object v6, v1

    goto :goto_4

    .line 587
    :cond_7
    iget-object v6, v6, Lcom/smartdigimkt/p0/q;->a:Ljava/util/UUID;

    :goto_4
    if-nez v6, :cond_8

    goto :goto_5

    .line 588
    :cond_8
    new-instance v7, Lcom/smartdigimkt/n0/c;

    invoke-direct {v7, v6, v5}, Lcom/smartdigimkt/n0/c;-><init>(Ljava/util/UUID;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    return-object v1

    .line 589
    :cond_b
    new-instance p0, Lcom/smartdigimkt/n0/d;

    .line 590
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/smartdigimkt/n0/c;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartdigimkt/n0/c;

    invoke-direct {p0, v1, v0}, Lcom/smartdigimkt/n0/d;-><init>(Ljava/lang/String;[Lcom/smartdigimkt/n0/c;)V

    return-object p0
.end method

.method public static a(Lcom/smartdigimkt/a1/l;ILcom/smartdigimkt/p0/u;)V
    .locals 4

    add-int/lit8 p1, p1, 0x8

    .line 549
    invoke-virtual {p0, p1}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 550
    invoke-virtual {p0}, Lcom/smartdigimkt/a1/l;->a()I

    move-result p1

    .line 551
    sget v0, Lcom/smartdigimkt/p0/c;->b:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 552
    :goto_0
    invoke-virtual {p0}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v2

    .line 553
    iget v3, p2, Lcom/smartdigimkt/p0/u;->e:I

    if-ne v2, v3, :cond_3

    .line 554
    iget-object v3, p2, Lcom/smartdigimkt/p0/u;->m:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 555
    iget p1, p0, Lcom/smartdigimkt/a1/l;->c:I

    iget v2, p0, Lcom/smartdigimkt/a1/l;->b:I

    sub-int/2addr p1, v2

    .line 556
    iget-object v2, p2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    if-eqz v2, :cond_1

    .line 557
    iget v2, v2, Lcom/smartdigimkt/a1/l;->c:I

    if-ge v2, p1, :cond_2

    .line 558
    :cond_1
    new-instance v2, Lcom/smartdigimkt/a1/l;

    invoke-direct {v2, p1}, Lcom/smartdigimkt/a1/l;-><init>(I)V

    iput-object v2, p2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    .line 559
    :cond_2
    iput p1, p2, Lcom/smartdigimkt/p0/u;->o:I

    .line 560
    iput-boolean v1, p2, Lcom/smartdigimkt/p0/u;->l:Z

    .line 561
    iput-boolean v1, p2, Lcom/smartdigimkt/p0/u;->q:Z

    .line 562
    iget-object v1, p2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    iget-object v1, v1, Lcom/smartdigimkt/a1/l;->a:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/smartdigimkt/a1/l;->a([BII)V

    .line 563
    iget-object p0, p2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    invoke-virtual {p0, v0}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 564
    iput-boolean v0, p2, Lcom/smartdigimkt/p0/u;->q:Z

    return-void

    .line 565
    :cond_3
    new-instance p0, Lcom/smartdigimkt/j0/y;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length mismatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/smartdigimkt/p0/u;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw p0

    .line 566
    :cond_4
    new-instance p0, Lcom/smartdigimkt/j0/y;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/smartdigimkt/o0/b;Lcom/smartdigimkt/o0/h;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 11
    :goto_0
    iget v2, v0, Lcom/smartdigimkt/p0/m;->k:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_37

    if-eq v2, v6, :cond_2c

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_27

    if-ne v2, v11, :cond_15

    .line 12
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    if-nez v2, :cond_6

    .line 13
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-object v15, v5

    move v14, v7

    :goto_1
    if-ge v14, v13, :cond_2

    .line 15
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p2, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/smartdigimkt/p0/l;

    const/16 v16, 0x6

    .line 16
    iget v12, v3, Lcom/smartdigimkt/p0/l;->g:I

    iget-object v8, v3, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    const/16 v18, 0x8

    iget v4, v8, Lcom/smartdigimkt/p0/u;->d:I

    if-ne v12, v4, :cond_0

    goto :goto_2

    .line 17
    :cond_0
    iget-object v4, v8, Lcom/smartdigimkt/p0/u;->f:[J

    aget-wide v19, v4, v12

    cmp-long v4, v19, v9

    if-gez v4, :cond_1

    move-object v15, v3

    move-wide/from16 v9, v19

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p2

    goto :goto_1

    :cond_2
    move/from16 p2, v3

    const/16 v16, 0x6

    const/16 v18, 0x8

    if-nez v15, :cond_4

    .line 18
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->p:J

    .line 19
    iget-wide v4, v1, Lcom/smartdigimkt/o0/b;->d:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_3

    .line 20
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/o0/b;->b(I)V

    .line 21
    iput v7, v0, Lcom/smartdigimkt/p0/m;->k:I

    .line 22
    iput v7, v0, Lcom/smartdigimkt/p0/m;->n:I

    goto :goto_0

    .line 23
    :cond_3
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_4
    iget-object v2, v15, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v2, v2, Lcom/smartdigimkt/p0/u;->f:[J

    iget v3, v15, Lcom/smartdigimkt/p0/l;->g:I

    aget-wide v3, v2, v3

    .line 25
    iget-wide v8, v1, Lcom/smartdigimkt/o0/b;->d:J

    sub-long/2addr v3, v8

    long-to-int v2, v3

    if-gez v2, :cond_5

    move v2, v7

    .line 26
    :cond_5
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/o0/b;->b(I)V

    .line 27
    iput-object v15, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    goto :goto_3

    :cond_6
    move/from16 p2, v3

    const/16 v16, 0x6

    const/16 v18, 0x8

    .line 28
    :goto_3
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    iget-object v3, v2, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v3, v3, Lcom/smartdigimkt/p0/u;->h:[I

    iget v4, v2, Lcom/smartdigimkt/p0/l;->e:I

    aget v3, v3, v4

    iput v3, v0, Lcom/smartdigimkt/p0/m;->v:I

    .line 29
    iget v8, v2, Lcom/smartdigimkt/p0/l;->h:I

    if-ge v4, v8, :cond_d

    .line 30
    invoke-virtual {v1, v3}, Lcom/smartdigimkt/o0/b;->b(I)V

    .line 31
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    .line 32
    iget-object v2, v1, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 33
    iget-boolean v3, v2, Lcom/smartdigimkt/p0/u;->l:Z

    if-nez v3, :cond_7

    goto :goto_5

    .line 34
    :cond_7
    iget-object v3, v2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    .line 35
    iget-object v4, v2, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    iget v4, v4, Lcom/smartdigimkt/p0/j;->a:I

    .line 36
    iget-object v2, v2, Lcom/smartdigimkt/p0/u;->n:Lcom/smartdigimkt/p0/t;

    if-eqz v2, :cond_8

    goto :goto_4

    .line 37
    :cond_8
    iget-object v2, v1, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    .line 38
    iget-object v2, v2, Lcom/smartdigimkt/p0/s;->k:[Lcom/smartdigimkt/p0/t;

    if-nez v2, :cond_9

    move-object v2, v5

    goto :goto_4

    .line 39
    :cond_9
    aget-object v2, v2, v4

    .line 40
    :goto_4
    iget v2, v2, Lcom/smartdigimkt/p0/t;->c:I

    if-eqz v2, :cond_a

    .line 41
    iget v4, v3, Lcom/smartdigimkt/a1/l;->b:I

    add-int/2addr v4, v2

    .line 42
    invoke-virtual {v3, v4}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 43
    :cond_a
    iget-object v2, v1, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v2, v2, Lcom/smartdigimkt/p0/u;->m:[Z

    iget v1, v1, Lcom/smartdigimkt/p0/l;->e:I

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_b

    .line 44
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->j()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    .line 45
    iget v2, v3, Lcom/smartdigimkt/a1/l;->b:I

    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 46
    :cond_b
    :goto_5
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    .line 47
    iget v2, v1, Lcom/smartdigimkt/p0/l;->e:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/smartdigimkt/p0/l;->e:I

    .line 48
    iget v2, v1, Lcom/smartdigimkt/p0/l;->f:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/smartdigimkt/p0/l;->f:I

    .line 49
    iget-object v3, v1, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v3, v3, Lcom/smartdigimkt/p0/u;->g:[I

    iget v4, v1, Lcom/smartdigimkt/p0/l;->g:I

    aget v3, v3, v4

    if-ne v2, v3, :cond_c

    add-int/2addr v4, v6

    .line 50
    iput v4, v1, Lcom/smartdigimkt/p0/l;->g:I

    .line 51
    iput v7, v1, Lcom/smartdigimkt/p0/l;->f:I

    .line 52
    iput-object v5, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    .line 53
    :cond_c
    iput v11, v0, Lcom/smartdigimkt/p0/m;->k:I

    goto/16 :goto_15

    .line 54
    :cond_d
    iget-object v2, v2, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    iget v2, v2, Lcom/smartdigimkt/p0/s;->g:I

    if-ne v2, v6, :cond_e

    add-int/lit8 v3, v3, -0x8

    .line 55
    iput v3, v0, Lcom/smartdigimkt/p0/m;->v:I

    move/from16 v2, v18

    .line 56
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/o0/b;->b(I)V

    .line 57
    :cond_e
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    .line 58
    iget-object v3, v2, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 59
    iget-boolean v4, v3, Lcom/smartdigimkt/p0/u;->l:Z

    if-nez v4, :cond_f

    move v4, v7

    goto :goto_9

    .line 60
    :cond_f
    iget-object v4, v3, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    iget v4, v4, Lcom/smartdigimkt/p0/j;->a:I

    .line 61
    iget-object v8, v3, Lcom/smartdigimkt/p0/u;->n:Lcom/smartdigimkt/p0/t;

    if-eqz v8, :cond_10

    goto :goto_6

    .line 62
    :cond_10
    iget-object v8, v2, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    .line 63
    iget-object v8, v8, Lcom/smartdigimkt/p0/s;->k:[Lcom/smartdigimkt/p0/t;

    if-nez v8, :cond_11

    move-object v8, v5

    goto :goto_6

    .line 64
    :cond_11
    aget-object v8, v8, v4

    .line 65
    :goto_6
    iget v4, v8, Lcom/smartdigimkt/p0/t;->c:I

    if-eqz v4, :cond_12

    .line 66
    iget-object v8, v3, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    goto :goto_7

    .line 67
    :cond_12
    iget-object v4, v8, Lcom/smartdigimkt/p0/t;->d:[B

    .line 68
    iget-object v8, v2, Lcom/smartdigimkt/p0/l;->j:Lcom/smartdigimkt/a1/l;

    array-length v9, v4

    .line 69
    iput-object v4, v8, Lcom/smartdigimkt/a1/l;->a:[B

    .line 70
    iput v9, v8, Lcom/smartdigimkt/a1/l;->c:I

    .line 71
    iput v7, v8, Lcom/smartdigimkt/a1/l;->b:I

    .line 72
    array-length v4, v4

    .line 73
    :goto_7
    iget-object v3, v3, Lcom/smartdigimkt/p0/u;->m:[Z

    iget v9, v2, Lcom/smartdigimkt/p0/l;->e:I

    aget-boolean v3, v3, v9

    .line 74
    iget-object v9, v2, Lcom/smartdigimkt/p0/l;->i:Lcom/smartdigimkt/a1/l;

    iget-object v10, v9, Lcom/smartdigimkt/a1/l;->a:[B

    if-eqz v3, :cond_13

    const/16 v12, 0x80

    goto :goto_8

    :cond_13
    move v12, v7

    :goto_8
    or-int/2addr v12, v4

    int-to-byte v12, v12

    aput-byte v12, v10, v7

    .line 75
    invoke-virtual {v9, v7}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 76
    iget-object v9, v2, Lcom/smartdigimkt/p0/l;->a:Lcom/smartdigimkt/w0/e0;

    iget-object v10, v2, Lcom/smartdigimkt/p0/l;->i:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v9, v6, v10}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    .line 77
    iget-object v9, v2, Lcom/smartdigimkt/p0/l;->a:Lcom/smartdigimkt/w0/e0;

    invoke-virtual {v9, v4, v8}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    if-nez v3, :cond_14

    add-int/2addr v4, v6

    goto :goto_9

    .line 78
    :cond_14
    iget-object v3, v2, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v3, v3, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    .line 79
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->j()I

    move-result v8

    .line 80
    iget v9, v3, Lcom/smartdigimkt/a1/l;->b:I

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v3, v9}, Lcom/smartdigimkt/a1/l;->c(I)V

    mul-int/lit8 v8, v8, 0x6

    add-int/lit8 v8, v8, 0x2

    .line 81
    iget-object v2, v2, Lcom/smartdigimkt/p0/l;->a:Lcom/smartdigimkt/w0/e0;

    invoke-virtual {v2, v8, v3}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    add-int/2addr v4, v6

    add-int/2addr v4, v8

    .line 82
    :goto_9
    iput v4, v0, Lcom/smartdigimkt/p0/m;->w:I

    .line 83
    iget v2, v0, Lcom/smartdigimkt/p0/m;->v:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/smartdigimkt/p0/m;->v:I

    const/4 v2, 0x4

    .line 84
    iput v2, v0, Lcom/smartdigimkt/p0/m;->k:I

    .line 85
    iput v7, v0, Lcom/smartdigimkt/p0/m;->x:I

    goto :goto_a

    :cond_15
    move/from16 p2, v3

    const/16 v16, 0x6

    .line 86
    :goto_a
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    iget-object v3, v2, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 87
    iget-object v4, v2, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    .line 88
    iget-object v8, v2, Lcom/smartdigimkt/p0/l;->a:Lcom/smartdigimkt/w0/e0;

    .line 89
    iget v2, v2, Lcom/smartdigimkt/p0/l;->e:I

    .line 90
    iget-object v9, v3, Lcom/smartdigimkt/p0/u;->j:[J

    aget-wide v12, v9, v2

    iget-object v9, v3, Lcom/smartdigimkt/p0/u;->i:[I

    aget v9, v9, v2

    int-to-long v9, v9

    add-long/2addr v12, v9

    const-wide/16 v9, 0x3e8

    mul-long v19, v12, v9

    .line 91
    iget v9, v4, Lcom/smartdigimkt/p0/s;->j:I

    if-eqz v9, :cond_1f

    .line 92
    iget-object v10, v0, Lcom/smartdigimkt/p0/m;->e:Lcom/smartdigimkt/a1/l;

    iget-object v10, v10, Lcom/smartdigimkt/a1/l;->a:[B

    .line 93
    aput-byte v7, v10, v7

    .line 94
    aput-byte v7, v10, v6

    .line 95
    aput-byte v7, v10, p2

    add-int/lit8 v12, v9, 0x1

    const/16 v17, 0x4

    rsub-int/lit8 v9, v9, 0x4

    .line 96
    :goto_b
    iget v13, v0, Lcom/smartdigimkt/p0/m;->w:I

    iget v14, v0, Lcom/smartdigimkt/p0/m;->v:I

    if-ge v13, v14, :cond_1e

    .line 97
    iget v13, v0, Lcom/smartdigimkt/p0/m;->x:I

    const-string v14, "video/hevc"

    if-nez v13, :cond_1a

    .line 98
    invoke-virtual {v1, v10, v9, v12, v7}, Lcom/smartdigimkt/o0/b;->a([BIIZ)Z

    .line 99
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->e:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v13, v7}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 100
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->e:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v13}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v13

    sub-int/2addr v13, v6

    iput v13, v0, Lcom/smartdigimkt/p0/m;->x:I

    .line 101
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->d:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v13, v7}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 102
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->d:Lcom/smartdigimkt/a1/l;

    const/4 v15, 0x4

    invoke-virtual {v8, v15, v13}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    .line 103
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->e:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v8, v6, v13}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    .line 104
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->B:[Lcom/smartdigimkt/w0/e0;

    array-length v13, v13

    if-lez v13, :cond_18

    iget-object v13, v4, Lcom/smartdigimkt/p0/s;->f:Lcom/smartdigimkt/j0/s;

    iget-object v13, v13, Lcom/smartdigimkt/j0/s;->f:Ljava/lang/String;

    aget-byte v18, v10, v15

    .line 105
    const-string v15, "video/avc"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    and-int/lit8 v15, v18, 0x1f

    move/from16 v25, v6

    move/from16 v6, v16

    if-eq v15, v6, :cond_17

    goto :goto_c

    :cond_16
    move/from16 v25, v6

    move/from16 v6, v16

    .line 106
    :goto_c
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    and-int/lit8 v13, v18, 0x7e

    shr-int/lit8 v13, v13, 0x1

    const/16 v14, 0x27

    if-ne v13, v14, :cond_19

    :cond_17
    move/from16 v13, v25

    goto :goto_d

    :cond_18
    move/from16 v25, v6

    move/from16 v6, v16

    :cond_19
    move v13, v7

    .line 107
    :goto_d
    iput-boolean v13, v0, Lcom/smartdigimkt/p0/m;->y:Z

    .line 108
    iget v13, v0, Lcom/smartdigimkt/p0/m;->w:I

    add-int/lit8 v13, v13, 0x5

    iput v13, v0, Lcom/smartdigimkt/p0/m;->w:I

    .line 109
    iget v13, v0, Lcom/smartdigimkt/p0/m;->v:I

    add-int/2addr v13, v9

    iput v13, v0, Lcom/smartdigimkt/p0/m;->v:I

    move/from16 v16, v6

    move/from16 v6, v25

    goto :goto_b

    :cond_1a
    move/from16 v25, v6

    move/from16 v6, v16

    .line 110
    iget-boolean v15, v0, Lcom/smartdigimkt/p0/m;->y:Z

    if-eqz v15, :cond_1d

    .line 111
    iget-object v15, v0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v15, v13}, Lcom/smartdigimkt/a1/l;->b(I)V

    .line 112
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    iget-object v13, v13, Lcom/smartdigimkt/a1/l;->a:[B

    iget v15, v0, Lcom/smartdigimkt/p0/m;->x:I

    .line 113
    invoke-virtual {v1, v13, v7, v15, v7}, Lcom/smartdigimkt/o0/b;->a([BIIZ)Z

    .line 114
    iget-object v13, v0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    iget v15, v0, Lcom/smartdigimkt/p0/m;->x:I

    invoke-virtual {v8, v15, v13}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    .line 115
    iget v13, v0, Lcom/smartdigimkt/p0/m;->x:I

    .line 116
    iget-object v15, v0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    iget-object v6, v15, Lcom/smartdigimkt/a1/l;->a:[B

    .line 117
    iget v15, v15, Lcom/smartdigimkt/a1/l;->c:I

    .line 118
    invoke-static {v15, v6}, Lcom/smartdigimkt/a1/j;->a(I[B)I

    move-result v6

    .line 119
    iget-object v15, v0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    iget-object v11, v4, Lcom/smartdigimkt/p0/s;->f:Lcom/smartdigimkt/j0/s;

    iget-object v11, v11, Lcom/smartdigimkt/j0/s;->f:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v15, v11}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 120
    iget-object v11, v0, Lcom/smartdigimkt/p0/m;->f:Lcom/smartdigimkt/a1/l;

    if-ltz v6, :cond_1b

    .line 121
    iget-object v14, v11, Lcom/smartdigimkt/a1/l;->a:[B

    array-length v14, v14

    if-gt v6, v14, :cond_1c

    .line 122
    iput v6, v11, Lcom/smartdigimkt/a1/l;->c:I

    goto :goto_e

    .line 123
    :cond_1b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 125
    :cond_1d
    invoke-virtual {v8, v1, v13}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/o0/b;I)I

    move-result v13

    .line 126
    :goto_e
    iget v6, v0, Lcom/smartdigimkt/p0/m;->w:I

    add-int/2addr v6, v13

    iput v6, v0, Lcom/smartdigimkt/p0/m;->w:I

    .line 127
    iget v6, v0, Lcom/smartdigimkt/p0/m;->x:I

    sub-int/2addr v6, v13

    iput v6, v0, Lcom/smartdigimkt/p0/m;->x:I

    move/from16 v6, v25

    const/4 v11, 0x3

    const/16 v16, 0x6

    goto/16 :goto_b

    :cond_1e
    move/from16 v25, v6

    goto :goto_10

    :cond_1f
    move/from16 v25, v6

    .line 128
    :goto_f
    iget v6, v0, Lcom/smartdigimkt/p0/m;->w:I

    iget v9, v0, Lcom/smartdigimkt/p0/m;->v:I

    if-ge v6, v9, :cond_20

    sub-int/2addr v9, v6

    .line 129
    invoke-virtual {v8, v1, v9}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/o0/b;I)I

    move-result v6

    .line 130
    iget v9, v0, Lcom/smartdigimkt/p0/m;->w:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/smartdigimkt/p0/m;->w:I

    goto :goto_f

    .line 131
    :cond_20
    :goto_10
    iget-object v1, v3, Lcom/smartdigimkt/p0/u;->k:[Z

    aget-boolean v1, v1, v2

    .line 132
    iget-boolean v2, v3, Lcom/smartdigimkt/p0/u;->l:Z

    if-eqz v2, :cond_23

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 133
    iget-object v2, v3, Lcom/smartdigimkt/p0/u;->n:Lcom/smartdigimkt/p0/t;

    if-eqz v2, :cond_21

    goto :goto_11

    .line 134
    :cond_21
    iget-object v2, v3, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    iget v2, v2, Lcom/smartdigimkt/p0/j;->a:I

    .line 135
    iget-object v3, v4, Lcom/smartdigimkt/p0/s;->k:[Lcom/smartdigimkt/p0/t;

    if-nez v3, :cond_22

    move-object v2, v5

    goto :goto_11

    .line 136
    :cond_22
    aget-object v2, v3, v2

    .line 137
    :goto_11
    iget-object v2, v2, Lcom/smartdigimkt/p0/t;->b:Lcom/smartdigimkt/o0/m;

    move-object/from16 v24, v2

    :goto_12
    move/from16 v21, v1

    goto :goto_13

    :cond_23
    move-object/from16 v24, v5

    goto :goto_12

    .line 138
    :goto_13
    iget v1, v0, Lcom/smartdigimkt/p0/m;->v:I

    const/16 v23, 0x0

    move/from16 v22, v1

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v24}, Lcom/smartdigimkt/w0/e0;->a(JIIILcom/smartdigimkt/o0/m;)V

    .line 139
    :cond_24
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 140
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartdigimkt/p0/k;

    .line 141
    iget v2, v0, Lcom/smartdigimkt/p0/m;->q:I

    iget v3, v1, Lcom/smartdigimkt/p0/k;->b:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/smartdigimkt/p0/m;->q:I

    .line 142
    iget-wide v2, v1, Lcom/smartdigimkt/p0/k;->a:J

    add-long v9, v19, v2

    .line 143
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    array-length v3, v2

    move v4, v7

    :goto_14
    if-ge v4, v3, :cond_24

    aget-object v8, v2, v4

    .line 144
    iget v12, v1, Lcom/smartdigimkt/p0/k;->b:I

    iget v13, v0, Lcom/smartdigimkt/p0/m;->q:I

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/smartdigimkt/w0/e0;->a(JIIILcom/smartdigimkt/o0/m;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 145
    :cond_25
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    .line 146
    iget v2, v1, Lcom/smartdigimkt/p0/l;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/smartdigimkt/p0/l;->e:I

    .line 147
    iget v2, v1, Lcom/smartdigimkt/p0/l;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/smartdigimkt/p0/l;->f:I

    .line 148
    iget-object v3, v1, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v3, v3, Lcom/smartdigimkt/p0/u;->g:[I

    iget v4, v1, Lcom/smartdigimkt/p0/l;->g:I

    aget v3, v3, v4

    if-ne v2, v3, :cond_26

    add-int/lit8 v4, v4, 0x1

    .line 149
    iput v4, v1, Lcom/smartdigimkt/p0/l;->g:I

    .line 150
    iput v7, v1, Lcom/smartdigimkt/p0/l;->f:I

    .line 151
    iput-object v5, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    :cond_26
    const/4 v1, 0x3

    .line 152
    iput v1, v0, Lcom/smartdigimkt/p0/m;->k:I

    :goto_15
    return v7

    .line 153
    :cond_27
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v7

    :goto_16
    if-ge v3, v2, :cond_29

    .line 154
    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartdigimkt/p0/l;

    iget-object v4, v4, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 155
    iget-boolean v6, v4, Lcom/smartdigimkt/p0/u;->q:Z

    if-eqz v6, :cond_28

    iget-wide v11, v4, Lcom/smartdigimkt/p0/u;->c:J

    cmp-long v4, v11, v9

    if-gez v4, :cond_28

    .line 156
    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartdigimkt/p0/l;

    move-object v5, v4

    move-wide v9, v11

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_29
    if-nez v5, :cond_2a

    const/4 v2, 0x3

    .line 157
    iput v2, v0, Lcom/smartdigimkt/p0/m;->k:I

    goto/16 :goto_0

    .line 158
    :cond_2a
    iget-wide v2, v1, Lcom/smartdigimkt/o0/b;->d:J

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-ltz v2, :cond_2b

    .line 159
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/o0/b;->b(I)V

    .line 160
    iget-object v2, v5, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 161
    iget-object v3, v2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    .line 162
    iget-object v3, v3, Lcom/smartdigimkt/a1/l;->a:[B

    iget v4, v2, Lcom/smartdigimkt/p0/u;->o:I

    .line 163
    invoke-virtual {v1, v3, v7, v4, v7}, Lcom/smartdigimkt/o0/b;->a([BIIZ)Z

    .line 164
    iget-object v3, v2, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v3, v7}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 165
    iput-boolean v7, v2, Lcom/smartdigimkt/p0/u;->q:Z

    goto/16 :goto_0

    .line 166
    :cond_2b
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    move/from16 p2, v3

    move/from16 v25, v6

    .line 167
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    long-to-int v2, v2

    iget v3, v0, Lcom/smartdigimkt/p0/m;->n:I

    sub-int/2addr v2, v3

    .line 168
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->o:Lcom/smartdigimkt/a1/l;

    if-eqz v3, :cond_35

    .line 169
    iget-object v3, v3, Lcom/smartdigimkt/a1/l;->a:[B

    const/16 v4, 0x8

    .line 170
    invoke-virtual {v1, v3, v4, v2, v7}, Lcom/smartdigimkt/o0/b;->a([BIIZ)Z

    .line 171
    new-instance v2, Lcom/smartdigimkt/p0/b;

    iget v3, v0, Lcom/smartdigimkt/p0/m;->l:I

    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->o:Lcom/smartdigimkt/a1/l;

    invoke-direct {v2, v3, v4}, Lcom/smartdigimkt/p0/b;-><init>(ILcom/smartdigimkt/a1/l;)V

    .line 172
    iget-wide v5, v1, Lcom/smartdigimkt/o0/b;->d:J

    .line 173
    iget-object v8, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 174
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartdigimkt/p0/a;

    .line 175
    iget-object v3, v3, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    .line 177
    :cond_2d
    sget v2, Lcom/smartdigimkt/p0/c;->B:I

    if-ne v3, v2, :cond_31

    const/16 v2, 0x8

    .line 178
    invoke-virtual {v4, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 179
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 180
    iget v3, v4, Lcom/smartdigimkt/a1/l;->b:I

    const/16 v17, 0x4

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v4, v3}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 181
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v12

    if-nez v2, :cond_2e

    .line 182
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v2

    .line 183
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v8

    :goto_17
    add-long/2addr v8, v5

    move-wide/from16 v26, v8

    move-wide v8, v2

    move-wide/from16 v2, v26

    goto :goto_18

    .line 184
    :cond_2e
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v2

    .line 185
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v8

    goto :goto_17

    :goto_18
    const-wide/32 v10, 0xf4240

    .line 186
    invoke-static/range {v8 .. v13}, Lcom/smartdigimkt/a1/t;->a(JJJ)J

    move-result-wide v5

    .line 187
    iget v10, v4, Lcom/smartdigimkt/a1/l;->b:I

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v4, v10}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 188
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->j()I

    move-result v14

    .line 189
    new-array v15, v14, [I

    .line 190
    new-array v10, v14, [J

    .line 191
    new-array v11, v14, [J

    .line 192
    new-array v7, v14, [J

    move-wide/from16 v20, v5

    move-wide/from16 v18, v8

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v14, :cond_30

    .line 193
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v9

    const/high16 v16, -0x80000000

    and-int v16, v9, v16

    if-nez v16, :cond_2f

    .line 194
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v22

    const v16, 0x7fffffff

    and-int v9, v9, v16

    .line 195
    aput v9, v15, v8

    .line 196
    aput-wide v2, v10, v8

    .line 197
    aput-wide v20, v7, v8

    add-long v18, v18, v22

    move-object v9, v10

    move-object/from16 v16, v11

    const-wide/32 v10, 0xf4240

    move-wide/from16 v20, v2

    move-object v2, v9

    move-object/from16 v3, v16

    move/from16 v16, v8

    move-wide/from16 v8, v18

    .line 198
    invoke-static/range {v8 .. v13}, Lcom/smartdigimkt/a1/t;->a(JJJ)J

    move-result-wide v10

    .line 199
    aget-wide v18, v7, v16

    sub-long v18, v10, v18

    aput-wide v18, v3, v16

    move-wide/from16 v18, v5

    .line 200
    iget v5, v4, Lcom/smartdigimkt/a1/l;->b:I

    const/16 v17, 0x4

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 201
    aget v5, v15, v16

    int-to-long v5, v5

    add-long v5, v20, v5

    add-int/lit8 v16, v16, 0x1

    move-wide/from16 v20, v10

    move-object v10, v2

    move-object v11, v3

    move-wide v2, v5

    move-wide/from16 v5, v18

    move-wide/from16 v18, v8

    move/from16 v8, v16

    goto :goto_19

    .line 202
    :cond_2f
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    move-wide/from16 v18, v5

    move-object v2, v10

    move-object v3, v11

    .line 203
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/smartdigimkt/o0/a;

    invoke-direct {v5, v15, v2, v3, v7}, Lcom/smartdigimkt/o0/a;-><init>([I[J[J[J)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 204
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/smartdigimkt/p0/m;->t:J

    .line 205
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/smartdigimkt/o0/k;

    check-cast v3, Lcom/smartdigimkt/w0/i;

    .line 206
    iput-object v2, v3, Lcom/smartdigimkt/w0/i;->p:Lcom/smartdigimkt/o0/k;

    .line 207
    iget-object v2, v3, Lcom/smartdigimkt/w0/i;->n:Landroid/os/Handler;

    iget-object v3, v3, Lcom/smartdigimkt/w0/i;->l:Lcom/smartdigimkt/w0/d;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v2, v25

    .line 208
    iput-boolean v2, v0, Lcom/smartdigimkt/p0/m;->C:Z

    goto :goto_1c

    .line 209
    :cond_31
    sget v2, Lcom/smartdigimkt/p0/c;->G0:I

    if-ne v3, v2, :cond_36

    .line 210
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    if-eqz v2, :cond_36

    array-length v2, v2

    if-nez v2, :cond_32

    goto :goto_1c

    :cond_32
    const/16 v2, 0xc

    .line 211
    invoke-virtual {v4, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 212
    iget v3, v4, Lcom/smartdigimkt/a1/l;->c:I

    iget v5, v4, Lcom/smartdigimkt/a1/l;->b:I

    sub-int v10, v3, v5

    .line 213
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->c()Ljava/lang/String;

    .line 214
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->c()Ljava/lang/String;

    .line 215
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v21

    .line 216
    invoke-virtual {v4}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    invoke-static/range {v17 .. v22}, Lcom/smartdigimkt/a1/t;->a(JJJ)J

    move-result-wide v5

    .line 217
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    array-length v7, v3

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v7, :cond_33

    aget-object v9, v3, v8

    .line 218
    invoke-virtual {v4, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 219
    invoke-virtual {v9, v10, v4}, Lcom/smartdigimkt/w0/e0;->a(ILcom/smartdigimkt/a1/l;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 220
    :cond_33
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->t:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v7

    if-eqz v4, :cond_34

    add-long v7, v2, v5

    .line 221
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_36

    aget-object v6, v2, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 222
    invoke-virtual/range {v6 .. v12}, Lcom/smartdigimkt/w0/e0;->a(JIIILcom/smartdigimkt/o0/m;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 223
    :cond_34
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->j:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/smartdigimkt/p0/k;

    invoke-direct {v3, v10, v5, v6}, Lcom/smartdigimkt/p0/k;-><init>(IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 224
    iget v2, v0, Lcom/smartdigimkt/p0/m;->q:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/smartdigimkt/p0/m;->q:I

    goto :goto_1c

    .line 225
    :cond_35
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/o0/b;->b(I)V

    .line 226
    :cond_36
    :goto_1c
    iget-wide v2, v1, Lcom/smartdigimkt/o0/b;->d:J

    .line 227
    invoke-virtual {v0, v2, v3}, Lcom/smartdigimkt/p0/m;->a(J)V

    goto/16 :goto_0

    :cond_37
    move/from16 p2, v3

    .line 228
    iget v2, v0, Lcom/smartdigimkt/p0/m;->n:I

    if-nez v2, :cond_39

    .line 229
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    iget-object v2, v2, Lcom/smartdigimkt/a1/l;->a:[B

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v4, v3}, Lcom/smartdigimkt/o0/b;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v1, -0x1

    return v1

    .line 230
    :cond_38
    iput v4, v0, Lcom/smartdigimkt/p0/m;->n:I

    .line 231
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v2, v6}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 232
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v2}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    .line 233
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v2}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v2

    iput v2, v0, Lcom/smartdigimkt/p0/m;->l:I

    .line 234
    :cond_39
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    const-wide/16 v6, 0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_3a

    .line 235
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    iget-object v2, v2, Lcom/smartdigimkt/a1/l;->a:[B

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 236
    invoke-virtual {v1, v2, v4, v4, v6}, Lcom/smartdigimkt/o0/b;->a([BIIZ)Z

    .line 237
    iget v2, v0, Lcom/smartdigimkt/p0/m;->n:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/smartdigimkt/p0/m;->n:I

    .line 238
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    invoke-virtual {v2}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    goto :goto_1d

    :cond_3a
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3c

    .line 239
    iget-wide v2, v1, Lcom/smartdigimkt/o0/b;->c:J

    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_3b

    .line 240
    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 241
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartdigimkt/p0/a;

    iget-wide v2, v2, Lcom/smartdigimkt/p0/a;->P0:J

    :cond_3b
    cmp-long v4, v2, v6

    if-eqz v4, :cond_3c

    .line 242
    iget-wide v6, v1, Lcom/smartdigimkt/o0/b;->d:J

    sub-long/2addr v2, v6

    .line 243
    iget v4, v0, Lcom/smartdigimkt/p0/m;->n:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    .line 244
    :cond_3c
    :goto_1d
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    iget v4, v0, Lcom/smartdigimkt/p0/m;->n:I

    int-to-long v6, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_48

    .line 245
    iget-wide v2, v1, Lcom/smartdigimkt/o0/b;->d:J

    sub-long/2addr v2, v6

    .line 246
    iget v4, v0, Lcom/smartdigimkt/p0/m;->l:I

    sget v6, Lcom/smartdigimkt/p0/c;->L:I

    if-ne v4, v6, :cond_3d

    .line 247
    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v4, :cond_3d

    .line 248
    iget-object v7, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartdigimkt/p0/l;

    iget-object v7, v7, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 249
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    iput-wide v2, v7, Lcom/smartdigimkt/p0/u;->c:J

    .line 251
    iput-wide v2, v7, Lcom/smartdigimkt/p0/u;->b:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 252
    :cond_3d
    iget v4, v0, Lcom/smartdigimkt/p0/m;->l:I

    sget v6, Lcom/smartdigimkt/p0/c;->i:I

    if-ne v4, v6, :cond_3f

    .line 253
    iput-object v5, v0, Lcom/smartdigimkt/p0/m;->u:Lcom/smartdigimkt/p0/l;

    .line 254
    iget-wide v4, v0, Lcom/smartdigimkt/p0/m;->m:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/smartdigimkt/p0/m;->p:J

    .line 255
    iget-boolean v4, v0, Lcom/smartdigimkt/p0/m;->C:Z

    if-nez v4, :cond_3e

    .line 256
    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    new-instance v5, Lcom/smartdigimkt/o0/j;

    iget-wide v6, v0, Lcom/smartdigimkt/p0/m;->s:J

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/smartdigimkt/o0/j;-><init>(JJ)V

    check-cast v4, Lcom/smartdigimkt/w0/i;

    .line 257
    iput-object v5, v4, Lcom/smartdigimkt/w0/i;->p:Lcom/smartdigimkt/o0/k;

    .line 258
    iget-object v2, v4, Lcom/smartdigimkt/w0/i;->n:Landroid/os/Handler;

    iget-object v3, v4, Lcom/smartdigimkt/w0/i;->l:Lcom/smartdigimkt/w0/d;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    .line 259
    iput-boolean v2, v0, Lcom/smartdigimkt/p0/m;->C:Z

    :cond_3e
    move/from16 v2, p2

    .line 260
    iput v2, v0, Lcom/smartdigimkt/p0/m;->k:I

    goto/16 :goto_0

    .line 261
    :cond_3f
    sget v2, Lcom/smartdigimkt/p0/c;->C:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->E:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->F:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->G:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->H:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->L:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->M:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->N:I

    if-eq v4, v2, :cond_46

    sget v2, Lcom/smartdigimkt/p0/c;->Q:I

    if-ne v4, v2, :cond_40

    goto/16 :goto_20

    .line 262
    :cond_40
    sget v2, Lcom/smartdigimkt/p0/c;->T:I

    const-wide/32 v6, 0x7fffffff

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->S:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->D:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->B:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->U:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->x:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->y:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->P:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->z:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->A:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->V:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->d0:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->e0:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->i0:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->h0:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->f0:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->g0:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->R:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->O:I

    if-eq v4, v2, :cond_43

    sget v2, Lcom/smartdigimkt/p0/c;->G0:I

    if-ne v4, v2, :cond_41

    goto :goto_1f

    .line 263
    :cond_41
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_42

    .line 264
    iput-object v5, v0, Lcom/smartdigimkt/p0/m;->o:Lcom/smartdigimkt/a1/l;

    const/4 v2, 0x1

    .line 265
    iput v2, v0, Lcom/smartdigimkt/p0/m;->k:I

    goto/16 :goto_0

    .line 266
    :cond_42
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_43
    :goto_1f
    iget v2, v0, Lcom/smartdigimkt/p0/m;->n:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_45

    .line 268
    iget-wide v2, v0, Lcom/smartdigimkt/p0/m;->m:J

    cmp-long v5, v2, v6

    if-gtz v5, :cond_44

    .line 269
    new-instance v5, Lcom/smartdigimkt/a1/l;

    long-to-int v2, v2

    invoke-direct {v5, v2}, Lcom/smartdigimkt/a1/l;-><init>(I)V

    iput-object v5, v0, Lcom/smartdigimkt/p0/m;->o:Lcom/smartdigimkt/a1/l;

    .line 270
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->g:Lcom/smartdigimkt/a1/l;

    iget-object v2, v2, Lcom/smartdigimkt/a1/l;->a:[B

    iget-object v3, v5, Lcom/smartdigimkt/a1/l;->a:[B

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 271
    iput v2, v0, Lcom/smartdigimkt/p0/m;->k:I

    goto/16 :goto_0

    .line 272
    :cond_44
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_45
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_46
    :goto_20
    iget-wide v2, v1, Lcom/smartdigimkt/o0/b;->d:J

    .line 275
    iget-wide v4, v0, Lcom/smartdigimkt/p0/m;->m:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 276
    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/smartdigimkt/p0/a;

    iget v6, v0, Lcom/smartdigimkt/p0/m;->l:I

    invoke-direct {v5, v6, v2, v3}, Lcom/smartdigimkt/p0/a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 277
    iget-wide v4, v0, Lcom/smartdigimkt/p0/m;->m:J

    iget v6, v0, Lcom/smartdigimkt/p0/m;->n:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_47

    .line 278
    invoke-virtual {v0, v2, v3}, Lcom/smartdigimkt/p0/m;->a(J)V

    goto/16 :goto_0

    :cond_47
    const/4 v6, 0x0

    .line 279
    iput v6, v0, Lcom/smartdigimkt/p0/m;->k:I

    .line 280
    iput v6, v0, Lcom/smartdigimkt/p0/m;->n:I

    goto/16 :goto_0

    .line 281
    :cond_48
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a()V
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 536
    new-array v0, v0, [Lcom/smartdigimkt/w0/e0;

    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    .line 537
    iget v3, p0, Lcom/smartdigimkt/p0/m;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    iget-object v4, p0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    .line 539
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    check-cast v3, Lcom/smartdigimkt/w0/i;

    invoke-virtual {v3, v4}, Lcom/smartdigimkt/w0/i;->c(I)Lcom/smartdigimkt/w0/e0;

    move-result-object v3

    aput-object v3, v0, v1

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 540
    :goto_0
    iget-object v3, p0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartdigimkt/w0/e0;

    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->A:[Lcom/smartdigimkt/w0/e0;

    .line 541
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 542
    sget-object v6, Lcom/smartdigimkt/p0/m;->F:Lcom/smartdigimkt/j0/s;

    invoke-virtual {v5, v6}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/j0/s;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/smartdigimkt/p0/m;->B:[Lcom/smartdigimkt/w0/e0;

    if-nez v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/smartdigimkt/p0/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/smartdigimkt/w0/e0;

    iput-object v0, p0, Lcom/smartdigimkt/p0/m;->B:[Lcom/smartdigimkt/w0/e0;

    .line 545
    :goto_2
    iget-object v0, p0, Lcom/smartdigimkt/p0/m;->B:[Lcom/smartdigimkt/w0/e0;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    iget-object v3, p0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    check-cast v0, Lcom/smartdigimkt/w0/i;

    invoke-virtual {v0, v3}, Lcom/smartdigimkt/w0/i;->c(I)Lcom/smartdigimkt/w0/e0;

    move-result-object v0

    .line 547
    iget-object v3, p0, Lcom/smartdigimkt/p0/m;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartdigimkt/j0/s;

    invoke-virtual {v0, v3}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/j0/s;)V

    .line 548
    iget-object v3, p0, Lcom/smartdigimkt/p0/m;->B:[Lcom/smartdigimkt/w0/e0;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final a(J)V
    .locals 56

    move-object/from16 v0, p0

    .line 282
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartdigimkt/p0/a;

    iget-wide v3, v1, Lcom/smartdigimkt/p0/a;->P0:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_5c

    .line 283
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartdigimkt/p0/a;

    .line 284
    iget v3, v1, Lcom/smartdigimkt/p0/c;->a:I

    sget v4, Lcom/smartdigimkt/p0/c;->C:I

    const/16 v5, 0xc

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-ne v3, v4, :cond_d

    .line 285
    iget-object v3, v1, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/smartdigimkt/p0/m;->a(Ljava/util/ArrayList;)Lcom/smartdigimkt/n0/d;

    move-result-object v15

    .line 286
    sget v3, Lcom/smartdigimkt/p0/c;->N:I

    invoke-virtual {v1, v3}, Lcom/smartdigimkt/p0/a;->b(I)Lcom/smartdigimkt/p0/a;

    move-result-object v3

    .line 287
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 288
    iget-object v11, v3, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v6, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v6, v11, :cond_4

    .line 289
    iget-object v7, v3, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartdigimkt/p0/b;

    .line 290
    iget v12, v7, Lcom/smartdigimkt/p0/c;->a:I

    const/16 v18, 0x10

    sget v8, Lcom/smartdigimkt/p0/c;->z:I

    if-ne v12, v8, :cond_1

    .line 291
    iget-object v7, v7, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    .line 292
    invoke-virtual {v7, v5}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 293
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v8

    .line 294
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v12

    sub-int/2addr v12, v10

    .line 295
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v5

    .line 296
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v2

    .line 297
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v7

    .line 298
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Lcom/smartdigimkt/p0/j;

    invoke-direct {v10, v12, v5, v2, v7}, Lcom/smartdigimkt/p0/j;-><init>(IIII)V

    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 299
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/smartdigimkt/p0/j;

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 300
    :cond_1
    sget v2, Lcom/smartdigimkt/p0/c;->O:I

    if-ne v12, v2, :cond_3

    .line 301
    iget-object v2, v7, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    .line 302
    invoke-virtual {v2, v9}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 303
    invoke-virtual {v2}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_2

    .line 304
    invoke-virtual {v2}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v7

    :goto_2
    move-wide v13, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xc

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, 0x10

    .line 305
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 306
    iget-object v3, v1, Lcom/smartdigimkt/p0/a;->R0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_7

    .line 307
    iget-object v6, v1, Lcom/smartdigimkt/p0/a;->R0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/smartdigimkt/p0/a;

    .line 308
    iget v6, v11, Lcom/smartdigimkt/p0/c;->a:I

    sget v7, Lcom/smartdigimkt/p0/c;->E:I

    if-ne v6, v7, :cond_6

    .line 309
    sget v6, Lcom/smartdigimkt/p0/c;->D:I

    invoke-virtual {v1, v6}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v12

    iget v6, v0, Lcom/smartdigimkt/p0/m;->a:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/smartdigimkt/p0/i;->a(Lcom/smartdigimkt/p0/a;Lcom/smartdigimkt/p0/b;JLcom/smartdigimkt/n0/d;ZZ)Lcom/smartdigimkt/p0/s;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 310
    iget v7, v6, Lcom/smartdigimkt/p0/s;->a:I

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 311
    :cond_7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 312
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_9

    .line 313
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartdigimkt/p0/s;

    .line 314
    new-instance v6, Lcom/smartdigimkt/p0/l;

    iget-object v7, v0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    iget v8, v5, Lcom/smartdigimkt/p0/s;->b:I

    check-cast v7, Lcom/smartdigimkt/w0/i;

    invoke-virtual {v7, v3}, Lcom/smartdigimkt/w0/i;->c(I)Lcom/smartdigimkt/w0/e0;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/smartdigimkt/p0/l;-><init>(Lcom/smartdigimkt/w0/e0;)V

    .line 315
    iget v8, v5, Lcom/smartdigimkt/p0/s;->a:I

    .line 316
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/4 v9, 0x0

    .line 317
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartdigimkt/p0/j;

    goto :goto_7

    .line 318
    :cond_8
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartdigimkt/p0/j;

    .line 319
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    :goto_7
    iput-object v5, v6, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    .line 321
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    iput-object v8, v6, Lcom/smartdigimkt/p0/l;->d:Lcom/smartdigimkt/p0/j;

    .line 323
    iget-object v8, v5, Lcom/smartdigimkt/p0/s;->f:Lcom/smartdigimkt/j0/s;

    invoke-virtual {v7, v8}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/j0/s;)V

    .line 324
    invoke-virtual {v6}, Lcom/smartdigimkt/p0/l;->a()V

    .line 325
    iget-object v7, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    iget v8, v5, Lcom/smartdigimkt/p0/s;->a:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    iget-wide v6, v0, Lcom/smartdigimkt/p0/m;->s:J

    iget-wide v8, v5, Lcom/smartdigimkt/p0/s;->e:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/smartdigimkt/p0/m;->s:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 327
    :cond_9
    invoke-virtual {v0}, Lcom/smartdigimkt/p0/m;->a()V

    .line 328
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    check-cast v1, Lcom/smartdigimkt/w0/i;

    const/4 v10, 0x1

    .line 329
    iput-boolean v10, v1, Lcom/smartdigimkt/w0/i;->s:Z

    .line 330
    iget-object v2, v1, Lcom/smartdigimkt/w0/i;->n:Landroid/os/Handler;

    iget-object v1, v1, Lcom/smartdigimkt/w0/i;->l:Lcom/smartdigimkt/w0/d;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 331
    :cond_a
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_c

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_0

    .line 332
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartdigimkt/p0/s;

    .line 333
    iget-object v6, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    iget v7, v5, Lcom/smartdigimkt/p0/s;->a:I

    .line 334
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartdigimkt/p0/l;

    iget v7, v5, Lcom/smartdigimkt/p0/s;->a:I

    .line 335
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_b

    const/4 v9, 0x0

    .line 336
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartdigimkt/p0/j;

    goto :goto_9

    .line 337
    :cond_b
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartdigimkt/p0/j;

    .line 338
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    :goto_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    iput-object v5, v6, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    .line 341
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    iput-object v7, v6, Lcom/smartdigimkt/p0/l;->d:Lcom/smartdigimkt/p0/j;

    .line 343
    iget-object v7, v6, Lcom/smartdigimkt/p0/l;->a:Lcom/smartdigimkt/w0/e0;

    iget-object v5, v5, Lcom/smartdigimkt/p0/s;->f:Lcom/smartdigimkt/j0/s;

    invoke-virtual {v7, v5}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/j0/s;)V

    .line 344
    invoke-virtual {v6}, Lcom/smartdigimkt/p0/l;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 345
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_d
    const/16 v18, 0x10

    .line 346
    sget v2, Lcom/smartdigimkt/p0/c;->L:I

    if-ne v3, v2, :cond_5b

    .line 347
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    iget v3, v0, Lcom/smartdigimkt/p0/m;->a:I

    iget-object v4, v0, Lcom/smartdigimkt/p0/m;->h:[B

    .line 348
    iget-object v5, v1, Lcom/smartdigimkt/p0/a;->R0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v5, :cond_53

    .line 349
    iget-object v11, v1, Lcom/smartdigimkt/p0/a;->R0:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartdigimkt/p0/a;

    .line 350
    iget v12, v11, Lcom/smartdigimkt/p0/c;->a:I

    sget v13, Lcom/smartdigimkt/p0/c;->M:I

    if-ne v12, v13, :cond_52

    .line 351
    sget v12, Lcom/smartdigimkt/p0/c;->y:I

    invoke-virtual {v11, v12}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v12

    .line 352
    iget-object v12, v12, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    .line 353
    invoke-virtual {v12, v9}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 354
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v13

    .line 355
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v14

    .line 356
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v10, 0x1

    if-ne v15, v10, :cond_e

    const/4 v10, 0x0

    .line 357
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartdigimkt/p0/l;

    goto :goto_b

    .line 358
    :cond_e
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/smartdigimkt/p0/l;

    :goto_b
    if-nez v14, :cond_f

    const/4 v14, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_10

    :cond_f
    and-int/lit8 v10, v13, 0x1

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v10, :cond_10

    .line 359
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v6

    .line 360
    iget-object v10, v14, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iput-wide v6, v10, Lcom/smartdigimkt/p0/u;->b:J

    .line 361
    iput-wide v6, v10, Lcom/smartdigimkt/p0/u;->c:J

    .line 362
    :cond_10
    iget-object v6, v14, Lcom/smartdigimkt/p0/l;->d:Lcom/smartdigimkt/p0/j;

    and-int/lit8 v7, v13, 0x2

    if-eqz v7, :cond_11

    .line 363
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v7

    const/16 v20, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    :cond_11
    iget v7, v6, Lcom/smartdigimkt/p0/j;->a:I

    :goto_c
    and-int/lit8 v10, v13, 0x8

    if-eqz v10, :cond_12

    .line 364
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v10

    goto :goto_d

    :cond_12
    iget v10, v6, Lcom/smartdigimkt/p0/j;->b:I

    :goto_d
    and-int/lit8 v15, v13, 0x10

    if-eqz v15, :cond_13

    .line 365
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v15

    goto :goto_e

    :cond_13
    iget v15, v6, Lcom/smartdigimkt/p0/j;->c:I

    :goto_e
    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_14

    .line 366
    invoke-virtual {v12}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v6

    goto :goto_f

    :cond_14
    iget v6, v6, Lcom/smartdigimkt/p0/j;->d:I

    .line 367
    :goto_f
    iget-object v12, v14, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    new-instance v13, Lcom/smartdigimkt/p0/j;

    invoke-direct {v13, v7, v10, v15, v6}, Lcom/smartdigimkt/p0/j;-><init>(IIII)V

    iput-object v13, v12, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    :goto_10
    if-nez v14, :cond_15

    move-object/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v5

    move/from16 v27, v8

    move v15, v9

    move/from16 v5, v18

    const/4 v10, 0x1

    goto/16 :goto_35

    .line 368
    :cond_15
    iget-object v6, v14, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 369
    iget-wide v12, v6, Lcom/smartdigimkt/p0/u;->r:J

    .line 370
    invoke-virtual {v14}, Lcom/smartdigimkt/p0/l;->a()V

    .line 371
    sget v7, Lcom/smartdigimkt/p0/c;->x:I

    invoke-virtual {v11, v7}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v10

    if-eqz v10, :cond_17

    and-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_17

    .line 372
    invoke-virtual {v11, v7}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v7

    iget-object v7, v7, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    .line 373
    invoke-virtual {v7, v9}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 374
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    const/4 v12, 0x1

    if-ne v10, v12, :cond_16

    .line 375
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v12

    goto :goto_11

    :cond_16
    invoke-virtual {v7}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v12

    .line 376
    :cond_17
    :goto_11
    iget-object v7, v11, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    .line 377
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v24, v2

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v15, v10, :cond_1a

    .line 378
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v3

    move-object/from16 v3, v25

    check-cast v3, Lcom/smartdigimkt/p0/b;

    move/from16 v25, v5

    .line 379
    iget v5, v3, Lcom/smartdigimkt/p0/c;->a:I

    move/from16 v27, v8

    sget v8, Lcom/smartdigimkt/p0/c;->A:I

    if-ne v5, v8, :cond_18

    .line 380
    iget-object v3, v3, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    const/16 v5, 0xc

    .line 381
    invoke-virtual {v3, v5}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 382
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v3

    if-lez v3, :cond_19

    add-int/2addr v2, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_18
    const/16 v5, 0xc

    :cond_19
    :goto_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v25

    move/from16 v3, v26

    move/from16 v8, v27

    goto :goto_12

    :cond_1a
    move/from16 v26, v3

    move/from16 v25, v5

    move/from16 v27, v8

    const/4 v3, 0x0

    const/16 v5, 0xc

    .line 383
    iput v3, v14, Lcom/smartdigimkt/p0/l;->g:I

    .line 384
    iput v3, v14, Lcom/smartdigimkt/p0/l;->f:I

    .line 385
    iput v3, v14, Lcom/smartdigimkt/p0/l;->e:I

    .line 386
    iget-object v3, v14, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    .line 387
    iput v9, v3, Lcom/smartdigimkt/p0/u;->d:I

    .line 388
    iput v2, v3, Lcom/smartdigimkt/p0/u;->e:I

    .line 389
    iget-object v8, v3, Lcom/smartdigimkt/p0/u;->g:[I

    if-eqz v8, :cond_1b

    array-length v8, v8

    if-ge v8, v9, :cond_1c

    .line 390
    :cond_1b
    new-array v8, v9, [J

    iput-object v8, v3, Lcom/smartdigimkt/p0/u;->f:[J

    .line 391
    new-array v8, v9, [I

    iput-object v8, v3, Lcom/smartdigimkt/p0/u;->g:[I

    .line 392
    :cond_1c
    iget-object v8, v3, Lcom/smartdigimkt/p0/u;->h:[I

    if-eqz v8, :cond_1d

    array-length v8, v8

    if-ge v8, v2, :cond_1e

    :cond_1d
    mul-int/lit8 v2, v2, 0x7d

    .line 393
    div-int/lit8 v2, v2, 0x64

    .line 394
    new-array v8, v2, [I

    iput-object v8, v3, Lcom/smartdigimkt/p0/u;->h:[I

    .line 395
    new-array v8, v2, [I

    iput-object v8, v3, Lcom/smartdigimkt/p0/u;->i:[I

    .line 396
    new-array v8, v2, [J

    iput-object v8, v3, Lcom/smartdigimkt/p0/u;->j:[J

    .line 397
    new-array v8, v2, [Z

    iput-object v8, v3, Lcom/smartdigimkt/p0/u;->k:[Z

    .line 398
    new-array v2, v2, [Z

    iput-object v2, v3, Lcom/smartdigimkt/p0/u;->m:[Z

    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_14
    if-ge v2, v10, :cond_32

    .line 399
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v5, v28

    check-cast v5, Lcom/smartdigimkt/p0/b;

    const-wide/16 v30, 0x0

    .line 400
    iget v15, v5, Lcom/smartdigimkt/p0/c;->a:I

    sget v9, Lcom/smartdigimkt/p0/c;->A:I

    if-ne v15, v9, :cond_31

    add-int/lit8 v9, v3, 0x1

    .line 401
    iget-object v5, v5, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    const/16 v15, 0x8

    .line 402
    invoke-virtual {v5, v15}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 403
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v15

    move/from16 v28, v2

    .line 404
    iget-object v2, v14, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    move/from16 v32, v3

    .line 405
    iget-object v3, v14, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    move-object/from16 v33, v5

    .line 406
    iget-object v5, v3, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    move-object/from16 v34, v7

    .line 407
    iget-object v7, v3, Lcom/smartdigimkt/p0/u;->g:[I

    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v35

    aput v35, v7, v32

    .line 408
    iget-object v7, v3, Lcom/smartdigimkt/p0/u;->f:[J

    move-object/from16 v36, v7

    move/from16 v35, v8

    iget-wide v7, v3, Lcom/smartdigimkt/p0/u;->b:J

    aput-wide v7, v36, v32

    and-int/lit8 v37, v15, 0x1

    if-eqz v37, :cond_1f

    move-wide/from16 v37, v7

    .line 409
    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v7

    int-to-long v7, v7

    add-long v7, v37, v7

    aput-wide v7, v36, v32

    :cond_1f
    and-int/lit8 v7, v15, 0x4

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_15

    :cond_20
    const/4 v7, 0x0

    .line 410
    :goto_15
    iget v8, v5, Lcom/smartdigimkt/p0/j;->d:I

    if-eqz v7, :cond_21

    .line 411
    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v8

    :cond_21
    move/from16 v36, v7

    and-int/lit16 v7, v15, 0x100

    if-eqz v7, :cond_22

    const/4 v7, 0x1

    goto :goto_16

    :cond_22
    const/4 v7, 0x0

    :goto_16
    move/from16 v37, v7

    and-int/lit16 v7, v15, 0x200

    if-eqz v7, :cond_23

    const/4 v7, 0x1

    goto :goto_17

    :cond_23
    const/4 v7, 0x0

    :goto_17
    move/from16 v38, v7

    and-int/lit16 v7, v15, 0x400

    if-eqz v7, :cond_24

    const/4 v7, 0x1

    goto :goto_18

    :cond_24
    const/4 v7, 0x0

    :goto_18
    and-int/lit16 v15, v15, 0x800

    if-eqz v15, :cond_25

    const/4 v15, 0x1

    :goto_19
    move/from16 v39, v7

    goto :goto_1a

    :cond_25
    const/4 v15, 0x0

    goto :goto_19

    .line 412
    :goto_1a
    iget-object v7, v2, Lcom/smartdigimkt/p0/s;->h:[J

    move/from16 v40, v8

    if-eqz v7, :cond_26

    array-length v8, v7

    move-object/from16 v41, v7

    const/4 v7, 0x1

    if-ne v8, v7, :cond_26

    const/16 v19, 0x0

    aget-wide v7, v41, v19

    cmp-long v7, v7, v30

    if-nez v7, :cond_26

    .line 413
    iget-object v7, v2, Lcom/smartdigimkt/p0/s;->i:[J

    aget-wide v41, v7, v19

    iget-wide v7, v2, Lcom/smartdigimkt/p0/s;->c:J

    const-wide/16 v43, 0x3e8

    move-wide/from16 v45, v7

    invoke-static/range {v41 .. v46}, Lcom/smartdigimkt/a1/t;->a(JJJ)J

    move-result-wide v7

    move-wide/from16 v30, v7

    .line 414
    :cond_26
    iget-object v7, v3, Lcom/smartdigimkt/p0/u;->h:[I

    .line 415
    iget-object v8, v3, Lcom/smartdigimkt/p0/u;->i:[I

    move-object/from16 v41, v7

    .line 416
    iget-object v7, v3, Lcom/smartdigimkt/p0/u;->j:[J

    move-object/from16 v42, v7

    .line 417
    iget-object v7, v3, Lcom/smartdigimkt/p0/u;->k:[Z

    move-object/from16 v43, v7

    .line 418
    iget v7, v2, Lcom/smartdigimkt/p0/s;->b:I

    move-object/from16 v44, v8

    const/4 v8, 0x2

    if-ne v7, v8, :cond_27

    and-int/lit8 v7, v26, 0x1

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    goto :goto_1b

    :cond_27
    const/4 v7, 0x0

    .line 419
    :goto_1b
    iget-object v8, v3, Lcom/smartdigimkt/p0/u;->g:[I

    aget v8, v8, v32

    add-int v8, v35, v8

    move/from16 v16, v9

    move/from16 v51, v10

    .line 420
    iget-wide v9, v2, Lcom/smartdigimkt/p0/s;->c:J

    if-lez v32, :cond_28

    move-wide/from16 v49, v9

    .line 421
    iget-wide v9, v3, Lcom/smartdigimkt/p0/u;->r:J

    move-wide/from16 v45, v9

    :goto_1c
    move/from16 v2, v35

    goto :goto_1d

    :cond_28
    move-wide/from16 v49, v9

    move-wide/from16 v45, v12

    goto :goto_1c

    :goto_1d
    if-ge v2, v8, :cond_30

    if-eqz v37, :cond_29

    .line 422
    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v9

    goto :goto_1e

    .line 423
    :cond_29
    iget v9, v5, Lcom/smartdigimkt/p0/j;->b:I

    :goto_1e
    if-eqz v38, :cond_2a

    .line 424
    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v10

    goto :goto_1f

    :cond_2a
    iget v10, v5, Lcom/smartdigimkt/p0/j;->c:I

    :goto_1f
    if-nez v2, :cond_2b

    if-eqz v36, :cond_2b

    move/from16 v32, v2

    move/from16 v2, v40

    goto :goto_20

    :cond_2b
    if-eqz v39, :cond_2c

    .line 425
    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v32

    move/from16 v54, v32

    move/from16 v32, v2

    move/from16 v2, v54

    goto :goto_20

    :cond_2c
    move/from16 v32, v2

    iget v2, v5, Lcom/smartdigimkt/p0/j;->d:I

    :goto_20
    if-eqz v15, :cond_2d

    move/from16 v35, v2

    .line 426
    invoke-virtual/range {v33 .. v33}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v2

    move/from16 v52, v7

    move/from16 v53, v8

    int-to-long v7, v2

    const-wide/16 v47, 0x3e8

    mul-long v7, v7, v47

    .line 427
    div-long v7, v7, v49

    long-to-int v2, v7

    aput v2, v44, v32

    goto :goto_21

    :cond_2d
    move/from16 v35, v2

    move/from16 v52, v7

    move/from16 v53, v8

    const/16 v19, 0x0

    .line 428
    aput v19, v44, v32

    :goto_21
    const-wide/16 v47, 0x3e8

    .line 429
    invoke-static/range {v45 .. v50}, Lcom/smartdigimkt/a1/t;->a(JJJ)J

    move-result-wide v7

    move-wide/from16 v54, v45

    move-wide/from16 v45, v7

    move-wide/from16 v7, v54

    sub-long v45, v45, v30

    aput-wide v45, v42, v32

    .line 430
    aput v10, v41, v32

    shr-int/lit8 v2, v35, 0x10

    const/16 v20, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2f

    if-eqz v52, :cond_2e

    if-nez v32, :cond_2f

    :cond_2e
    const/4 v2, 0x1

    goto :goto_22

    :cond_2f
    const/4 v2, 0x0

    .line 431
    :goto_22
    aput-boolean v2, v43, v32

    int-to-long v9, v9

    add-long v45, v7, v9

    add-int/lit8 v2, v32, 0x1

    move/from16 v7, v52

    move/from16 v8, v53

    goto :goto_1d

    :cond_30
    move/from16 v53, v8

    move-wide/from16 v7, v45

    .line 432
    iput-wide v7, v3, Lcom/smartdigimkt/p0/u;->r:J

    move/from16 v3, v16

    move/from16 v8, v53

    goto :goto_23

    :cond_31
    move/from16 v28, v2

    move/from16 v32, v3

    move-object/from16 v34, v7

    move/from16 v35, v8

    move/from16 v51, v10

    :goto_23
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v7, v34

    move/from16 v10, v51

    const/16 v5, 0xc

    goto/16 :goto_14

    :cond_32
    const-wide/16 v30, 0x0

    .line 433
    iget-object v2, v14, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    iget-object v3, v6, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    iget v3, v3, Lcom/smartdigimkt/p0/j;->a:I

    .line 434
    iget-object v2, v2, Lcom/smartdigimkt/p0/s;->k:[Lcom/smartdigimkt/p0/t;

    if-nez v2, :cond_33

    const/4 v2, 0x0

    goto :goto_24

    .line 435
    :cond_33
    aget-object v2, v2, v3

    .line 436
    :goto_24
    sget v3, Lcom/smartdigimkt/p0/c;->d0:I

    invoke-virtual {v11, v3}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 437
    iget-object v3, v3, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    .line 438
    iget v5, v2, Lcom/smartdigimkt/p0/t;->c:I

    const/16 v15, 0x8

    .line 439
    invoke-virtual {v3, v15}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 440
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v7

    const/4 v10, 0x1

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_34

    .line 441
    iget v7, v3, Lcom/smartdigimkt/a1/l;->b:I

    add-int/2addr v7, v15

    invoke-virtual {v3, v7}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 442
    :cond_34
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->e()I

    move-result v7

    .line 443
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v8

    .line 444
    iget v9, v6, Lcom/smartdigimkt/p0/u;->e:I

    if-ne v8, v9, :cond_3b

    if-nez v7, :cond_36

    .line 445
    iget-object v7, v6, Lcom/smartdigimkt/p0/u;->m:[Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_25
    if-ge v9, v8, :cond_38

    .line 446
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->e()I

    move-result v12

    add-int/2addr v10, v12

    if-le v12, v5, :cond_35

    const/4 v12, 0x1

    goto :goto_26

    :cond_35
    const/4 v12, 0x0

    .line 447
    :goto_26
    aput-boolean v12, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_36
    if-le v7, v5, :cond_37

    const/4 v3, 0x1

    goto :goto_27

    :cond_37
    const/4 v3, 0x0

    :goto_27
    mul-int v10, v7, v8

    .line 448
    iget-object v5, v6, Lcom/smartdigimkt/p0/u;->m:[Z

    const/4 v9, 0x0

    invoke-static {v5, v9, v8, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 449
    :cond_38
    iget-object v3, v6, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    if-eqz v3, :cond_39

    .line 450
    iget v3, v3, Lcom/smartdigimkt/a1/l;->c:I

    if-ge v3, v10, :cond_3a

    .line 451
    :cond_39
    new-instance v3, Lcom/smartdigimkt/a1/l;

    invoke-direct {v3, v10}, Lcom/smartdigimkt/a1/l;-><init>(I)V

    iput-object v3, v6, Lcom/smartdigimkt/p0/u;->p:Lcom/smartdigimkt/a1/l;

    .line 452
    :cond_3a
    iput v10, v6, Lcom/smartdigimkt/p0/u;->o:I

    const/4 v10, 0x1

    .line 453
    iput-boolean v10, v6, Lcom/smartdigimkt/p0/u;->l:Z

    .line 454
    iput-boolean v10, v6, Lcom/smartdigimkt/p0/u;->q:Z

    goto :goto_28

    .line 455
    :cond_3b
    new-instance v1, Lcom/smartdigimkt/j0/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length mismatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/smartdigimkt/p0/u;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_3c
    :goto_28
    sget v3, Lcom/smartdigimkt/p0/c;->e0:I

    invoke-virtual {v11, v3}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 457
    iget-object v3, v3, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    const/16 v15, 0x8

    .line 458
    invoke-virtual {v3, v15}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 459
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3d

    .line 460
    iget v7, v3, Lcom/smartdigimkt/a1/l;->b:I

    add-int/2addr v7, v15

    invoke-virtual {v3, v7}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 461
    :cond_3d
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->h()I

    move-result v7

    if-ne v7, v10, :cond_3f

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 462
    iget-wide v7, v6, Lcom/smartdigimkt/p0/u;->c:J

    if-nez v5, :cond_3e

    .line 463
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v9

    goto :goto_29

    :cond_3e
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->i()J

    move-result-wide v9

    :goto_29
    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/smartdigimkt/p0/u;->c:J

    goto :goto_2a

    .line 464
    :cond_3f
    new-instance v1, Lcom/smartdigimkt/j0/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected saio entry count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_40
    :goto_2a
    sget v3, Lcom/smartdigimkt/p0/c;->i0:I

    invoke-virtual {v11, v3}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 466
    iget-object v3, v3, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    const/4 v9, 0x0

    .line 467
    invoke-static {v3, v9, v6}, Lcom/smartdigimkt/p0/m;->a(Lcom/smartdigimkt/a1/l;ILcom/smartdigimkt/p0/u;)V

    .line 468
    :cond_41
    sget v3, Lcom/smartdigimkt/p0/c;->f0:I

    invoke-virtual {v11, v3}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v3

    .line 469
    sget v5, Lcom/smartdigimkt/p0/c;->g0:I

    invoke-virtual {v11, v5}, Lcom/smartdigimkt/p0/a;->c(I)Lcom/smartdigimkt/p0/b;

    move-result-object v5

    if-eqz v3, :cond_43

    if-eqz v5, :cond_43

    .line 470
    iget-object v3, v3, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    iget-object v5, v5, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    if-eqz v2, :cond_42

    iget-object v2, v2, Lcom/smartdigimkt/p0/t;->a:Ljava/lang/String;

    move-object/from16 v33, v2

    :goto_2b
    const/16 v15, 0x8

    goto :goto_2c

    :cond_42
    const/16 v33, 0x0

    goto :goto_2b

    .line 471
    :goto_2c
    invoke-virtual {v3, v15}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 472
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v2

    .line 473
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v7

    sget v8, Lcom/smartdigimkt/p0/m;->D:I

    if-eq v7, v8, :cond_44

    :cond_43
    :goto_2d
    const/4 v10, 0x1

    goto/16 :goto_32

    :cond_44
    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const/4 v10, 0x1

    if-ne v2, v10, :cond_45

    .line 474
    iget v2, v3, Lcom/smartdigimkt/a1/l;->b:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 475
    :cond_45
    invoke-virtual {v3}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v2

    if-ne v2, v10, :cond_4e

    const/16 v15, 0x8

    .line 476
    invoke-virtual {v5, v15}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 477
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v2

    .line 478
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->a()I

    move-result v3

    if-eq v3, v8, :cond_46

    goto/16 :goto_32

    :cond_46
    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v10, :cond_48

    .line 479
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v2

    cmp-long v2, v2, v30

    if-eqz v2, :cond_47

    goto :goto_2e

    .line 480
    :cond_47
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    const/4 v8, 0x2

    if-lt v2, v8, :cond_49

    .line 481
    iget v2, v5, Lcom/smartdigimkt/a1/l;->b:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v5, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 482
    :cond_49
    :goto_2e
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->f()J

    move-result-wide v2

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_4d

    .line 483
    iget v2, v5, Lcom/smartdigimkt/a1/l;->b:I

    const/4 v10, 0x1

    add-int/2addr v2, v10

    invoke-virtual {v5, v2}, Lcom/smartdigimkt/a1/l;->c(I)V

    .line 484
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->e()I

    move-result v2

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v36, v3, 0x4

    and-int/lit8 v37, v2, 0xf

    .line 485
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->e()I

    move-result v2

    if-ne v2, v10, :cond_4a

    const/4 v2, 0x1

    goto :goto_2f

    :cond_4a
    const/4 v2, 0x0

    :goto_2f
    if-nez v2, :cond_4b

    goto :goto_2d

    .line 486
    :cond_4b
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->e()I

    move-result v34

    move/from16 v3, v18

    .line 487
    new-array v7, v3, [B

    const/4 v9, 0x0

    .line 488
    invoke-virtual {v5, v7, v9, v3}, Lcom/smartdigimkt/a1/l;->a([BII)V

    if-eqz v2, :cond_4c

    if-nez v34, :cond_4c

    .line 489
    invoke-virtual {v5}, Lcom/smartdigimkt/a1/l;->e()I

    move-result v2

    .line 490
    new-array v10, v2, [B

    .line 491
    invoke-virtual {v5, v10, v9, v2}, Lcom/smartdigimkt/a1/l;->a([BII)V

    move-object/from16 v38, v10

    :goto_30
    const/4 v10, 0x1

    goto :goto_31

    :cond_4c
    const/16 v38, 0x0

    goto :goto_30

    .line 492
    :goto_31
    iput-boolean v10, v6, Lcom/smartdigimkt/p0/u;->l:Z

    .line 493
    new-instance v32, Lcom/smartdigimkt/p0/t;

    move-object/from16 v35, v7

    invoke-direct/range {v32 .. v38}, Lcom/smartdigimkt/p0/t;-><init>(Ljava/lang/String;I[BII[B)V

    move-object/from16 v2, v32

    iput-object v2, v6, Lcom/smartdigimkt/p0/u;->n:Lcom/smartdigimkt/p0/t;

    goto :goto_32

    .line 494
    :cond_4d
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_4e
    new-instance v1, Lcom/smartdigimkt/j0/y;

    const-string v2, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v1, v2}, Lcom/smartdigimkt/j0/y;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :goto_32
    iget-object v2, v11, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v2, :cond_51

    .line 497
    iget-object v3, v11, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartdigimkt/p0/b;

    .line 498
    iget v5, v3, Lcom/smartdigimkt/p0/c;->a:I

    sget v7, Lcom/smartdigimkt/p0/c;->h0:I

    if-ne v5, v7, :cond_50

    .line 499
    iget-object v3, v3, Lcom/smartdigimkt/p0/b;->P0:Lcom/smartdigimkt/a1/l;

    const/16 v15, 0x8

    .line 500
    invoke-virtual {v3, v15}, Lcom/smartdigimkt/a1/l;->c(I)V

    const/16 v5, 0x10

    const/4 v7, 0x0

    .line 501
    invoke-virtual {v3, v4, v7, v5}, Lcom/smartdigimkt/a1/l;->a([BII)V

    .line 502
    sget-object v7, Lcom/smartdigimkt/p0/m;->E:[B

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_4f

    goto :goto_34

    .line 503
    :cond_4f
    invoke-static {v3, v5, v6}, Lcom/smartdigimkt/p0/m;->a(Lcom/smartdigimkt/a1/l;ILcom/smartdigimkt/p0/u;)V

    goto :goto_34

    :cond_50
    const/16 v5, 0x10

    const/16 v15, 0x8

    :goto_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_51
    const/16 v5, 0x10

    const/16 v15, 0x8

    goto :goto_35

    :cond_52
    move-object/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v5

    move/from16 v27, v8

    move v15, v9

    move/from16 v5, v18

    const/4 v10, 0x1

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    :goto_35
    add-int/lit8 v8, v27, 0x1

    move/from16 v18, v5

    move v9, v15

    move-object/from16 v2, v24

    move/from16 v5, v25

    move/from16 v3, v26

    goto/16 :goto_a

    :cond_53
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    .line 504
    iget-object v1, v1, Lcom/smartdigimkt/p0/a;->Q0:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/smartdigimkt/p0/m;->a(Ljava/util/ArrayList;)Lcom/smartdigimkt/n0/d;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 505
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_36
    if-ge v9, v2, :cond_57

    .line 506
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartdigimkt/p0/l;

    .line 507
    iget-object v4, v3, Lcom/smartdigimkt/p0/l;->c:Lcom/smartdigimkt/p0/s;

    .line 508
    iget-object v5, v3, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget-object v5, v5, Lcom/smartdigimkt/p0/u;->a:Lcom/smartdigimkt/p0/j;

    iget v5, v5, Lcom/smartdigimkt/p0/j;->a:I

    .line 509
    iget-object v6, v4, Lcom/smartdigimkt/p0/s;->k:[Lcom/smartdigimkt/p0/t;

    if-nez v6, :cond_54

    const/4 v5, 0x0

    goto :goto_37

    .line 510
    :cond_54
    aget-object v5, v6, v5

    :goto_37
    if-eqz v5, :cond_55

    .line 511
    iget-object v5, v5, Lcom/smartdigimkt/p0/t;->a:Ljava/lang/String;

    goto :goto_38

    :cond_55
    const/4 v5, 0x0

    .line 512
    :goto_38
    iget-object v3, v3, Lcom/smartdigimkt/p0/l;->a:Lcom/smartdigimkt/w0/e0;

    iget-object v4, v4, Lcom/smartdigimkt/p0/s;->f:Lcom/smartdigimkt/j0/s;

    .line 513
    iget-object v6, v1, Lcom/smartdigimkt/n0/d;->c:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/smartdigimkt/a1/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    move-object/from16 v49, v1

    goto :goto_39

    .line 514
    :cond_56
    new-instance v6, Lcom/smartdigimkt/n0/d;

    iget-object v7, v1, Lcom/smartdigimkt/n0/d;->a:[Lcom/smartdigimkt/n0/c;

    invoke-direct {v6, v5, v7}, Lcom/smartdigimkt/n0/d;-><init>(Ljava/lang/String;[Lcom/smartdigimkt/n0/c;)V

    move-object/from16 v49, v6

    .line 515
    :goto_39
    new-instance v23, Lcom/smartdigimkt/j0/s;

    .line 516
    iget-object v5, v4, Lcom/smartdigimkt/j0/s;->a:Ljava/lang/String;

    .line 517
    iget-object v6, v4, Lcom/smartdigimkt/j0/s;->e:Ljava/lang/String;

    iget-object v7, v4, Lcom/smartdigimkt/j0/s;->f:Ljava/lang/String;

    iget-object v8, v4, Lcom/smartdigimkt/j0/s;->c:Ljava/lang/String;

    iget v10, v4, Lcom/smartdigimkt/j0/s;->b:I

    iget v11, v4, Lcom/smartdigimkt/j0/s;->g:I

    iget v12, v4, Lcom/smartdigimkt/j0/s;->k:I

    iget v13, v4, Lcom/smartdigimkt/j0/s;->l:I

    iget v14, v4, Lcom/smartdigimkt/j0/s;->m:F

    iget v15, v4, Lcom/smartdigimkt/j0/s;->n:I

    move-object/from16 v16, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->o:F

    move/from16 v34, v1

    iget-object v1, v4, Lcom/smartdigimkt/j0/s;->q:[B

    move-object/from16 v35, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->p:I

    move/from16 v36, v1

    iget-object v1, v4, Lcom/smartdigimkt/j0/s;->r:Lcom/smartdigimkt/b1/b;

    move-object/from16 v37, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->s:I

    move/from16 v38, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->t:I

    move/from16 v39, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->u:I

    move/from16 v40, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->v:I

    move/from16 v41, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->w:I

    move/from16 v42, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->x:I

    move/from16 v43, v1

    iget-object v1, v4, Lcom/smartdigimkt/j0/s;->y:Ljava/lang/String;

    move-object/from16 v44, v1

    iget v1, v4, Lcom/smartdigimkt/j0/s;->z:I

    move/from16 v45, v1

    move/from16 v18, v2

    iget-wide v1, v4, Lcom/smartdigimkt/j0/s;->j:J

    move-wide/from16 v46, v1

    iget-object v1, v4, Lcom/smartdigimkt/j0/s;->h:Ljava/util/List;

    iget-object v2, v4, Lcom/smartdigimkt/j0/s;->d:Lcom/smartdigimkt/r0/c;

    move-object/from16 v48, v1

    move-object/from16 v50, v2

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-direct/range {v23 .. v50}, Lcom/smartdigimkt/j0/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/smartdigimkt/b1/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/smartdigimkt/n0/d;Lcom/smartdigimkt/r0/c;)V

    move-object/from16 v1, v23

    .line 518
    invoke-virtual {v3, v1}, Lcom/smartdigimkt/w0/e0;->a(Lcom/smartdigimkt/j0/s;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v18

    goto/16 :goto_36

    .line 519
    :cond_57
    iget-wide v1, v0, Lcom/smartdigimkt/p0/m;->r:J

    cmp-long v1, v1, v21

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v1, :cond_5a

    .line 521
    iget-object v3, v0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartdigimkt/p0/l;

    iget-wide v4, v0, Lcom/smartdigimkt/p0/m;->r:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    invoke-static {v4, v5}, Lcom/smartdigimkt/j0/b;->b(J)J

    move-result-wide v4

    .line 523
    iget v6, v3, Lcom/smartdigimkt/p0/l;->e:I

    .line 524
    :goto_3b
    iget-object v7, v3, Lcom/smartdigimkt/p0/l;->b:Lcom/smartdigimkt/p0/u;

    iget v8, v7, Lcom/smartdigimkt/p0/u;->e:I

    if-ge v6, v8, :cond_59

    .line 525
    iget-object v8, v7, Lcom/smartdigimkt/p0/u;->j:[J

    aget-wide v9, v8, v6

    iget-object v8, v7, Lcom/smartdigimkt/p0/u;->i:[I

    aget v8, v8, v6

    int-to-long v11, v8

    add-long/2addr v9, v11

    cmp-long v8, v9, v4

    if-gez v8, :cond_59

    .line 526
    iget-object v7, v7, Lcom/smartdigimkt/p0/u;->k:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_58

    .line 527
    iput v6, v3, Lcom/smartdigimkt/p0/l;->h:I

    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_5a
    move-wide/from16 v2, v21

    .line 528
    iput-wide v2, v0, Lcom/smartdigimkt/p0/m;->r:J

    goto/16 :goto_0

    .line 529
    :cond_5b
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    iget-object v2, v0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartdigimkt/p0/a;

    .line 531
    iget-object v2, v2, Lcom/smartdigimkt/p0/a;->R0:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5c
    const/4 v9, 0x0

    .line 533
    iput v9, v0, Lcom/smartdigimkt/p0/m;->k:I

    .line 534
    iput v9, v0, Lcom/smartdigimkt/p0/m;->n:I

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartdigimkt/p0/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartdigimkt/p0/l;

    invoke-virtual {v1}, Lcom/smartdigimkt/p0/l;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartdigimkt/p0/m;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iput p2, p0, Lcom/smartdigimkt/p0/m;->q:I

    .line 7
    iput-wide p3, p0, Lcom/smartdigimkt/p0/m;->r:J

    .line 8
    iget-object p1, p0, Lcom/smartdigimkt/p0/m;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 9
    iput p2, p0, Lcom/smartdigimkt/p0/m;->k:I

    .line 10
    iput p2, p0, Lcom/smartdigimkt/p0/m;->n:I

    return-void
.end method

.method public final a(Lcom/smartdigimkt/o0/e;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartdigimkt/p0/m;->z:Lcom/smartdigimkt/o0/e;

    return-void
.end method

.method public final a(Lcom/smartdigimkt/o0/b;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/smartdigimkt/p0/r;->a(Lcom/smartdigimkt/o0/b;Z)Z

    move-result p1

    return p1
.end method
