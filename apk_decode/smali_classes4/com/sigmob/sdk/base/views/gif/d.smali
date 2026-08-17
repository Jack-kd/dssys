.class Lcom/sigmob/sdk/base/views/gif/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "GifHeaderParser"

.field private static final b:I = 0x2

.field private static final c:I = 0xa

.field private static final d:I = 0x100


# instance fields
.field private final e:[B

.field private f:I

.field private g:Lcom/sigmob/sdk/base/views/gif/c;

.field private h:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->e:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->f:I

    return-void
.end method

.method private a(I)[I
    .locals 9

    .line 4
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-object v1

    :goto_1
    const-string v0, "Format Error Reading Color Table"

    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    const/4 v0, 0x1

    iput v0, p1, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    return-object v1
.end method

.method private b(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget v2, v2, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    if-gt v2, p1, :cond_8

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iput v4, v2, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v3, v2, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    if-nez v3, :cond_2

    new-instance v3, Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {v3}, Lcom/sigmob/sdk/base/views/gif/b;-><init>()V

    iput-object v3, v2, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    :cond_2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->f()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v2

    if-eq v2, v4, :cond_4

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_4

    const/16 v3, 0xff

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->o()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->g()I

    const-string v2, ""

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->e:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->l()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    new-instance v3, Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {v3}, Lcom/sigmob/sdk/base/views/gif/b;-><init>()V

    iput-object v3, v2, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->i()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 8

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/b;->e:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/b;->f:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/b;->g:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/b;->h:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

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
    and-int/lit8 v4, v0, 0x7

    add-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v5, v5, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v5, Lcom/sigmob/sdk/base/views/gif/b;->d:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Lcom/sigmob/sdk/base/views/gif/d;->a(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/sigmob/sdk/base/views/gif/b;->i:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/sigmob/sdk/base/views/gif/b;->i:[I

    :goto_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/b;->a:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->p()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->e:Ljava/util/List;

    iget-object v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()I
    .locals 4

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->f:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->f:I

    if-ge v1, v0, :cond_0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/gif/d;->e:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    :cond_0
    return v1
.end method

.method private h()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/gif/d;->b(I)V

    return-void
.end method

.method private i()V
    .locals 5

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v1, v1, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/sigmob/sdk/base/views/gif/b;->c:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iput v4, v1, Lcom/sigmob/sdk/base/views/gif/b;->c:I

    :cond_0
    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lcom/sigmob/sdk/base/views/gif/b;->k:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v2, v2, Lcom/sigmob/sdk/base/views/gif/c;->c:Lcom/sigmob/sdk/base/views/gif/b;

    mul-int/2addr v0, v1

    iput v0, v2, Lcom/sigmob/sdk/base/views/gif/b;->b:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    iput v0, v2, Lcom/sigmob/sdk/base/views/gif/b;->j:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    return-void
.end method

.method private j()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->k()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-boolean v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->h:I

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/views/gif/d;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->f:[I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->f:[I

    iget v2, v0, Lcom/sigmob/sdk/base/views/gif/c;->b:I

    aget v1, v1, v2

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->a:I

    :cond_2
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->m:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->m()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->i:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/sigmob/sdk/base/views/gif/c;->g:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x2

    shl-int v0, v2, v0

    iput v0, v1, Lcom/sigmob/sdk/base/views/gif/c;->h:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    iput v0, v1, Lcom/sigmob/sdk/base/views/gif/c;->b:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->k:I

    return-void
.end method

.method private l()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->g()I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->e:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/sigmob/sdk/base/views/gif/c;->j:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, v2, Lcom/sigmob/sdk/base/views/gif/c;->j:I

    :cond_1
    iget v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->f:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private m()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/sigmob/sdk/base/views/gif/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/c;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iput v1, p0, Lcom/sigmob/sdk/base/views/gif/d;->f:I

    return-void
.end method

.method private o()V
    .locals 3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    :catch_0
    return-void
.end method

.method private p()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->e()I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->o()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lcom/sigmob/sdk/base/views/gif/d;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->n()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lcom/sigmob/sdk/base/views/gif/d;
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/gif/d;->a(Ljava/nio/ByteBuffer;)Lcom/sigmob/sdk/base/views/gif/d;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    const/4 v0, 0x2

    iput v0, p1, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    return-void
.end method

.method public b()Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->j()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/gif/d;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget v0, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/sigmob/sdk/base/views/gif/c;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->j()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/d;->h()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    iget v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->d:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/views/gif/c;->l:I

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/d;->g:Lcom/sigmob/sdk/base/views/gif/c;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
