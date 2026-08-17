.class Lcom/octopus/ad/internal/e/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b$3;->a:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$3;->a:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$3;->a:Lcom/octopus/ad/internal/e/b;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$3;->a:Lcom/octopus/ad/internal/e/b;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
