.class Lcom/ubix/ssp/ad/e/j$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/j;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/j$c;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j$c;->a:Lcom/ubix/ssp/ad/e/j;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
