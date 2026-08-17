.class Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:D

.field final synthetic e:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->e:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->e:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->b:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)[D

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->e:Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b;->b:Lcom/ubix/ssp/ad/e/a0/y/e/f/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/f/a;->a(Lcom/ubix/ssp/ad/e/a0/y/e/f/a;)[D

    move-result-object v0

    iget v3, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a:I

    aget-wide v3, v0, v3

    sub-double/2addr v1, v3

    return-wide v1
.end method

.method public a(II)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a:I

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->d:D

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->c:I

    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->a:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/f/a$b$a;->b:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method
