.class Lcom/ubix/ssp/ad/k/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 2
    long-to-float p1, p1

    const/high16 p2, 0x43c80000    # 400.0f

    sub-float p1, p2, p1

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p2}, Lcom/ubix/ssp/ad/k/a;->d(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p2}, Lcom/ubix/ssp/ad/k/a;->d(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p2, Lcom/ubix/ssp/ad/k/a;->D:I

    invoke-static {p2}, Lcom/ubix/ssp/ad/k/a;->e(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->e(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->f(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$e;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->f(Lcom/ubix/ssp/ad/k/a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
