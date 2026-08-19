.class public Lcom/ubix/ssp/ad/e/t/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private A:Lcom/ubix/ssp/ad/e/t/a/d;

.field private B:Z

.field private C:[B

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:I

.field private J:I

.field private K:[S

.field private L:[B

.field private M:[B

.field private N:[B

.field private O:Lcom/ubix/ssp/ad/e/t/a/d;

.field private P:Lcom/ubix/ssp/ad/e/t/a/d;

.field private Q:I

.field private R:Lcom/ubix/ssp/ad/e/t/a/b;

.field private S:[B

.field public a:I

.field public b:I

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/ubix/ssp/ad/e/t/a/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->B:Z

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->C:[B

    iput v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    iput v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->F:I

    iput v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->G:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    iput v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    return-void
.end method

.method public constructor <init>([BLcom/ubix/ssp/ad/e/t/a/b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->B:Z

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->C:[B

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->F:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->G:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    return-void
.end method

.method private a()V
    .locals 27

    .line 2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ubix/ssp/ad/e/t/a/c;->s:I

    iget v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->t:I

    mul-int/2addr v1, v2

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->N:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v1, :cond_1

    :cond_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->N:[B

    :cond_1
    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->K:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_2

    new-array v2, v3, [S

    iput-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->K:[S

    :cond_2
    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->L:[B

    if-nez v2, :cond_3

    new-array v2, v3, [B

    iput-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->L:[B

    :cond_3
    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    :cond_4
    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_5

    iget-object v11, v0, Lcom/ubix/ssp/ad/e/t/a/c;->K:[S

    aput-short v9, v11, v10

    iget-object v11, v0, Lcom/ubix/ssp/ad/e/t/a/c;->L:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v10, -0x1

    move v15, v2

    move/from16 v18, v4

    move v4, v7

    move/from16 v17, v8

    move v11, v9

    move v12, v11

    move v14, v12

    move/from16 v16, v14

    move/from16 v19, v16

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move v13, v10

    :goto_1
    if-ge v11, v1, :cond_11

    if-nez v12, :cond_10

    if-ge v14, v15, :cond_8

    if-nez v19, :cond_7

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/t/a/c;->i()I

    move-result v19

    if-gtz v19, :cond_6

    goto/16 :goto_5

    :cond_6
    move/from16 v20, v21

    :cond_7
    iget-object v3, v0, Lcom/ubix/ssp/ad/e/t/a/c;->C:[B

    aget-byte v3, v3, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    add-int v16, v16, v3

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v19, v19, -0x1

    :goto_2
    const/16 v3, 0x1000

    goto :goto_1

    :cond_8
    and-int v3, v16, v17

    shr-int v16, v16, v15

    sub-int/2addr v14, v15

    if-gt v3, v4, :cond_11

    if-ne v3, v6, :cond_9

    goto/16 :goto_5

    :cond_9
    if-ne v3, v5, :cond_a

    move v15, v2

    move v4, v7

    move/from16 v17, v8

    move v13, v10

    goto :goto_2

    :cond_a
    if-ne v13, v10, :cond_b

    iget-object v9, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    add-int/lit8 v13, v12, 0x1

    move/from16 v23, v10

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/t/a/c;->L:[B

    aget-byte v10, v10, v3

    aput-byte v10, v9, v12

    move v9, v3

    move v12, v13

    move/from16 v10, v23

    move v13, v9

    goto :goto_2

    :cond_b
    move/from16 v23, v10

    if-ne v3, v4, :cond_c

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    add-int/lit8 v24, v12, 0x1

    int-to-byte v9, v9

    aput-byte v9, v10, v12

    move v9, v13

    move/from16 v12, v24

    goto :goto_3

    :cond_c
    move v9, v3

    :goto_3
    if-le v9, v5, :cond_d

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    add-int/lit8 v24, v12, 0x1

    move/from16 v25, v2

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->L:[B

    aget-byte v2, v2, v9

    aput-byte v2, v10, v12

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->K:[S

    aget-short v9, v2, v9

    move/from16 v12, v24

    move/from16 v2, v25

    goto :goto_3

    :cond_d
    move/from16 v25, v2

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->L:[B

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x1000

    if-lt v4, v10, :cond_e

    goto :goto_5

    :cond_e
    iget-object v10, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    add-int/lit8 v24, v12, 0x1

    move-object/from16 v26, v2

    int-to-byte v2, v9

    aput-byte v2, v10, v12

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/t/a/c;->K:[S

    int-to-short v12, v13

    aput-short v12, v10, v4

    aput-byte v2, v26, v4

    add-int/lit8 v4, v4, 0x1

    and-int v2, v4, v17

    const/16 v10, 0x1000

    if-nez v2, :cond_f

    if-ge v4, v10, :cond_f

    add-int/lit8 v15, v15, 0x1

    add-int v17, v17, v4

    :cond_f
    move v13, v3

    move/from16 v12, v24

    goto :goto_4

    :cond_10
    move/from16 v25, v2

    move/from16 v23, v10

    move v10, v3

    :goto_4
    add-int/lit8 v12, v12, -0x1

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/c;->N:[B

    add-int/lit8 v3, v22, 0x1

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/t/a/c;->M:[B

    aget-byte v10, v10, v12

    aput-byte v10, v2, v22

    add-int/lit8 v11, v11, 0x1

    move/from16 v22, v3

    move/from16 v10, v23

    move/from16 v2, v25

    goto/16 :goto_2

    :cond_11
    :goto_5
    move/from16 v2, v22

    :goto_6
    if-ge v2, v1, :cond_12

    iget-object v3, v0, Lcom/ubix/ssp/ad/e/t/a/c;->N:[B

    aput-byte v21, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method private b()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c(I)[I
    .locals 9

    .line 2
    mul-int/lit8 v0, p1, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v3, v2

    :goto_1
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v0, v2

    move v2, v7

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->h:[I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->i:[I

    return-void
.end method

.method private h()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    const/4 v0, 0x0

    return v0
.end method

.method private i()I
    .locals 4

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->C:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    :cond_2
    return v1
.end method

.method private j()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->r()I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x21

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iput v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->n()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v2

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->i()I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->C:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->p()V

    goto :goto_0

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->u()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->l()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private l()V
    .locals 3

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->F:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->F:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->J:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->o()V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->f:I

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/t/a/c;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->h:[I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->k:I

    aget v0, v0, v1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->l:I

    :cond_2
    return-void
.end method

.method private n()V
    .locals 6

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->q:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->r:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->s:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->t:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->n:Z

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->o:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v4, 0x2

    shl-int v0, v4, v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->p:I

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/t/a/c;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->i:[I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->j:[I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->h:[I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->j:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->k:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->J:I

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->l:I

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->j:[I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->J:I

    aget v4, v0, v1

    aput v2, v0, v1

    move v2, v4

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->j:[I

    if-nez v0, :cond_5

    iput v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    :cond_5
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->a()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->u()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    return-void

    :cond_7
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/t/a/a;->a()Lcom/ubix/ssp/ad/e/t/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/t/a/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/ubix/ssp/ad/e/t/a/a;->a()Lcom/ubix/ssp/ad/e/t/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v1}, Lcom/ubix/ssp/ad/e/t/a/a;->a(ILandroid/graphics/Bitmap;)V

    :cond_8
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->t()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/t/a/a;->a()Lcom/ubix/ssp/ad/e/t/a/a;

    move-result-object v1

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Lcom/ubix/ssp/ad/e/t/a/a;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    if-nez v1, :cond_9

    new-instance v1, Lcom/ubix/ssp/ad/e/t/a/d;

    invoke-static {}, Lcom/ubix/ssp/ad/e/t/a/a;->a()Lcom/ubix/ssp/ad/e/t/a/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ubix/ssp/ad/e/t/a/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    invoke-direct {v1, v0, v4}, Lcom/ubix/ssp/ad/e/t/a/d;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->P:Lcom/ubix/ssp/ad/e/t/a/d;

    if-nez v1, :cond_a

    new-instance v1, Lcom/ubix/ssp/ad/e/t/a/d;

    invoke-static {}, Lcom/ubix/ssp/ad/e/t/a/a;->a()Lcom/ubix/ssp/ad/e/t/a/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ubix/ssp/ad/e/t/a/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    invoke-direct {v1, v0, v4}, Lcom/ubix/ssp/ad/e/t/a/d;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->P:Lcom/ubix/ssp/ad/e/t/a/d;

    goto :goto_4

    :cond_a
    new-instance v4, Lcom/ubix/ssp/ad/e/t/a/d;

    invoke-static {}, Lcom/ubix/ssp/ad/e/t/a/a;->a()Lcom/ubix/ssp/ad/e/t/a/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ubix/ssp/ad/e/t/a/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v5, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    invoke-direct {v4, v0, v5}, Lcom/ubix/ssp/ad/e/t/a/d;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v4, v1, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->P:Lcom/ubix/ssp/ad/e/t/a/d;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->P:Lcom/ubix/ssp/ad/e/t/a/d;

    :goto_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->P:Lcom/ubix/ssp/ad/e/t/a/d;

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->j:[I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->J:I

    aput v2, v0, v1

    :cond_c
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->s()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    invoke-interface {v0, v3, v1}, Lcom/ubix/ssp/ad/e/t/a/b;->a(ZI)V

    return-void
.end method

.method private o()V
    .locals 2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->e:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    shl-int v0, v1, v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->f:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->k:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->E:I

    return-void
.end method

.method private p()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->i()I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->C:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->g:I

    :cond_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private q()I
    .locals 2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->h()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private r()I
    .locals 4

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->f()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->m()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->k()V

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    const/4 v3, 0x1

    if-gez v0, :cond_0

    iput v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    invoke-interface {v0, v1, v2}, Lcom/ubix/ssp/ad/e/t/a/b;->a(ZI)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    invoke-interface {v0, v3, v2}, Lcom/ubix/ssp/ad/e/t/a/b;->a(ZI)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    invoke-interface {v0, v1, v2}, Lcom/ubix/ssp/ad/e/t/a/b;->a(ZI)V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    return v0
.end method

.method private s()V
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->F:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->G:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->q:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->u:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->r:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->v:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->s:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->w:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->t:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->x:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->z:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->l:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->F:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    iput v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->I:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->i:[I

    return-void
.end method

.method private t()V
    .locals 13

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->G:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-lez v0, :cond_4

    if-ne v0, v9, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    add-int/lit8 v1, v0, -0x2

    if-lez v1, :cond_0

    sub-int/2addr v0, v9

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/t/a/c;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->z:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->z:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    iget v8, p0, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->G:I

    if-ne v0, v11, :cond_4

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->H:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->m:I

    goto :goto_2

    :cond_2
    move v0, v10

    :goto_2
    move v1, v10

    :goto_3
    iget v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->x:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->v:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->u:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/t/a/c;->w:I

    add-int/2addr v4, v3

    :goto_4
    if-ge v3, v4, :cond_3

    aput v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    const/16 v1, 0x8

    move v4, v0

    move v3, v10

    :goto_5
    iget v5, p0, Lcom/ubix/ssp/ad/e/t/a/c;->t:I

    if-ge v10, v5, :cond_d

    iget-boolean v6, p0, Lcom/ubix/ssp/ad/e/t/a/c;->o:Z

    if-eqz v6, :cond_9

    if-lt v3, v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    if-eq v4, v11, :cond_7

    if-eq v4, v9, :cond_6

    if-eq v4, v5, :cond_5

    goto :goto_6

    :cond_5
    move v3, v0

    move v1, v11

    goto :goto_6

    :cond_6
    move v1, v5

    move v3, v11

    goto :goto_6

    :cond_7
    move v3, v5

    :cond_8
    :goto_6
    add-int v5, v3, v1

    goto :goto_7

    :cond_9
    move v5, v3

    move v3, v10

    :goto_7
    iget v6, p0, Lcom/ubix/ssp/ad/e/t/a/c;->r:I

    add-int/2addr v3, v6

    iget v6, p0, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    if-ge v3, v6, :cond_c

    iget v6, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    mul-int/2addr v3, v6

    iget v7, p0, Lcom/ubix/ssp/ad/e/t/a/c;->q:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/ubix/ssp/ad/e/t/a/c;->s:I

    add-int v12, v7, v8

    add-int/2addr v3, v6

    if-ge v3, v12, :cond_a

    move v12, v3

    :cond_a
    mul-int/2addr v8, v10

    :goto_8
    if-ge v7, v12, :cond_c

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/t/a/c;->N:[B

    add-int/lit8 v6, v8, 0x1

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/t/a/c;->j:[I

    aget v3, v8, v3

    if-eqz v3, :cond_b

    aput v3, v2, v7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto :goto_8

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move v3, v5

    goto :goto_5

    :cond_d
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->a:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->y:Landroid/graphics/Bitmap;

    return-void
.end method

.method private u()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->i()I

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->D:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/ubix/ssp/ad/e/t/a/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/t/a/c;->a(I)Lcom/ubix/ssp/ad/e/t/a/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/t/a/d;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/t/a/d;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->Q:I

    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/e/t/a/c;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/ubix/ssp/ad/e/t/a/d;
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->B:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    if-eqz v0, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/t/a/d;->c:Lcom/ubix/ssp/ad/e/t/a/d;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->O:Lcom/ubix/ssp/ad/e/t/a/d;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->A:Lcom/ubix/ssp/ad/e/t/a/d;

    return-object v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->r()I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->j()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->c()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/c;->R:Lcom/ubix/ssp/ad/e/t/a/b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/c;->S:[B

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/t/a/b;->a([B)V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/t/a/c;->c()V

    :cond_1
    :goto_1
    return-void
.end method
