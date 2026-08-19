.class Lcom/octopus/ad/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/b/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/octopus/ad/b/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/b/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/b/a$1;->b:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/octopus/ad/b/a$1;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/b/a$1;->b:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/a;)Lcom/octopus/ad/b/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/octopus/ad/b/a$1;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/b/a$1;->b:Lcom/octopus/ad/b/a;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/a;)Lcom/octopus/ad/b/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/octopus/ad/b/b;->b()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/b/a$1;->b:Lcom/octopus/ad/b/a;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/a;)Lcom/octopus/ad/b/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/octopus/ad/b/b;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
