.class final Lcom/kwad/components/core/innerEc/live/b/c/e$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/a/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/e;->sf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic We:Lcom/kwad/components/core/innerEc/live/b/c/e;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$10;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final rx()V
    .locals 2

    .line 1
    const-string v0, "LiveDetailTKPresenter"

    .line 2
    .line 3
    const-string v1, "onCallShowSoftInput: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$10;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->p(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UN:Lcom/kwad/sdk/g/b;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/g/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method
