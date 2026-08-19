.class Lcom/octopus/ad/internal/b/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$6;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/a/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$6;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/a/d;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$6;->a:Lcom/octopus/ad/internal/b/e;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->A(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/OnSensorListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$6;->a:Lcom/octopus/ad/internal/b/e;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->A(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/OnSensorListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->o()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->p()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-interface {v0, v2, v1, p1}, Lcom/octopus/ad/OnSensorListener;->onShakeTrigger(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
