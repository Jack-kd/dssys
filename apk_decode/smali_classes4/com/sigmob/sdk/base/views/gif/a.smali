.class Lcom/sigmob/sdk/base/views/gif/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/gif/a$a;
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = -0x1

.field private static final f:Ljava/lang/String; = "a"

.field private static final g:I = 0x1000

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = -0x1

.field private static final m:I = -0x1

.field private static final n:I = 0x4

.field private static final o:I = 0x4000


# instance fields
.field private A:Lcom/sigmob/sdk/base/views/gif/d;

.field private final B:[I

.field private C:[B

.field private D:[S

.field private E:Landroid/graphics/Bitmap;

.field private F:Ljava/nio/ByteBuffer;

.field private G:I

.field private H:Z

.field private I:I

.field private J:[B

.field private K:[B

.field private L:I

.field private M:I

.field private p:[I

.field private final q:Lcom/sigmob/sdk/base/views/gif/a$a;

.field private r:[B

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/sigmob/sdk/base/views/gif/c;

.field private w:Z

.field private x:I

.field private y:[B

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/views/gif/f;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/gif/a;-><init>(Lcom/sigmob/sdk/base/views/gif/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/views/gif/a$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->B:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->M:I

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    new-instance p1, Lcom/sigmob/sdk/base/views/gif/c;

    invoke-direct {p1}, Lcom/sigmob/sdk/base/views/gif/c;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/views/gif/a$a;Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/views/gif/a;-><init>(Lcom/sigmob/sdk/base/views/gif/a$a;Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/views/gif/a$a;Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/gif/a;-><init>(Lcom/sigmob/sdk/base/views/gif/a$a;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/sigmob/sdk/base/views/gif/a;->a(Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a(III)I
    .locals 9

    .line 2
    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, p0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/gif/a;->p:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    :goto_1
    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/gif/a;->p:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    :cond_4
    div-int/2addr v2, v6

    shl-int/lit8 p1, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p2, v3, 0x10

    or-int/2addr p1, p2

    div-int/2addr v4, v6

    shl-int/lit8 p2, v4, 0x8

    or-int/2addr p1, p2

    div-int/2addr v5, v6

    or-int/2addr p1, v5

    return p1
.end method

.method private a(Lcom/sigmob/sdk/base/views/gif/b;Lcom/sigmob/sdk/base/views/gif/b;)Landroid/graphics/Bitmap;
    .locals 18

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/gif/a;->z:[I

    const/4 v10, 0x0

    if-nez v2, :cond_0

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_4

    iget v4, v2, Lcom/sigmob/sdk/base/views/gif/b;->c:I

    if-lez v4, :cond_4

    if-ne v4, v12, :cond_5

    iget-boolean v4, v1, Lcom/sigmob/sdk/base/views/gif/b;->k:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v5, v4, Lcom/sigmob/sdk/base/views/gif/c;->a:I

    iget-object v6, v1, Lcom/sigmob/sdk/base/views/gif/b;->i:[I

    if-eqz v6, :cond_3

    iget v4, v4, Lcom/sigmob/sdk/base/views/gif/c;->b:I

    iget v6, v1, Lcom/sigmob/sdk/base/views/gif/b;->j:I

    if-ne v4, v6, :cond_3

    :cond_1
    :goto_0
    move v5, v10

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    if-nez v4, :cond_1

    iput-boolean v13, v0, Lcom/sigmob/sdk/base/views/gif/a;->w:Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {v0, v3, v2, v5}, Lcom/sigmob/sdk/base/views/gif/a;->a([ILcom/sigmob/sdk/base/views/gif/b;I)V

    :cond_4
    :goto_2
    move-object v2, v3

    goto :goto_3

    :cond_5
    if-ne v4, v11, :cond_4

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->E:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    invoke-direct {v0, v3, v2, v10}, Lcom/sigmob/sdk/base/views/gif/a;->a([ILcom/sigmob/sdk/base/views/gif/b;I)V

    goto :goto_2

    :cond_6
    iget v5, v2, Lcom/sigmob/sdk/base/views/gif/b;->h:I

    iget v6, v0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    div-int v9, v5, v6

    iget v5, v2, Lcom/sigmob/sdk/base/views/gif/b;->f:I

    div-int v7, v5, v6

    iget v5, v2, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    div-int v8, v5, v6

    iget v2, v2, Lcom/sigmob/sdk/base/views/gif/b;->e:I

    div-int v6, v2, v6

    iget v5, v0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    mul-int v2, v7, v5

    add-int/2addr v2, v6

    move-object/from16 v17, v4

    move v4, v2

    move-object/from16 v2, v17

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_2

    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/sigmob/sdk/base/views/gif/a;->a(Lcom/sigmob/sdk/base/views/gif/b;)V

    iget v3, v1, Lcom/sigmob/sdk/base/views/gif/b;->h:I

    iget v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    div-int/2addr v3, v4

    iget v5, v1, Lcom/sigmob/sdk/base/views/gif/b;->f:I

    div-int/2addr v5, v4

    iget v6, v1, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    div-int/2addr v6, v4

    iget v7, v1, Lcom/sigmob/sdk/base/views/gif/b;->e:I

    div-int/2addr v7, v4

    iget v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    if-nez v4, :cond_7

    move v4, v13

    goto :goto_4

    :cond_7
    move v4, v10

    :goto_4
    const/16 v8, 0x8

    move v9, v10

    move v14, v13

    :goto_5
    if-ge v10, v3, :cond_12

    iget-boolean v15, v1, Lcom/sigmob/sdk/base/views/gif/b;->d:Z

    if-eqz v15, :cond_c

    if-lt v9, v3, :cond_b

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x4

    if-eq v14, v12, :cond_a

    if-eq v14, v11, :cond_9

    if-eq v14, v15, :cond_8

    goto :goto_6

    :cond_8
    move v8, v12

    move v9, v13

    goto :goto_6

    :cond_9
    move v9, v12

    move v8, v15

    goto :goto_6

    :cond_a
    move v9, v15

    :cond_b
    :goto_6
    add-int v15, v9, v8

    goto :goto_7

    :cond_c
    move v15, v9

    move v9, v10

    :goto_7
    add-int/2addr v9, v5

    iget v11, v0, Lcom/sigmob/sdk/base/views/gif/a;->s:I

    if-ge v9, v11, :cond_11

    iget v11, v0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    mul-int/2addr v9, v11

    add-int v16, v9, v7

    add-int v12, v16, v6

    add-int v13, v9, v11

    if-ge v13, v12, :cond_d

    add-int v12, v9, v11

    :cond_d
    iget v9, v0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    mul-int v11, v10, v9

    iget v13, v1, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    mul-int/2addr v11, v13

    sub-int v13, v12, v16

    mul-int/2addr v13, v9

    add-int/2addr v13, v11

    move/from16 v9, v16

    :goto_8
    if-ge v9, v12, :cond_11

    move-object/from16 p2, v2

    iget v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    move/from16 v16, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/gif/a;->p:[I

    aget v2, v3, v2

    goto :goto_9

    :cond_e
    iget v2, v1, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    invoke-direct {v0, v11, v13, v2}, Lcom/sigmob/sdk/base/views/gif/a;->a(III)I

    move-result v2

    :goto_9
    if-eqz v2, :cond_f

    aput v2, p2, v9

    goto :goto_a

    :cond_f
    iget-boolean v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->w:Z

    if-nez v2, :cond_10

    if-eqz v4, :cond_10

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sigmob/sdk/base/views/gif/a;->w:Z

    :cond_10
    :goto_a
    iget v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    add-int/2addr v11, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_8

    :cond_11
    move-object/from16 p2, v2

    move/from16 v16, v3

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p2

    move v9, v15

    move/from16 v3, v16

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_5

    :cond_12
    move-object/from16 p2, v2

    iget-boolean v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->H:Z

    if-eqz v2, :cond_13

    iget v1, v1, Lcom/sigmob/sdk/base/views/gif/b;->c:I

    if-eqz v1, :cond_14

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    goto :goto_b

    :cond_13
    move-object/from16 v2, p2

    goto :goto_c

    :cond_14
    :goto_b
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->E:Landroid/graphics/Bitmap;

    if-nez v1, :cond_15

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/a;->q()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->E:Landroid/graphics/Bitmap;

    :cond_15
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->E:Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    const/4 v6, 0x0

    iget v8, v0, Lcom/sigmob/sdk/base/views/gif/a;->s:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v7, v4

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_c
    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/a;->q()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    const/4 v6, 0x0

    iget v8, v0, Lcom/sigmob/sdk/base/views/gif/a;->s:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/views/gif/b;)V
    .locals 28

    .line 7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->M:I

    iput v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    iget v4, v1, Lcom/sigmob/sdk/base/views/gif/b;->a:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v3, v1, Lcom/sigmob/sdk/base/views/gif/c;->m:I

    iget v1, v1, Lcom/sigmob/sdk/base/views/gif/c;->i:I

    :goto_0
    mul-int/2addr v3, v1

    goto :goto_1

    :cond_1
    iget v3, v1, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    iget v1, v1, Lcom/sigmob/sdk/base/views/gif/b;->h:I

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v3, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v1, v3}, Lcom/sigmob/sdk/base/views/gif/a$a;->a(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    :cond_3
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->D:[S

    const/16 v4, 0x1000

    if-nez v1, :cond_4

    new-array v1, v4, [S

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->D:[S

    :cond_4
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->J:[B

    if-nez v1, :cond_5

    new-array v1, v4, [B

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->J:[B

    :cond_5
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    if-nez v1, :cond_6

    const/16 v1, 0x1001

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    :cond_6
    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/a;->s()I

    move-result v1

    const/4 v5, 0x1

    shl-int v6, v5, v1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    add-int/2addr v1, v5

    shl-int v9, v5, v1

    sub-int/2addr v9, v5

    move v10, v2

    :goto_2
    if-ge v10, v6, :cond_7

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/gif/a;->D:[S

    aput-short v2, v11, v10

    iget-object v11, v0, Lcom/sigmob/sdk/base/views/gif/a;->J:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, -0x1

    move/from16 v19, v1

    move v11, v2

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v21, v16

    move/from16 v22, v21

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    :goto_3
    move/from16 v23, v2

    if-ge v11, v3, :cond_14

    const/4 v2, 0x3

    if-nez v12, :cond_9

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/a;->r()I

    move-result v12

    if-gtz v12, :cond_8

    iput v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    goto/16 :goto_a

    :cond_8
    move/from16 v13, v23

    :cond_9
    move/from16 p1, v5

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    aget-byte v5, v5, v13

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v14

    add-int/2addr v15, v5

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v10

    move/from16 v5, v17

    move/from16 v4, v19

    move/from16 v24, v20

    move/from16 v25, v21

    :goto_4
    if-lt v14, v4, :cond_13

    and-int v10, v15, v18

    shr-int/2addr v15, v4

    sub-int/2addr v14, v4

    if-ne v10, v6, :cond_a

    move v4, v1

    move v5, v8

    move/from16 v18, v9

    const/4 v10, -0x1

    const/16 v24, -0x1

    goto :goto_4

    :cond_a
    if-le v10, v5, :cond_b

    iput v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    goto :goto_5

    :cond_b
    if-ne v10, v7, :cond_c

    :goto_5
    move/from16 v19, v4

    move/from16 v17, v5

    move/from16 v2, v23

    move/from16 v20, v24

    move/from16 v21, v25

    const/16 v4, 0x1000

    const/4 v10, -0x1

    :goto_6
    move/from16 v5, p1

    goto :goto_3

    :cond_c
    move/from16 v19, v1

    move/from16 v2, v24

    const/4 v1, -0x1

    if-ne v2, v1, :cond_d

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    add-int/lit8 v21, v22, 0x1

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->J:[B

    aget-byte v1, v1, v10

    aput-byte v1, v2, v22

    move/from16 v24, v10

    move/from16 v25, v24

    move/from16 v1, v19

    move/from16 v22, v21

    :goto_7
    const/4 v2, 0x3

    const/4 v10, -0x1

    goto :goto_4

    :cond_d
    if-lt v10, v5, :cond_e

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    add-int/lit8 v21, v22, 0x1

    move-object/from16 v26, v1

    move/from16 v1, v25

    int-to-byte v1, v1

    aput-byte v1, v26, v22

    move v1, v2

    move/from16 v22, v21

    goto :goto_8

    :cond_e
    move v1, v10

    :goto_8
    move/from16 v21, v1

    if-lt v1, v6, :cond_f

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    add-int/lit8 v25, v22, 0x1

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->J:[B

    aget-byte v1, v1, v21

    aput-byte v1, v26, v22

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->D:[S

    aget-short v1, v1, v21

    move/from16 v22, v25

    goto :goto_8

    :cond_f
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->J:[B

    move-object/from16 v25, v1

    aget-byte v1, v25, v21

    and-int/lit16 v1, v1, 0xff

    move/from16 v21, v4

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    add-int/lit8 v26, v22, 0x1

    move-object/from16 v27, v4

    int-to-byte v4, v1

    aput-byte v4, v27, v22

    move/from16 v22, v1

    const/16 v1, 0x1000

    if-ge v5, v1, :cond_11

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->D:[S

    int-to-short v2, v2

    aput-short v2, v1, v5

    aput-byte v4, v25, v5

    add-int/lit8 v5, v5, 0x1

    and-int v1, v5, v18

    if-nez v1, :cond_10

    const/16 v1, 0x1000

    if-ge v5, v1, :cond_11

    add-int/lit8 v4, v21, 0x1

    add-int v18, v18, v5

    goto :goto_9

    :cond_10
    const/16 v1, 0x1000

    :cond_11
    move/from16 v4, v21

    :goto_9
    if-lez v26, :cond_12

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    add-int/lit8 v17, v16, 0x1

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/a;->C:[B

    add-int/lit8 v26, v26, -0x1

    aget-byte v1, v1, v26

    aput-byte v1, v2, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v17

    const/16 v1, 0x1000

    goto :goto_9

    :cond_12
    move/from16 v24, v10

    move/from16 v1, v19

    move/from16 v25, v22

    move/from16 v22, v26

    goto :goto_7

    :cond_13
    move/from16 v19, v1

    move/from16 v21, v4

    move/from16 v2, v24

    move/from16 v1, v25

    move/from16 v21, v1

    move/from16 v1, v19

    move/from16 v19, v4

    move/from16 v20, v2

    move/from16 v17, v5

    move/from16 v2, v23

    const/16 v4, 0x1000

    goto/16 :goto_6

    :cond_14
    :goto_a
    move/from16 v1, v16

    :goto_b
    if-ge v1, v3, :cond_15

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    aput-byte v23, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private a([ILcom/sigmob/sdk/base/views/gif/b;I)V
    .locals 4

    .line 11
    iget v0, p2, Lcom/sigmob/sdk/base/views/gif/b;->h:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    div-int/2addr v0, v1

    iget v2, p2, Lcom/sigmob/sdk/base/views/gif/b;->f:I

    div-int/2addr v2, v1

    iget v3, p2, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    div-int/2addr v3, v1

    iget p2, p2, Lcom/sigmob/sdk/base/views/gif/b;->e:I

    div-int/2addr p2, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p2

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_1

    add-int p2, v2, v3

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_0

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    add-int/2addr v2, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private p()Lcom/sigmob/sdk/base/views/gif/d;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->A:Lcom/sigmob/sdk/base/views/gif/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/gif/d;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/d;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->A:Lcom/sigmob/sdk/base/views/gif/d;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->A:Lcom/sigmob/sdk/base/views/gif/d;

    return-object v0
.end method

.method private q()Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    iget v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->s:I

    invoke-interface {v1, v2, v3, v0}, Lcom/sigmob/sdk/base/views/gif/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/gif/a;->a(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private r()I
    .locals 7

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/a;->s()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/sigmob/sdk/base/views/gif/a$a;->a(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->M:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    return v0

    :cond_1
    iget-object v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    iget v5, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    iget-object v6, p0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->M:I

    iput v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/a;->t()V

    sub-int v3, v0, v2

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    iget-object v6, p0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    return v0

    :cond_2
    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    const-string v3, "Error Reading Block"

    invoke-static {v3, v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    :cond_3
    return v0
.end method

.method private s()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/a;->t()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    const/4 v0, 0x0

    return v0
.end method

.method private t()V
    .locals 4

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->M:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/views/gif/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->L:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->M:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    if-ge p1, v1, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/views/gif/b;

    iget p1, p1, Lcom/sigmob/sdk/base/views/gif/b;->b:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/io/InputStream;I)I
    .locals 5

    .line 3
    if-eqz p1, :cond_2

    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 p2, p2, 0x1000

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p2, v0, [B

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/views/gif/a;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "Error reading data from stream"

    invoke-static {v0, p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    const/4 p2, 0x2

    iput p2, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    :goto_3
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    const-string p2, "Error closing stream"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    iget p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    return p1
.end method

.method public declared-synchronized a([B)I
    .locals 1

    .line 4
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/a;->p()Lcom/sigmob/sdk/base/views/gif/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/gif/d;->a([B)Lcom/sigmob/sdk/base/views/gif/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/d;->c()Lcom/sigmob/sdk/base/views/gif/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/base/views/gif/a;->a(Lcom/sigmob/sdk/base/views/gif/c;[B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 8
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/views/gif/a;->a(Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 9
    monitor-enter p0

    if-lez p3, :cond_2

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->w:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/gif/a;->o()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->H:Z

    iget-object p2, p1, Lcom/sigmob/sdk/base/views/gif/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/gif/b;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/b;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sigmob/sdk/base/views/gif/a;->H:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput p3, p0, Lcom/sigmob/sdk/base/views/gif/a;->G:I

    iget p2, p1, Lcom/sigmob/sdk/base/views/gif/c;->m:I

    div-int v0, p2, p3

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    iget p1, p1, Lcom/sigmob/sdk/base/views/gif/c;->i:I

    div-int p3, p1, p3

    iput p3, p0, Lcom/sigmob/sdk/base/views/gif/a;->s:I

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    mul-int/2addr p2, p1

    invoke-interface {p3, p2}, Lcom/sigmob/sdk/base/views/gif/a$a;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    iget p2, p0, Lcom/sigmob/sdk/base/views/gif/a;->t:I

    iget p3, p0, Lcom/sigmob/sdk/base/views/gif/a;->s:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/views/gif/a$a;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->z:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/sigmob/sdk/base/views/gif/c;[B)V
    .locals 0

    .line 10
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/views/gif/a;->a(Lcom/sigmob/sdk/base/views/gif/c;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/gif/a;->f()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->x:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->x:I

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v2, v0, Lcom/sigmob/sdk/base/views/gif/c;->j:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget v4, p0, Lcom/sigmob/sdk/base/views/gif/a;->x:I

    if-le v4, v2, :cond_2

    return v1

    :cond_2
    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    return v3
.end method

.method public b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/base/views/gif/a$a;->a([B)V

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->z:[I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/base/views/gif/a$a;->a([I)V

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->E:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/base/views/gif/a$a;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->E:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->w:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->r:[B

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/base/views/gif/a$a;->a([B)V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->K:[B

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->q:Lcom/sigmob/sdk/base/views/gif/a$a;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/base/views/gif/a$a;->a([B)V

    :cond_4
    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 2
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/gif/a;->f()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->y:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->z:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    return v0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->F:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->i:I

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->j:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->x:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/gif/a;->a(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized k()Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    if-gez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to decode frame, frameCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v2, v2, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " framePointer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    :cond_1
    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v3, v3, Lcom/sigmob/sdk/base/views/gif/c;->e:Ljava/util/List;

    iget v4, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/views/gif/b;

    iget v4, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    sub-int/2addr v4, v1

    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v5, v5, Lcom/sigmob/sdk/base/views/gif/c;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/views/gif/b;

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    iget-object v5, v3, Lcom/sigmob/sdk/base/views/gif/b;->i:[I

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v5, v5, Lcom/sigmob/sdk/base/views/gif/c;->f:[I

    :goto_2
    iput-object v5, p0, Lcom/sigmob/sdk/base/views/gif/a;->p:[I

    if-nez v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Valid Color Table for frame #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_1
    iget-boolean v1, v3, Lcom/sigmob/sdk/base/views/gif/b;->k:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->B:[I

    array-length v2, v5

    invoke-static {v5, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->B:[I

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->p:[I

    iget v2, v3, Lcom/sigmob/sdk/base/views/gif/b;->j:I

    aput v0, v1, v2

    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/sigmob/sdk/base/views/gif/a;->a(Lcom/sigmob/sdk/base/views/gif/b;Lcom/sigmob/sdk/base/views/gif/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    :goto_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to decode frame, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->I:I

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->v:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->m:I

    return v0
.end method

.method public n()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->u:I

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/a;->x:I

    return-void
.end method
