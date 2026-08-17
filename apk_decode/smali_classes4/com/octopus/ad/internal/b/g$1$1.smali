.class Lcom/octopus/ad/internal/b/g$1$1;
.super Lcom/octopus/ad/internal/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/g$a;

.field final synthetic b:Lcom/octopus/ad/internal/b/g$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/g$1;ZLcom/octopus/ad/internal/b/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/g$1$1;->b:Lcom/octopus/ad/internal/b/g$1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/octopus/ad/internal/b/g$1$1;->a:Lcom/octopus/ad/internal/b/g$a;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/c/d;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g$1$1;->a:Lcom/octopus/ad/internal/b/g$a;

    iget-object v0, v0, Lcom/octopus/ad/internal/b/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/internal/c/e;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/e;->c()Lcom/octopus/ad/internal/c/i;

    move-result-object p1

    sget-object v0, Lcom/octopus/ad/internal/c/i;->a:Lcom/octopus/ad/internal/c/i;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/g$1$1;->a:Lcom/octopus/ad/internal/b/g$a;

    iget v0, p1, Lcom/octopus/ad/internal/b/g$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/octopus/ad/internal/b/g$a;->b:I

    .line 3
    iget-object p1, p0, Lcom/octopus/ad/internal/b/g$1$1;->b:Lcom/octopus/ad/internal/b/g$1;

    iget-object p1, p1, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/g;->a(Lcom/octopus/ad/internal/b/g;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/b/g$1$1;->a:Lcom/octopus/ad/internal/b/g$a;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
