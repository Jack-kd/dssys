.class public Lcom/ubix/ssp/ad/e/f$c;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/ubix/ssp/ad/g/k/b;

.field private c:Lcom/ubix/ssp/ad/e/f$a;

.field private d:Lcom/ubix/ssp/ad/e/z/h$c;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/ubix/ssp/ad/e/f$c;->a:I

    return-void
.end method

.method public constructor <init>(ILcom/ubix/ssp/ad/e/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/ubix/ssp/ad/e/f$c;->a:I

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/f$c;->c:Lcom/ubix/ssp/ad/e/f$a;

    return-void
.end method

.method public constructor <init>(ILcom/ubix/ssp/ad/e/z/h$c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/ubix/ssp/ad/e/f$c;->a:I

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/f$c;->d:Lcom/ubix/ssp/ad/e/z/h$c;

    return-void
.end method

.method public constructor <init>(ILcom/ubix/ssp/ad/g/k/b;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/ubix/ssp/ad/e/f$c;->a:I

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/f$c;->b:Lcom/ubix/ssp/ad/g/k/b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/ubix/ssp/ad/e/f$c;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/f$c;->c:Lcom/ubix/ssp/ad/e/f$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/f$a;->c()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/f$c;->c:Lcom/ubix/ssp/ad/e/f$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/f$a;->a()V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/f$c;->c:Lcom/ubix/ssp/ad/e/f$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/f$a;->b()V

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/f$c;->c:Lcom/ubix/ssp/ad/e/f$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/f$a;->d()V

    :cond_3
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
