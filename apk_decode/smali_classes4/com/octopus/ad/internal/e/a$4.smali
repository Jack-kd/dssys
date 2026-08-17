.class Lcom/octopus/ad/internal/e/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d;

.field final synthetic b:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$4;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a$4;->a:Lcom/octopus/ad/d;

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
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$4;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->j(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$4;->a:Lcom/octopus/ad/d;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/octopus/ad/d;->g()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$4;->b:Lcom/octopus/ad/internal/e/a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->j(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget p1, Lcom/octopus/ad/R$drawable;->oct_voice_off:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget p1, Lcom/octopus/ad/R$drawable;->oct_voice_on:I

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
