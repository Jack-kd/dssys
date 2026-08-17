.class Lcom/ubix/ssp/ad/c/c/d$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/c/c/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/c/c/d;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/c/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/c/d$a;->a:Lcom/ubix/ssp/ad/c/c/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/d$a;->a:Lcom/ubix/ssp/ad/c/c/d;

    iget-object p1, p1, Lcom/ubix/ssp/ad/c/c/c;->i:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
