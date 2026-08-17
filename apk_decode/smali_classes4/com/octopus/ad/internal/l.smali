.class public Lcom/octopus/ad/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/octopus/ad/internal/l;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/l;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/octopus/ad/internal/l;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/octopus/ad/internal/l;->f:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/octopus/ad/internal/l;->e:Ljava/lang/String;

    .line 25
    iput-wide p5, p0, Lcom/octopus/ad/internal/l;->h:J

    .line 26
    iput p4, p0, Lcom/octopus/ad/internal/l;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/octopus/ad/internal/l;->f:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/octopus/ad/internal/l;->e:Ljava/lang/String;

    .line 31
    iput-wide p4, p0, Lcom/octopus/ad/internal/l;->h:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/octopus/ad/internal/l;->f:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/octopus/ad/internal/l;->e:Ljava/lang/String;

    .line 18
    iput-wide p4, p0, Lcom/octopus/ad/internal/l;->h:J

    .line 19
    iput p6, p0, Lcom/octopus/ad/internal/l;->c:I

    .line 20
    iput-object p7, p0, Lcom/octopus/ad/internal/l;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/octopus/ad/internal/l;->f:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/octopus/ad/internal/l;->e:Ljava/lang/String;

    .line 12
    iput-wide p4, p0, Lcom/octopus/ad/internal/l;->h:J

    .line 13
    iput-object p6, p0, Lcom/octopus/ad/internal/l;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/l;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/l;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/l;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/l;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/l;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/l;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/l;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/l;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/l;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/l;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
