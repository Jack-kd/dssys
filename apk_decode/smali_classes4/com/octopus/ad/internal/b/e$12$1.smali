.class Lcom/octopus/ad/internal/b/e$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/e$12;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$12$1;->a:Lcom/octopus/ad/internal/b/e$12;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$1;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$1;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12$1;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/octopus/ad/internal/b/e;->g(Lcom/octopus/ad/internal/b/e;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr v1, v2

    .line 40
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    return-void
.end method
