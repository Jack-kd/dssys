.class Lcom/octopus/ad/internal/b/e$12$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/octopus/ad/internal/b/e$12;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e$12;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$12$3;->b:Lcom/octopus/ad/internal/b/e$12;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$12$3;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$12$3;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->openLocalBrowser(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$12$3;->b:Lcom/octopus/ad/internal/b/e$12;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$12$3;->b:Lcom/octopus/ad/internal/b/e$12;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->c()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
