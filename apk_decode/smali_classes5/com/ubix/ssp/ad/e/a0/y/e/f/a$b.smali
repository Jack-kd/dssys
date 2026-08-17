.class Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/y/e/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;
    }
.end annotation


# instance fields
.field a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;I)V
    .locals 2

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->b:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p2, p2, 0x3

    new-array p1, p2, [Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    aget-object v1, v0, p1

    iget v2, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->c:I

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a()D

    move-result-wide v2

    :goto_0
    iput-wide v2, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->d:D

    return-void

    :cond_0
    iget v2, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a:I

    iget v3, v1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b:I

    if-ne v2, v3, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    aget-object v2, v0, p1

    iget-wide v2, v2, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->d:D

    or-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    iget-wide v4, p1, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->d:D

    add-double/2addr v2, v4

    goto :goto_0
.end method

.method public a(III)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a(II)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b()I

    move-result v0

    shl-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, v0, p3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(III)V

    add-int/lit8 v0, v0, 0x1

    or-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(III)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a:[Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;

    aget-object v0, v0, p3

    iget v1, v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a:I

    if-lt v1, p1, :cond_0

    iget v1, v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b:I

    if-gt v1, p2, :cond_0

    iget p1, v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->c:I

    add-int/2addr p1, p4

    iput p1, v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->c:I

    invoke-virtual {p0, p3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b()I

    move-result v0

    if-gt p1, v0, :cond_1

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(IIII)V

    :cond_1
    if-le p2, v0, :cond_2

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(IIII)V

    :cond_2
    invoke-virtual {p0, p3}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->a(I)V

    return-void
.end method
