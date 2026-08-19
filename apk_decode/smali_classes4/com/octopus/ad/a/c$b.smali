.class public Lcom/octopus/ad/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/a/c$b$b;,
        Lcom/octopus/ad/a/c$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/octopus/ad/a/e;

.field private k:Lcom/octopus/ad/model/ComplianceInfo;

.field private l:Lcom/octopus/ad/a/i;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Lcom/octopus/ad/a/c$i;

.field private t:Lcom/octopus/ad/a/c$b$a;

.field private u:Lcom/octopus/ad/a/c$b$b;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$aa;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/a/c$b;->d:I

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$b$a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->t:Lcom/octopus/ad/a/c$b$a;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$b$b;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->u:Lcom/octopus/ad/a/c$b$b;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/e;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->j:Lcom/octopus/ad/a/e;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/i;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->l:Lcom/octopus/ad/a/i;

    return-void
.end method

.method public a(Lcom/octopus/ad/model/ComplianceInfo;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->k:Lcom/octopus/ad/model/ComplianceInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->v:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$aa;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->x:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$b;->o:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/a/c$b;->r:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->w:Ljava/util/ArrayList;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$i;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->y:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$b;->n:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$b;->p:Z

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$b;->d:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$b;->q:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->h:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$b;->i:Ljava/lang/String;

    return-void
.end method

.method public i()Lcom/octopus/ad/model/ComplianceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->k:Lcom/octopus/ad/model/ComplianceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lcom/octopus/ad/a/c$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->s:Lcom/octopus/ad/a/c$i;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$b;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$b;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$b;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$b;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Lcom/octopus/ad/a/c$b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->t:Lcom/octopus/ad/a/c$b$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/octopus/ad/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->l:Lcom/octopus/ad/a/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Lcom/octopus/ad/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->j:Lcom/octopus/ad/a/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->v:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->w:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$aa;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->x:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$b;->y:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
