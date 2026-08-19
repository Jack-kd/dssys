.class Lcom/ubix/ssp/ad/e/a0/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/o;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/o;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o$b;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$b;->a:Lcom/ubix/ssp/ad/e/a0/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/o;->setShakeSensor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$b;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
