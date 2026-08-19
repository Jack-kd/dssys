.class public final Lcom/ubix/ssp/ad/e/y/a/a$b$e;
.super Lcom/ubix/ssp/ad/e/y/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/y/a/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/y/c/f;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e()Lcom/ubix/ssp/ad/e/y/a/a$b$e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/c/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/a$b$e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/c/b;)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IF)V

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IF)V

    :cond_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IF)V

    :cond_2
    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IF)V

    :cond_3
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/b;)V

    return-void
.end method

.method public b()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/e/y/c/f;->b()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/c/a;)Lcom/ubix/ssp/ad/e/y/a/a$b$e;
    .locals 2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/y/c/h;->b(Lcom/ubix/ssp/ad/e/y/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->j()F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->j()F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->j()F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/y/c/a;->j()F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public e()Lcom/ubix/ssp/ad/e/y/a/a$b$e;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/y/c/f;->a:I

    return-object p0
.end method
