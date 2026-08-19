.class final Lcom/kwad/components/ad/reward/presenter/f/b$5;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/presenter/f/b;->a(Lcom/kwad/components/core/webview/tachikoma/c/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic AG:Lcom/kwad/components/ad/reward/presenter/f/b;

.field final synthetic AH:Lcom/kwad/components/core/webview/tachikoma/c/u;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/f/b;Lcom/kwad/components/core/webview/tachikoma/c/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AG:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AH:Lcom/kwad/components/core/webview/tachikoma/c/u;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AG:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/f/b;->q(Lcom/kwad/components/ad/reward/presenter/f/b;)Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AG:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/f/b;->r(Lcom/kwad/components/ad/reward/presenter/f/b;)Lcom/kwad/components/ad/reward/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AH:Lcom/kwad/components/core/webview/tachikoma/c/u;

    .line 20
    .line 21
    iget-wide v0, v0, Lcom/kwad/components/core/webview/tachikoma/c/u;->apv:J

    .line 22
    .line 23
    const-wide/16 v2, 0x3e8

    .line 24
    .line 25
    mul-long/2addr v0, v2

    .line 26
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AG:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/f/b;->s(Lcom/kwad/components/ad/reward/presenter/f/b;)Lcom/kwad/components/ad/reward/g;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 33
    .line 34
    invoke-interface {v2, v0, v1}, Lcom/kwad/components/ad/reward/e/b;->onVideoSkipToEnd(J)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/f/b$5;->AG:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/f/b;->t(Lcom/kwad/components/ad/reward/presenter/f/b;)Lcom/kwad/components/ad/reward/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/f;->u(Lcom/kwad/components/ad/reward/g;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
