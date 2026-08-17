.class public Lcom/beizi/fusion/p5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/p5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/beizi/fusion/o7;

.field private e:Lcom/beizi/fusion/l7;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/HashSet;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(I)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/fusion/p5$a;->C:I

    return-object p0
.end method

.method public a(Lcom/beizi/fusion/l7;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->e:Lcom/beizi/fusion/l7;

    return-object p0
.end method

.method public a(Lcom/beizi/fusion/o7;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->d:Lcom/beizi/fusion/o7;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->t:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/beizi/fusion/p5$a;->F:Z

    return-object p0
.end method

.method public a()Lcom/beizi/fusion/p5;
    .locals 2

    .line 6
    new-instance v0, Lcom/beizi/fusion/p5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beizi/fusion/p5;-><init>(Lcom/beizi/fusion/o5;)V

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->e:Lcom/beizi/fusion/l7;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->a(Lcom/beizi/fusion/p5;Lcom/beizi/fusion/l7;)Lcom/beizi/fusion/l7;

    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->d:Lcom/beizi/fusion/o7;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->a(Lcom/beizi/fusion/p5;Lcom/beizi/fusion/o7;)Lcom/beizi/fusion/o7;

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->s(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->v(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->w(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->x(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->y(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->z(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->A(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->a(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->b(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->c(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->d(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->e(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->f(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->g(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->s:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->a(Lcom/beizi/fusion/p5;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->h(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->i(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->j(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    iget-boolean v1, p0, Lcom/beizi/fusion/p5$a;->u:Z

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->a(Lcom/beizi/fusion/p5;Z)Z

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->k(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->l(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->m(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->n(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->o(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->p(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->q(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/beizi/fusion/p5$a;->C:I

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->a(Lcom/beizi/fusion/p5;I)I

    .line 36
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->r(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->t(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-boolean v1, p0, Lcom/beizi/fusion/p5$a;->F:Z

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->b(Lcom/beizi/fusion/p5;Z)Z

    .line 39
    iget-object v1, p0, Lcom/beizi/fusion/p5$a;->G:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/p5;->u(Lcom/beizi/fusion/p5;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->D:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/beizi/fusion/p5$a;->u:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/beizi/fusion/p5$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/p5$a;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
