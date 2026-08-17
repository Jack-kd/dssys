.class public final Lcom/octopus/ad/a/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/octopus/ad/a/g$i;

.field private e:Lcom/octopus/ad/a/g$g;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/octopus/ad/model/ShakeValue;

.field private q:Lcom/octopus/ad/a/f$a;

.field private r:Lcom/octopus/ad/a/f$c;

.field private s:Lcom/octopus/ad/a/f$b;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/a/b$b$a;->o:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/octopus/ad/a/b$b$a;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(I)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/octopus/ad/a/b$b$a;->l:I

    return-object p0
.end method

.method public a(J)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/octopus/ad/a/b$b$a;->f:J

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/f$a;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->q:Lcom/octopus/ad/a/f$a;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/f$b;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->s:Lcom/octopus/ad/a/f$b;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/f$c;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->r:Lcom/octopus/ad/a/f$c;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/g$g;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->e:Lcom/octopus/ad/a/g$g;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/g$i;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->d:Lcom/octopus/ad/a/g$i;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/model/ShakeValue;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->p:Lcom/octopus/ad/model/ShakeValue;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/octopus/ad/a/b$b$a;->o:Z

    return-object p0
.end method

.method public a()Lcom/octopus/ad/a/b$b;
    .locals 3

    .line 11
    new-instance v0, Lcom/octopus/ad/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/a/b$b;-><init>(Lcom/octopus/ad/a/b$1;)V

    .line 12
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->b(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget v1, p0, Lcom/octopus/ad/a/b$b$a;->l:I

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;I)I

    .line 15
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->q:Lcom/octopus/ad/a/f$a;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/f$a;)Lcom/octopus/ad/a/f$a;

    .line 16
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->e:Lcom/octopus/ad/a/g$g;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/g$g;)Lcom/octopus/ad/a/g$g;

    .line 17
    iget-wide v1, p0, Lcom/octopus/ad/a/b$b$a;->m:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;J)J

    .line 18
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->d:Lcom/octopus/ad/a/g$i;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/g$i;)Lcom/octopus/ad/a/g$i;

    .line 19
    iget-wide v1, p0, Lcom/octopus/ad/a/b$b$a;->f:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/a/b$b;->b(Lcom/octopus/ad/a/b$b;J)J

    .line 20
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->c(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->d(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iget-wide v1, p0, Lcom/octopus/ad/a/b$b$a;->n:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/a/b$b;->c(Lcom/octopus/ad/a/b$b;J)J

    .line 23
    iget-boolean v1, p0, Lcom/octopus/ad/a/b$b$a;->o:Z

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Z)Z

    .line 24
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->p:Lcom/octopus/ad/model/ShakeValue;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/model/ShakeValue;)Lcom/octopus/ad/model/ShakeValue;

    .line 25
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->r:Lcom/octopus/ad/a/f$c;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/f$c;)Lcom/octopus/ad/a/f$c;

    .line 26
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->s:Lcom/octopus/ad/a/f$b;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/f$b;)Lcom/octopus/ad/a/f$b;

    .line 27
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->t:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->a(Lcom/octopus/ad/a/b$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 28
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->e(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->f(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->g(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/octopus/ad/a/b$b$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/b$b;->h(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/a/b$a;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/octopus/ad/a/b$b$a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(J)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/octopus/ad/a/b$b$a;->m:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/octopus/ad/a/b$b$a;->n:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b$a;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
