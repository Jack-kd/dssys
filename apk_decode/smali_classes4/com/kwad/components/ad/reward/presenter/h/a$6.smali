.class final Lcom/kwad/components/ad/reward/presenter/h/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/presenter/h/a;->iT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Bx:Lcom/kwad/components/ad/reward/presenter/h/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$6;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$6;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->o(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$6;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->p(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/kwad/components/ad/reward/e/b;->onRewardVerify()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$6;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->q(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->pause()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$6;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->r(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->gW()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
