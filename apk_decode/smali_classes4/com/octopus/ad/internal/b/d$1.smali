.class Lcom/octopus/ad/internal/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/d;->a(Lcom/octopus/ad/internal/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/c;

.field final synthetic b:Lcom/octopus/ad/internal/b/e;

.field final synthetic c:Lcom/octopus/ad/internal/b/f;

.field final synthetic d:Lcom/octopus/ad/internal/b/d;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/d;Lcom/octopus/ad/internal/b/c;Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/internal/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/d$1;->d:Lcom/octopus/ad/internal/b/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/d$1;->a:Lcom/octopus/ad/internal/b/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/b/d$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/octopus/ad/internal/b/d$1;->c:Lcom/octopus/ad/internal/b/f;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/octopus/ad/internal/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d$1;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lcom/octopus/ad/NativeAdResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d$1;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->q()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d$1;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->s()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d$1;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->t()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
