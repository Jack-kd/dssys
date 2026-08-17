.class public Lcom/ubix/ssp/ad/d/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/d/l$a;
    }
.end annotation


# instance fields
.field private A:Lcom/ubix/ssp/ad/d/l$a;

.field private A0:Ljava/lang/String;

.field private B:I

.field private B0:J

.field private C:I

.field private C0:I

.field private D:Z

.field private D0:I

.field private E:Z

.field private E0:I

.field private F:I

.field private F0:I

.field private G:Z

.field private G0:I

.field private H:Z

.field private H0:Z

.field private I:I

.field private I0:I

.field private J:I

.field private J0:Z

.field private K:[I

.field private K0:J

.field private L:I

.field private L0:J

.field private M:Z

.field private M0:J

.field private N:Z

.field private N0:Z

.field private O:I

.field private O0:Z

.field private P:I

.field private P0:Z

.field private Q:I

.field private Q0:Z

.field private R:I

.field private R0:Z

.field private S:I

.field private S0:Z

.field private T:Z

.field private U:I

.field private V:D

.field private W:I

.field private X:I

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private a:Z

.field private a0:I

.field private b:Z

.field private b0:I

.field private c:Z

.field private c0:Z

.field private d:I

.field private d0:I

.field private e:I

.field private e0:I

.field private f:I

.field private f0:I

.field private g:D

.field private g0:Z

.field private h:D

.field private h0:Z

.field private i:I

.field private i0:Z

.field private j:I

.field private j0:I

.field private k:Ljava/lang/String;

.field private k0:Z

.field private l:J

.field private l0:Ljava/lang/String;

.field private m:Z

.field private m0:I

.field private n:Z

.field private n0:I

.field private o:I

.field private o0:I

.field private p:Z

.field private p0:I

.field private q:I

.field private q0:I

.field private r:I

.field private r0:Z

.field private s:I

.field private s0:I

.field private t:Z

.field private t0:I

.field private u:D

.field private u0:Z

.field private v:I

.field private v0:I

.field private w:Ljava/lang/String;

.field private w0:I

.field private x:Ljava/lang/String;

.field private x0:I

.field private y:Z

.field private y0:J

.field private z:Z

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->b:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->c:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->d:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/ubix/ssp/ad/d/l;->e:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->f:I

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->g:D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->h:D

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->i:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->j:I

    const-string v4, ""

    iput-object v4, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/ubix/ssp/ad/d/l;->l:J

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->m:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->n:Z

    const/4 v5, 0x2

    iput v5, p0, Lcom/ubix/ssp/ad/d/l;->o:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->p:Z

    const/16 v6, 0x1e

    iput v6, p0, Lcom/ubix/ssp/ad/d/l;->q:I

    const/16 v7, 0x96

    iput v7, p0, Lcom/ubix/ssp/ad/d/l;->r:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->s:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->t:Z

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->u:D

    const/16 v2, 0x23

    iput v2, p0, Lcom/ubix/ssp/ad/d/l;->v:I

    iput-object v4, p0, Lcom/ubix/ssp/ad/d/l;->w:Ljava/lang/String;

    iput-object v4, p0, Lcom/ubix/ssp/ad/d/l;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->y:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->z:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->B:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->C:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->E:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->F:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->G:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->H:Z

    const/16 v3, 0x64

    iput v3, p0, Lcom/ubix/ssp/ad/d/l;->I:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->J:I

    filled-new-array {v2, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/ubix/ssp/ad/d/l;->K:[I

    const/16 v2, 0x1388

    iput v2, p0, Lcom/ubix/ssp/ad/d/l;->L:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->M:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->N:Z

    iput v3, p0, Lcom/ubix/ssp/ad/d/l;->O:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/ubix/ssp/ad/d/l;->P:I

    const/16 v3, 0x32

    iput v3, p0, Lcom/ubix/ssp/ad/d/l;->Q:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->R:I

    const/4 v7, 0x5

    iput v7, p0, Lcom/ubix/ssp/ad/d/l;->S:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->T:Z

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->U:I

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, Lcom/ubix/ssp/ad/d/l;->V:D

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->W:I

    const/16 v8, -0x3e7

    iput v8, p0, Lcom/ubix/ssp/ad/d/l;->X:I

    iput-object v4, p0, Lcom/ubix/ssp/ad/d/l;->Y:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->Z:Z

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->a0:I

    iput v2, p0, Lcom/ubix/ssp/ad/d/l;->b0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->c0:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->d0:I

    const/16 v8, 0x5a

    iput v8, p0, Lcom/ubix/ssp/ad/d/l;->e0:I

    iput v2, p0, Lcom/ubix/ssp/ad/d/l;->f0:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->g0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->h0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->i0:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->j0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->k0:Z

    iput-object v4, p0, Lcom/ubix/ssp/ad/d/l;->l0:Ljava/lang/String;

    iput v3, p0, Lcom/ubix/ssp/ad/d/l;->m0:I

    iput v3, p0, Lcom/ubix/ssp/ad/d/l;->n0:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->o0:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->p0:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->q0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->r0:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->s0:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->t0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->u0:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->v0:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->w0:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->x0:I

    const-wide/32 v2, 0xcdfe600

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->y0:J

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->z0:I

    iput-object v4, p0, Lcom/ubix/ssp/ad/d/l;->A0:Ljava/lang/String;

    const-wide/32 v2, 0xf731400

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->B0:J

    iput v6, p0, Lcom/ubix/ssp/ad/d/l;->C0:I

    iput v5, p0, Lcom/ubix/ssp/ad/d/l;->D0:I

    iput v7, p0, Lcom/ubix/ssp/ad/d/l;->E0:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->F0:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->G0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->H0:Z

    iput v1, p0, Lcom/ubix/ssp/ad/d/l;->I0:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->J0:Z

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->K0:J

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->L0:J

    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/ubix/ssp/ad/d/l;->M0:J

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->N0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->O0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->P0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->Q0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->R0:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->S0:Z

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->x:Ljava/lang/String;

    return-object v0
.end method

.method public A(I)V
    .locals 1

    .line 2
    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->W:I

    return-void

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->W:I

    return-void
.end method

.method public A(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->i0:Z

    return-void
.end method

.method public A0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->T:Z

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->w:Ljava/lang/String;

    return-object v0
.end method

.method public B(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->v:I

    return-void
.end method

.method public B(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->R0:Z

    return-void
.end method

.method public B0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->Q0:Z

    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->i:I

    return v0
.end method

.method public C(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->L:I

    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->b:Z

    return-void
.end method

.method public C0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->N0:Z

    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->f:I

    return v0
.end method

.method public D(I)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->j0:I

    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->a:Z

    return-void
.end method

.method public D0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->O0:Z

    return v0
.end method

.method public E()Lcom/ubix/ssp/ad/d/l$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/d/l$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/d/l$a;-><init>(Lcom/ubix/ssp/ad/d/l;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    :cond_0
    return-object v0
.end method

.method public E(I)V
    .locals 1

    .line 2
    const/16 v0, 0x96

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->r:I

    return-void
.end method

.method public E(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->n:Z

    return-void
.end method

.method public E0()Z
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l$a;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public F(I)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->s:I

    return-void

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->s:I

    return-void
.end method

.method public F()[I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->K:[I

    return-object v0
.end method

.method public F0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->M:Z

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->l0:Ljava/lang/String;

    return-object v0
.end method

.method public G(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->J:I

    return-void
.end method

.method public G0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->H0:Z

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->t0:I

    return v0
.end method

.method public H(I)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->z0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->z0:I

    return-void
.end method

.method public H0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->i0:Z

    return v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->j:I

    return v0
.end method

.method public I(I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->x0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->x0:I

    return-void
.end method

.method public I0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->R0:Z

    return v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->b0:I

    return v0
.end method

.method public J(I)V
    .locals 4

    .line 2
    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->y0:J

    return-void

    :cond_0
    mul-int/lit8 p1, p1, 0x3c

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public J0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->a:Z

    return v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->B0:J

    return-wide v0
.end method

.method public K(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->d:I

    return-void
.end method

.method public K0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->n:Z

    return v0
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->U:I

    return v0
.end method

.method public L(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->e:I

    return-void
.end method

.method public L0()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->V:D

    return-wide v0
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->s0:I

    return v0
.end method

.method public M(I)V
    .locals 1

    .line 2
    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->f0:I

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->f0:I

    return-void

    :cond_1
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->f0:I

    return-void
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->G0:I

    return v0
.end method

.method public N(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->S:I

    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public O(I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->w0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->w0:I

    return-void
.end method

.method public P()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->C0:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public P(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->d0:I

    return-void
.end method

.method public Q()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->e0:I

    return v0
.end method

.method public R()J
    .locals 4

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->F0:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public S()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->W:I

    return v0
.end method

.method public T()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->v:I

    return v0
.end method

.method public U()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->L:I

    return v0
.end method

.method public V()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->j0:I

    return v0
.end method

.method public W()D
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lcom/ubix/ssp/ad/d/l;->g:D

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->r:I

    return v0
.end method

.method public Y()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->s:I

    return v0
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->J:I

    return v0
.end method

.method public a(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/l;->V:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->o:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 3
    const-string v0, "height"

    const-string v1, "hor"

    const-string v2, "ver"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/16 v4, 0x32

    if-eqz p1, :cond_0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->m0:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->n0:I

    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->o0:I

    if-gtz v0, :cond_2

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->o0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->D:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->E:Z

    return v0
.end method

.method public a0()Landroid/graphics/Rect;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->A0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/l;->A0:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "l"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v3, "t"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v4, "r"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    const-string v5, "b"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int v2, v1, v4

    const/16 v5, 0x64

    if-ge v2, v5, :cond_1

    add-int v2, v3, v0

    if-ge v2, v5, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/l;->A0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/l;->u:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->q:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 11

    .line 3
    const-string v0, "inr"

    const-string v1, "of"

    const-string v2, "rd"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v7, p1

    iput-wide v7, p0, Lcom/ubix/ssp/ad/d/l;->K0:J

    cmp-long p1, v7, v5

    if-gez p1, :cond_0

    iput-wide v5, p0, Lcom/ubix/ssp/ad/d/l;->K0:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iput-wide v7, p0, Lcom/ubix/ssp/ad/d/l;->K0:J

    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/ubix/ssp/ad/d/l;->L0:J

    cmp-long p1, v1, v5

    if-gez p1, :cond_2

    iput-wide v5, p0, Lcom/ubix/ssp/ad/d/l;->L0:J

    goto :goto_1

    :cond_2
    long-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v1, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v7

    double-to-long v1, v1

    iput-wide v1, p0, Lcom/ubix/ssp/ad/d/l;->L0:J

    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x5a0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->M0:J

    cmp-long p1, v0, v5

    if-gez p1, :cond_4

    iput-wide v5, p0, Lcom/ubix/ssp/ad/d/l;->M0:J

    return-void

    :cond_4
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->M0:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->Z:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->D:Z

    return v0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->z0:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->o:I

    return v0
.end method

.method public c(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/l;->g:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->B:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->t:Z

    return-void
.end method

.method public c0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->x0:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->q:I

    return v0
.end method

.method public d(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/l;->h:D

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->C:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->x:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->S0:Z

    return-void
.end method

.method public d0()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->y0:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->B:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->F:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->w:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->g0:Z

    return-void
.end method

.method public e0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->C:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->I:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 8

    .line 3
    const-string v0, "interval"

    const-string v1, "times"

    const-string v2, "clickable"

    const-string v3, "duration"

    const-string v4, "url"

    const-string v5, "style"

    const-string v6, "enable"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ubix/ssp/ad/d/l$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/d/l$a;-><init>(Lcom/ubix/ssp/ad/d/l;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {p1, v6}, Lcom/ubix/ssp/ad/d/l$a;->a(Lcom/ubix/ssp/ad/d/l$a;Z)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/ubix/ssp/ad/d/l$a;->a(Lcom/ubix/ssp/ad/d/l$a;I)I

    :cond_1
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/ubix/ssp/ad/d/l$a;->a(Lcom/ubix/ssp/ad/d/l$a;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/ubix/ssp/ad/d/l$a;->b(Lcom/ubix/ssp/ad/d/l$a;I)I

    :cond_3
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/d/l$a;->b(Lcom/ubix/ssp/ad/d/l$a;Z)Z

    :cond_4
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/d/l$a;->c(Lcom/ubix/ssp/ad/d/l$a;I)I

    :cond_5
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/d/l$a;->d(Lcom/ubix/ssp/ad/d/l$a;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->r0:Z

    return-void
.end method

.method public f0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->F:I

    return v0
.end method

.method public g(I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->v0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->v0:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/l;->K:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->J0:Z

    return-void
.end method

.method public g0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->f0:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->o0:I

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->a0:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->l0:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->N:Z

    return-void
.end method

.method public h0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->S:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->n0:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->R:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 6

    .line 3
    const-string v0, "t_t"

    const-string v1, "g_t"

    const-string v2, "g_s_t"

    const-string v3, "r_m_t"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    invoke-virtual {v4, v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->C0:I

    if-ge p1, v5, :cond_0

    iput v5, p0, Lcom/ubix/ssp/ad/d/l;->C0:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->D0:I

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->E0:I

    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->F0:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_3

    iput v0, p0, Lcom/ubix/ssp/ad/d/l;->F0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->u0:Z

    return-void
.end method

.method public i0()D
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lcom/ubix/ssp/ad/d/l;->h:D

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->m0:I

    return v0
.end method

.method public j(I)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->I0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->I0:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->Y:Ljava/lang/String;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->z:Z

    return-void
.end method

.method public j0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->w0:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->I:I

    return v0
.end method

.method public k(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->O:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l;->A0:Ljava/lang/String;

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->y:Z

    return-void
.end method

.method public k0()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->d0:I

    return v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->L0:J

    return-wide v0
.end method

.method public l(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->P:I

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->k0:Z

    return-void
.end method

.method public l0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->Z:Z

    return v0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->M0:J

    return-wide v0
.end method

.method public m(I)V
    .locals 1

    .line 2
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/16 p1, 0x32

    :cond_1
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->Q:I

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->P0:Z

    return-void
.end method

.method public m0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->t:Z

    return v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->K0:J

    return-wide v0
.end method

.method public n(I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->p0:I

    return-void

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->p0:I

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->G:Z

    return-void
.end method

.method public n0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->S0:Z

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->v0:I

    return v0
.end method

.method public o(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->q0:I

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->h0:Z

    return-void
.end method

.method public o0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->g0:Z

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->a0:I

    return v0
.end method

.method public p(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->i:I

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->H:Z

    return-void
.end method

.method public p0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->r0:Z

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->R:I

    return v0
.end method

.method public q(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->f:I

    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->c0:Z

    return-void
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->J0:Z

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->I0:I

    return v0
.end method

.method public r(I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->t0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->t0:I

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->T:Z

    return-void
.end method

.method public r0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->N:Z

    return v0
.end method

.method public s()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->Q:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public s(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->j:I

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->Q0:Z

    return-void
.end method

.method public s0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->u0:Z

    return v0
.end method

.method public t()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->E0:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public t(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->b0:I

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->p:Z

    return-void
.end method

.method public t0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->z:Z

    return v0
.end method

.method public u()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->D0:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public u(I)V
    .locals 4

    .line 2
    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->B0:J

    return-void

    :cond_0
    mul-int/lit8 p1, p1, 0x3c

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public u(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->N0:Z

    return-void
.end method

.method public u0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->y:Z

    return v0
.end method

.method public v()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->u:D

    return-wide v0
.end method

.method public v(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->U:I

    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->O0:Z

    return-void
.end method

.method public v0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->k0:Z

    return v0
.end method

.method public w()Landroid/graphics/Rect;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "l"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v3, "t"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v4, "r"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    const-string v5, "b"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public w(I)V
    .locals 0

    .line 2
    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->s0:I

    return-void

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->s0:I

    return-void
.end method

.method public w(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->c:Z

    return-void
.end method

.method public w0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->P0:Z

    return v0
.end method

.method public x()J
    .locals 4

    .line 1
    const-string v0, "i"

    :try_start_0
    iget-boolean v1, p0, Lcom/ubix/ssp/ad/d/l;->m:Z

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->l:J

    return-wide v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/l;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/d/l;->m:Z

    iput-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/l;->l:J

    return-wide v0
.end method

.method public x(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->G0:I

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->M:Z

    return-void
.end method

.method public x0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->h0:Z

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->p0:I

    return v0
.end method

.method public y(I)V
    .locals 0

    .line 2
    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->X:I

    return-void

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->X:I

    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->E:Z

    return-void
.end method

.method public y0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->H:Z

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l;->q0:I

    return v0
.end method

.method public z(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/16 p1, 0x5a

    iput p1, p0, Lcom/ubix/ssp/ad/d/l;->e0:I

    return-void
.end method

.method public z(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l;->H0:Z

    return-void
.end method

.method public z0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l;->c0:Z

    return v0
.end method
