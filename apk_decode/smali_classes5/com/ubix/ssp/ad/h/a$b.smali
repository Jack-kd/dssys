.class Lcom/ubix/ssp/ad/h/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/h/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/h/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->j(Lcom/ubix/ssp/ad/h/a;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/h/a;->k(Lcom/ubix/ssp/ad/h/a;)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/h/a;->k(Lcom/ubix/ssp/ad/h/a;)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/h/a;->a(Lcom/ubix/ssp/ad/h/a;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    const v1, 0x61a81

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/h/a;->l(Lcom/ubix/ssp/ad/h/a;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8df3\u8fc7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/h/a;->j(Lcom/ubix/ssp/ad/h/a;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a$b;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/h/a;->k(Lcom/ubix/ssp/ad/h/a;)I

    move-result v1

    mul-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x64

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/h/a;->a(Lcom/ubix/ssp/ad/h/a;I)I

    return-void
.end method
