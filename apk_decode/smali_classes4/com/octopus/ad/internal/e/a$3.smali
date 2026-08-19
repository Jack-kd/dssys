.class Lcom/octopus/ad/internal/e/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$3;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$3;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->h(Lcom/octopus/ad/internal/e/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->openLocalBrowser(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$3;->a:Lcom/octopus/ad/internal/e/a;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$3;->a:Lcom/octopus/ad/internal/e/a;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

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
