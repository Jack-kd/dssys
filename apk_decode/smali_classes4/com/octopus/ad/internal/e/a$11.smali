.class Lcom/octopus/ad/internal/e/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(III)V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

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
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->x(Lcom/octopus/ad/internal/e/a;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->u(Lcom/octopus/ad/internal/e/a;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->y(Lcom/octopus/ad/internal/e/a;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->n(Lcom/octopus/ad/internal/e/a;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gtz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->z(Lcom/octopus/ad/internal/e/a;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->k(Lcom/octopus/ad/internal/e/a;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->u(Lcom/octopus/ad/internal/e/a;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$11;->a:Lcom/octopus/ad/internal/e/a;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/e/a;Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
