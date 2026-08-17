.class public Lcom/octopus/ad/a/c$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:D

.field private i:D

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/octopus/ad/a/c$v;->c:I

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 3
    iput-wide v0, p0, Lcom/octopus/ad/a/c$v;->h:D

    return-void
.end method

.method public constructor <init>(DDILjava/lang/String;IIII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/octopus/ad/a/c$v;->h:D

    .line 6
    iput p5, p0, Lcom/octopus/ad/a/c$v;->d:I

    .line 7
    iput-wide p3, p0, Lcom/octopus/ad/a/c$v;->i:D

    .line 8
    iput-object p6, p0, Lcom/octopus/ad/a/c$v;->j:Ljava/lang/String;

    .line 9
    iput p7, p0, Lcom/octopus/ad/a/c$v;->c:I

    .line 10
    iput p8, p0, Lcom/octopus/ad/a/c$v;->b:I

    .line 11
    iput p9, p0, Lcom/octopus/ad/a/c$v;->e:I

    .line 12
    iput p10, p0, Lcom/octopus/ad/a/c$v;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$v;->a:I

    return v0
.end method

.method public a(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/a/c$v;->h:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$v;->j:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$v;->b:I

    return v0
.end method

.method public b(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/a/c$v;->i:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$v;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->d:I

    return-void
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/a/c$v;->h:D

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->c:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$v;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->e:I

    return-void
.end method

.method public f()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/a/c$v;->i:D

    return-wide v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->f:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$v;->c:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$v;->g:I

    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$v;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$v;->g:I

    .line 2
    .line 3
    return v0
.end method
