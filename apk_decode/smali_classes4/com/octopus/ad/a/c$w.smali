.class public Lcom/octopus/ad/a/c$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/octopus/ad/a/g$a;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/octopus/ad/a/g$h;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/octopus/ad/a/c$f;

.field private k:Lcom/octopus/ad/a/c$p;

.field private l:Lcom/octopus/ad/a/c$x;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->D:Z

    .line 2
    .line 3
    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->F:Z

    .line 2
    .line 3
    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->H:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->P:I

    .line 2
    .line 3
    return v0
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->Q:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->Q:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/a/c$w;->d:I

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$f;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->j:Lcom/octopus/ad/a/c$f;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$p;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->k:Lcom/octopus/ad/a/c$p;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$x;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->l:Lcom/octopus/ad/a/c$x;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/g$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->c:Lcom/octopus/ad/a/g$a;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/g$h;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->f:Lcom/octopus/ad/a/g$h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$d;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->Q:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->m:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->n:Z

    return-void
.end method

.method public c()Lcom/octopus/ad/a/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->c:Lcom/octopus/ad/a/g$a;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/a/c$w;->t:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->o:Z

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/a/c$w;->u:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->h:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->p:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/a/c$w;->v:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->i:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->q:Z

    return-void
.end method

.method public f()Lcom/octopus/ad/a/g$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->f:Lcom/octopus/ad/a/g$h;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->M:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->J:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->r:Z

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->g:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->w:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$w;->O:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->s:Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->K:I

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->x:Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->L:I

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->y:Z

    return-void
.end method

.method public j()Lcom/octopus/ad/a/c$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->j:Lcom/octopus/ad/a/c$f;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->N:I

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->z:Z

    return-void
.end method

.method public k()Lcom/octopus/ad/a/c$p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->k:Lcom/octopus/ad/a/c$p;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$w;->P:I

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->A:Z

    return-void
.end method

.method public l()Lcom/octopus/ad/a/c$x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$w;->l:Lcom/octopus/ad/a/c$x;

    return-object v0
.end method

.method public l(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->B:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->C:Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->m:Z

    return v0
.end method

.method public n(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->D:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->n:Z

    return v0
.end method

.method public o(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->E:Z

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->o:Z

    return v0
.end method

.method public p(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->F:Z

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->p:Z

    return v0
.end method

.method public q(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->G:Z

    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->q:Z

    return v0
.end method

.method public r(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$w;->I:Z

    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->r:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$w;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$w;->A:Z

    .line 2
    .line 3
    return v0
.end method
