.class public Lcom/octopus/ad/internal/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/octopus/ad/internal/c/i;

.field private e:I


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
.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/internal/c/e;->e:I

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/c/e;->d:Lcom/octopus/ad/internal/c/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/internal/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/internal/c/e;->c:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/c/e;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/c/e;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/c/e;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Lcom/octopus/ad/internal/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/c/e;->d:Lcom/octopus/ad/internal/c/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/c/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
