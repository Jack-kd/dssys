.class Lcom/octopus/ad/internal/e/a$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$35;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/octopus/ad/internal/e/a$35;->a:Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$35;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->f(Lcom/octopus/ad/internal/e/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$35;->b:Lcom/octopus/ad/internal/e/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->d(Lcom/octopus/ad/internal/e/a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a$35;->a:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$35;->b:Lcom/octopus/ad/internal/e/a;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->g(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/k$a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
