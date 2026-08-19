.class Lcom/ubix/ssp/ad/i/c$k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/ubix/ssp/ad/d/a;

.field final synthetic d:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Ljava/lang/Object;Ljava/lang/Object;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$k;->d:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$k;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$k;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/c$k;->c:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$k;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/ubix/ssp/ad/e/a0/s;

    new-instance v0, Lcom/ubix/ssp/ad/i/c$k$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/i/c$k$a;-><init>(Lcom/ubix/ssp/ad/i/c$k;)V

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$k;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    return-void
.end method
