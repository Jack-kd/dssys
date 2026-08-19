.class public LL1/l;
.super LL1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LL1/l$a;
    }
.end annotation


# instance fields
.field public n:LL1/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, v1}, LL1/a;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(LL1/d;)V
    .locals 3

    .line 7
    invoke-interface {p1}, LL1/d;->s0()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, LL1/a;-><init>(IZ)V

    .line 8
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    move-result-object v0

    iput-object v0, p0, LL1/l;->n:LL1/d;

    .line 9
    invoke-interface {p1}, LL1/d;->n0()I

    move-result v0

    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 10
    invoke-interface {p1}, LL1/d;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, LL1/a;->z0(I)V

    .line 11
    invoke-interface {p1}, LL1/d;->x0()I

    move-result v0

    invoke-virtual {p0, v0}, LL1/a;->o0(I)V

    .line 12
    invoke-interface {p1}, LL1/d;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, LL1/a;->b:I

    return-void
.end method

.method public constructor <init>(LL1/d;IIII)V
    .locals 2

    .line 1
    invoke-interface {p1}, LL1/d;->s0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, LL1/a;-><init>(IZ)V

    .line 2
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    move-result-object p1

    iput-object p1, p0, LL1/l;->n:LL1/d;

    .line 3
    invoke-virtual {p0, p4}, LL1/a;->q0(I)V

    .line 4
    invoke-virtual {p0, p3}, LL1/a;->z0(I)V

    .line 5
    invoke-virtual {p0, p2}, LL1/a;->o0(I)V

    .line 6
    iput p5, p0, LL1/a;->b:I

    return-void
.end method


# virtual methods
.method public b0(ILL1/d;)I
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LL1/d;->b0(ILL1/d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public buffer()LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/d;->buffer()LL1/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c0(IB)V
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LL1/d;->c0(IB)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, LL1/a;->o0(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, LL1/a;->z0(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 10
    .line 11
    invoke-interface {v0}, LL1/d;->getIndex()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 19
    .line 20
    invoke-interface {v0}, LL1/d;->getIndex()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, LL1/a;->z0(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public d0(I[BII)I
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, LL1/d;->d0(I[BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_2

    .line 2
    .line 3
    instance-of v0, p1, LL1/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, LL1/a;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public g0(I[BII)I
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, LL1/d;->g0(I[BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public h0(II)LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LL1/d;->h0(II)LL1/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/d;->isReadOnly()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k0(I)B
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LL1/d;->k0(I)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public p0()[B
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/d;->p0()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "INVALID"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-super {p0}, LL1/a;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public u0()V
    .locals 0

    .line 1
    return-void
.end method

.method public update(II)V
    .locals 2

    .line 8
    iget v0, p0, LL1/a;->b:I

    const/4 v1, 0x2

    .line 9
    iput v1, p0, LL1/a;->b:I

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, LL1/a;->z0(I)V

    .line 11
    invoke-virtual {p0, p2}, LL1/a;->q0(I)V

    .line 12
    invoke-virtual {p0, p1}, LL1/a;->z0(I)V

    const/4 p1, -0x1

    .line 13
    invoke-virtual {p0, p1}, LL1/a;->o0(I)V

    .line 14
    iput v0, p0, LL1/a;->b:I

    return-void
.end method

.method public update(LL1/d;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, LL1/a;->b:I

    .line 2
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    move-result-object v1

    iput-object v1, p0, LL1/l;->n:LL1/d;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, LL1/a;->z0(I)V

    .line 4
    invoke-interface {p1}, LL1/d;->n0()I

    move-result v1

    invoke-virtual {p0, v1}, LL1/a;->q0(I)V

    .line 5
    invoke-interface {p1}, LL1/d;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, LL1/a;->z0(I)V

    .line 6
    invoke-interface {p1}, LL1/d;->x0()I

    move-result v1

    invoke-virtual {p0, v1}, LL1/a;->o0(I)V

    .line 7
    invoke-interface {p1}, LL1/d;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, LL1/a;->b:I

    return-void
.end method

.method public w0()I
    .locals 1

    .line 1
    iget-object v0, p0, LL1/l;->n:LL1/d;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/d;->w0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public y0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
