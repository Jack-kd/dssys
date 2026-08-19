.class public Lcom/beizi/fusion/y1$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/beizi/fusion/k7;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;

.field private j:Lcom/beizi/fusion/y1$g;

.field private k:Lcom/beizi/fusion/lm;

.field private l:I

.field private m:I

.field private n:Lcom/beizi/fusion/y5;

.field private o:Lcom/beizi/fusion/nj;

.field private p:Lcom/beizi/fusion/nj;

.field private q:Lcom/beizi/fusion/zk;

.field private r:Lcom/beizi/fusion/qh;

.field private s:Lcom/beizi/fusion/jp;

.field private t:Lcom/beizi/fusion/y4;

.field private u:Lcom/beizi/fusion/qp;

.field private v:Lcom/beizi/fusion/g5;

.field private w:I


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
.method public a()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/fusion/y1$j;->e:I

    return-void
.end method

.method public a(Lcom/beizi/fusion/g5;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->v:Lcom/beizi/fusion/g5;

    return-void
.end method

.method public a(Lcom/beizi/fusion/jp;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->s:Lcom/beizi/fusion/jp;

    return-void
.end method

.method public a(Lcom/beizi/fusion/k7;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->b:Lcom/beizi/fusion/k7;

    return-void
.end method

.method public a(Lcom/beizi/fusion/lm;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->k:Lcom/beizi/fusion/lm;

    return-void
.end method

.method public a(Lcom/beizi/fusion/nj;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->p:Lcom/beizi/fusion/nj;

    return-void
.end method

.method public a(Lcom/beizi/fusion/qh;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->r:Lcom/beizi/fusion/qh;

    return-void
.end method

.method public a(Lcom/beizi/fusion/qp;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->u:Lcom/beizi/fusion/qp;

    return-void
.end method

.method public a(Lcom/beizi/fusion/y1$g;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->j:Lcom/beizi/fusion/y1$g;

    return-void
.end method

.method public a(Lcom/beizi/fusion/y4;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->t:Lcom/beizi/fusion/y4;

    return-void
.end method

.method public a(Lcom/beizi/fusion/y5;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->n:Lcom/beizi/fusion/y5;

    return-void
.end method

.method public a(Lcom/beizi/fusion/zk;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->q:Lcom/beizi/fusion/zk;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->i:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/y1$j;->d:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->i:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/y1$j;->f:I

    return-void
.end method

.method public b(Lcom/beizi/fusion/nj;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/y1$j;->o:Lcom/beizi/fusion/nj;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/y1$j;->h:Z

    return-void
.end method

.method public c()Lcom/beizi/fusion/k7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->b:Lcom/beizi/fusion/k7;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/y1$j;->c:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/y1$j;->g:Z

    return-void
.end method

.method public d()Lcom/beizi/fusion/y1$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->j:Lcom/beizi/fusion/y1$g;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/y1$j;->w:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/y1$j;->l:I

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/y1$j;->d:Z

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/y1$j;->m:I

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/y1$j;->h:Z

    return v0
.end method

.method public g()Lcom/beizi/fusion/y4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->t:Lcom/beizi/fusion/y4;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lcom/beizi/fusion/g5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->v:Lcom/beizi/fusion/g5;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/beizi/fusion/y5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->n:Lcom/beizi/fusion/y5;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/beizi/fusion/nj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->p:Lcom/beizi/fusion/nj;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lcom/beizi/fusion/qh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->r:Lcom/beizi/fusion/qh;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/y1$j;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/y1$j;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/y1$j;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()Lcom/beizi/fusion/qp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->u:Lcom/beizi/fusion/qp;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lcom/beizi/fusion/nj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->o:Lcom/beizi/fusion/nj;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/beizi/fusion/zk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->q:Lcom/beizi/fusion/zk;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/y1$j;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public s()Lcom/beizi/fusion/lm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->k:Lcom/beizi/fusion/lm;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/y1$j;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/y1$j;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/y1$j;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public w()Lcom/beizi/fusion/jp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/y1$j;->s:Lcom/beizi/fusion/jp;

    .line 2
    .line 3
    return-object v0
.end method
