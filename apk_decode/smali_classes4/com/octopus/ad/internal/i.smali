.class public Lcom/octopus/ad/internal/i;
.super Lcom/octopus/ad/internal/c/d;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/octopus/ad/internal/c/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/c/d;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/octopus/ad/internal/i;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/internal/c/d$a;)Lcom/octopus/ad/internal/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/i;->b:Lcom/octopus/ad/internal/c/d$a;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/internal/c/e;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/i;->b:Lcom/octopus/ad/internal/c/d$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/e;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/e;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/octopus/ad/internal/c/d$a;->a(IZLjava/lang/String;)V

    :cond_0
    return-void
.end method
