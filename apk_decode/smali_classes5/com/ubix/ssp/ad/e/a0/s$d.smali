.class Lcom/ubix/ssp/ad/e/a0/s$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:[J

.field private f:[I

.field private g:[F

.field private h:Z

.field private i:I

.field private j:J

.field private k:I

.field private l:F

.field private m:F

.field final synthetic n:Lcom/ubix/ssp/ad/e/a0/s;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/s;IF)V
    .locals 2

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->j:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->l:F

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->d:F

    new-array p1, p2, [J

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    new-array p1, p2, [F

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    return-void
.end method

.method private a(Z)I
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/s;->e(Lcom/ubix/ssp/ad/e/a0/s;)I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    return p1
.end method

.method private a(F)V
    .locals 7

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    array-length v3, v1

    rem-int v3, v2, v3

    aget v3, v1, v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    sub-float v0, p1, v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    array-length v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lt v2, v0, :cond_0

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length v2, v0

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length v1, v0

    sub-int/2addr v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v1

    :cond_2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v5, v2

    sub-int/2addr v5, v4

    const/4 v6, -0x1

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v6

    :goto_2
    aput v0, v1, v5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    array-length v1, v2

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    int-to-float v2, v4

    mul-float/2addr p1, v2

    aput p1, v0, v1

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runDimensionInfo ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";\u6b63\u6570\u8fbe\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    array-length v2, v0

    rem-int/2addr v1, v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    return-void
.end method

.method private b(F)V
    .locals 7

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    array-length v3, v1

    rem-int v3, v2, v3

    aget v3, v1, v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float v0, p1, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    array-length v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lt v2, v0, :cond_0

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length v2, v0

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length v1, v0

    sub-int/2addr v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v1

    :cond_2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v5, v2

    sub-int/2addr v5, v4

    const/4 v6, -0x1

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v6

    :goto_2
    aput v0, v1, v5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    array-length v1, v2

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    int-to-float v2, v4

    mul-float/2addr p1, v2

    aput p1, v0, v1

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runDimensionInfo ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";\u8d1f\u6570\u8fbe\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->k:I

    array-length v2, v0

    rem-int/2addr v1, v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    return-void
.end method

.method private c(F)V
    .locals 6

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget v1, v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    aput v0, v2, v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    int-to-float v2, v4

    mul-float/2addr p1, v2

    aput p1, v0, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runDimensionInfo ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";\u6b63\u6570\u8fbe\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->a(Z)I

    move-result p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-static {v0, p1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    :cond_2
    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    return-void

    :cond_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    return-void
.end method

.method private d(F)V
    .locals 6

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget v1, v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    aput v0, v2, v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    int-to-float v2, v4

    mul-float/2addr p1, v2

    aput p1, v0, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runDimensionInfo ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";\u8d1f\u6570\u8fbe\u5230"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->a(Z)I

    move-result p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-static {v0, p1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    :cond_2
    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    return-void

    :cond_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 13

    .line 3
    const-string v0, "runDimensionInfo ="

    const-string v1, ";"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->l:F

    mul-float/2addr p2, p1

    add-float/2addr v4, p2

    iput v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->l:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float p1, v4

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/s;->f(Lcom/ubix/ssp/ad/e/a0/s;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ";\u8d1f\u6570\u8fbe\u5230"

    const-string v5, ";\u6b63\u6570\u8fbe\u5230"

    const-string v6, "-"

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz p2, :cond_d

    :try_start_1
    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length p2, p2

    if-ge p1, p2, :cond_3

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget p2, p2, v9

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    if-eqz v9, :cond_0

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-nez p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_b

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    aput-wide v10, p1, v9

    iput-boolean v8, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aput v8, p1, p2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    iget v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v4, v7

    aput v4, p1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :goto_1
    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    add-int/2addr p1, v8

    goto/16 :goto_6

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget p2, p2, v5

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_12

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_12

    if-eqz v5, :cond_2

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz p1, :cond_12

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, p1, v5

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aput v7, p1, p2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v5, v7

    aput v5, p1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    array-length v10, p2

    rem-int/2addr v9, v10

    aget p2, p2, v9

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_8

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length p2, p1

    if-ne p2, v8, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v8

    :goto_2
    array-length v4, p1

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    array-length p2, p1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length p2, p1

    sub-int/2addr p2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, p1, p2

    :cond_5
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v9, v4

    sub-int/2addr v9, v8

    if-nez p1, :cond_6

    move p1, v8

    goto :goto_3

    :cond_6
    move p1, v7

    :goto_3
    aput p1, p2, v9

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    array-length p2, v4

    sub-int/2addr p2, v8

    iget v4, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-boolean v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz v9, :cond_7

    move v7, v8

    :cond_7
    int-to-float v7, v7

    mul-float/2addr v4, v7

    aput v4, p1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    array-length v4, p2

    rem-int/2addr v0, v4

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    array-length v9, p2

    rem-int/2addr v5, v9

    aget p2, p2, v5

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_12

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_12

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length p2, p1

    if-ne p2, v8, :cond_9

    move p2, v2

    goto :goto_4

    :cond_9
    move p2, v8

    :goto_4
    array-length v5, p1

    invoke-static {p1, p2, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    array-length p2, p1

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length p2, p1

    sub-int/2addr p2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, p1, p2

    :cond_a
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v9, v5

    sub-int/2addr v9, v8

    if-nez p1, :cond_b

    move p1, v8

    goto :goto_5

    :cond_b
    move p1, v7

    :goto_5
    aput p1, p2, v9

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    array-length p2, v5

    sub-int/2addr p2, v8

    iget v5, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-boolean v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz v9, :cond_c

    move v7, v8

    :cond_c
    int-to-float v7, v7

    mul-float/2addr v5, v7

    aput v5, p1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    array-length v4, p2

    rem-int/2addr v0, v4

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_6
    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    return-void

    :cond_d
    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    if-nez p2, :cond_13

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iget v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float/2addr p2, v9

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v9, v9, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v10, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget v9, v9, v10

    int-to-float v9, v9

    cmpl-float p2, p2, v9

    if-lez p2, :cond_12

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    aput-wide v11, p2, v10

    cmpl-float p1, p1, v3

    if-lez p1, :cond_e

    move p1, v8

    goto :goto_7

    :cond_e
    move p1, v2

    :goto_7
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    iget v9, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    if-eqz p1, :cond_f

    move v10, v8

    goto :goto_8

    :cond_f
    move v10, v7

    :goto_8
    aput v10, p2, v9

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    iget v10, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iget v11, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    sub-float/2addr v10, v11

    if-eqz p1, :cond_10

    move v7, v8

    :cond_10
    int-to-float v7, v7

    mul-float/2addr v10, v7

    aput v10, p2, v9

    if-nez p1, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->g:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    :goto_a
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/s;->q:[I

    array-length v0, v0

    if-ge p2, v0, :cond_15

    iget-boolean p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz p2, :cond_14

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->c(F)V

    return-void

    :cond_14
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->d(F)V

    return-void

    :cond_15
    iget-boolean p2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->h:Z

    if-eqz p2, :cond_16

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->a(F)V

    return-void

    :cond_16
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/s$d;->b(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->i:I

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->c:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->b:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->a:F

    return-void
.end method

.method public a()[I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->f:[I

    return-object v0
.end method

.method public b()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    return v0
.end method

.method public d()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->m:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    const/high16 v3, 0x43340000    # 180.0f

    if-ltz v2, :cond_0

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    sub-float/2addr v0, v1

    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    add-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method public e()[J
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    return-object v0
.end method

.method public f()Z
    .locals 10

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->e:[J

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    aget-wide v6, v0, v4

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    return v5

    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v5

    aget-wide v6, v0, v1

    aget-wide v8, v0, v4

    sub-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$d;->n:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/s;->e(Lcom/ubix/ssp/ad/e/a0/s;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    return v5

    :cond_1
    return v4
.end method
