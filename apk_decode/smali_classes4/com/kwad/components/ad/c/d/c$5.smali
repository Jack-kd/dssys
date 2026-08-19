.class final Lcom/kwad/components/ad/c/d/c$5;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/d/c;->aB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcom/kwad/components/ad/c/d/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/d/c$5;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$5;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->n(Lcom/kwad/components/ad/c/d/c;)Lcom/kwad/components/ad/c/b/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$5;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->m(Lcom/kwad/components/ad/c/d/c;)Landroid/widget/FrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c$5;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/components/ad/c/d/c;->n(Lcom/kwad/components/ad/c/d/c;)Lcom/kwad/components/ad/c/b/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$5;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/d/c;->a(Lcom/kwad/components/ad/c/d/c;Z)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
