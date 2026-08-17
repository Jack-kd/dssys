.class Lcom/octopus/ad/internal/e/a$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->b(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$16;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$16;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->D(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$16;->a:Lcom/octopus/ad/internal/e/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->D(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/octopus/ad/d;->n()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$16;->a:Lcom/octopus/ad/internal/e/a;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->E(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/b/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$16;->a:Lcom/octopus/ad/internal/e/a;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->E(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/b/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->c()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
