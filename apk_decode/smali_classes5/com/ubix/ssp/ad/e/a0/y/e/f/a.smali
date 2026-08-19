.class public Lcom/ubix/ssp/ad/e/a0/y/e/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;,
        Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;,
        Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;
    }
.end annotation


# instance fields
.field private a:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

.field private b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

.field private c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

.field private d:I

.field private e:I

.field private f:[D


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    const/16 v1, 0x136

    invoke-direct {v0, p0, v1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    new-array v0, v1, [Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    new-array v0, v1, [Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->f:[D

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12c

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;Lcom/ubix/ssp/ad/e/a0/y/e/f/a$a;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    add-int/lit8 v2, v0, 0x1

    new-instance v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    invoke-direct {v4, p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;Lcom/ubix/ssp/ad/e/a0/y/e/f/a$a;)V

    aput-object v4, v1, v2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    new-instance v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    invoke-direct {v4, p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;Lcom/ubix/ssp/ad/e/a0/y/e/f/a$a;)V

    aput-object v4, v1, v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    new-instance v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    invoke-direct {v4, p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;Lcom/ubix/ssp/ad/e/a0/y/e/f/a$a;)V

    aput-object v4, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->d:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->e:I

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_2

    if-le v0, v2, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    aget-object v3, v1, v0

    iget-wide v3, v3, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    add-int/lit8 v5, v0, -0x1

    aget-object v1, v1, v5

    iget-wide v5, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->e:I

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->f:[D

    iget v3, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->e:I

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    aget-object v4, v4, v0

    iget-wide v5, v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    aput-wide v5, v1, v3

    iget v1, v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->a:I

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    if-lez v1, :cond_1

    aget-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v4, v1

    iput v3, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->a:I

    iput v3, v5, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->a:I

    goto :goto_1

    :cond_1
    neg-int v1, v1

    aget-object v5, v4, v1

    add-int/2addr v1, v2

    aget-object v1, v4, v1

    iput v3, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->b:I

    iput v3, v5, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->b:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)[D
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->f:[D

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/a0/y/e/f/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/b;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    aget-object v4, v3, v1

    iget-wide v5, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/b;->a:D

    iput-wide v5, v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->d:D

    iput v0, v4, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->c:I

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->c:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;

    aget-object v5, v4, v1

    iput v1, v5, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->a:I

    iget-wide v6, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/b;->b:D

    iput-wide v6, v5, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    add-int/lit8 v5, v1, 0x1

    aget-object v3, v3, v5

    iget-wide v6, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/b;->c:D

    iput-wide v6, v3, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->d:D

    const/4 v6, -0x1

    iput v6, v3, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->c:I

    aget-object v3, v4, v5

    neg-int v4, v1

    iput v4, v3, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->a:I

    iget-wide v4, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/b;->d:D

    iput-wide v4, v3, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$d;->b:D

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/a0/y/e/f/b;",
            ">;)D"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->d:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->d:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {p1, v4, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->e:I

    sub-int/2addr v2, v4

    invoke-virtual {p1, v4, v2, v4}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(III)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    aget-object v2, v2, v4

    iget v5, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->a:I

    iget v2, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->b:I

    sub-int/2addr v2, v4

    invoke-virtual {p1, v5, v2, v4, v4}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(IIII)V

    move p1, v3

    :goto_0
    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->d:I

    mul-int/2addr v2, v3

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    iget-object v5, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    aget-object v5, v5, v4

    iget-wide v5, v5, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->d:D

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->b:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;

    aget-object v8, v7, p1

    iget-wide v9, v8, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->d:D

    add-int/lit8 v11, p1, -0x1

    aget-object v7, v7, v11

    iget-wide v11, v7, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->d:D

    sub-double/2addr v9, v11

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    iget v5, v8, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->a:I

    iget v6, v8, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->b:I

    sub-int/2addr v6, v4

    iget v7, v8, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$c;->c:I

    invoke-virtual {v2, v5, v6, v4, v7}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method
