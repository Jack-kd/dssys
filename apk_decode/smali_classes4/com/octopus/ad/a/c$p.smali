.class public Lcom/octopus/ad/a/c$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/a/c$n;

.field private b:Lcom/octopus/ad/a/c$s;

.field private c:Lcom/octopus/ad/a/c$v;

.field private d:Lcom/octopus/ad/a/c$t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/octopus/ad/a/c$n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$p;->a:Lcom/octopus/ad/a/c$n;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/a/c$n;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$p;->a:Lcom/octopus/ad/a/c$n;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$s;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/a/c$p;->b:Lcom/octopus/ad/a/c$s;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$t;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/a/c$p;->d:Lcom/octopus/ad/a/c$t;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$v;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$p;->c:Lcom/octopus/ad/a/c$v;

    return-void
.end method

.method public b()Lcom/octopus/ad/a/c$s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$p;->b:Lcom/octopus/ad/a/c$s;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/octopus/ad/a/c$v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$p;->c:Lcom/octopus/ad/a/c$v;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/octopus/ad/a/c$t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$p;->d:Lcom/octopus/ad/a/c$t;

    .line 2
    .line 3
    return-object v0
.end method
