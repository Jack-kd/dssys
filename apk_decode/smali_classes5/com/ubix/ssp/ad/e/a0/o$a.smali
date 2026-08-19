.class Lcom/ubix/ssp/ad/e/a0/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o$a;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$a;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/o;->a(Lcom/ubix/ssp/ad/e/a0/o;)I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/o$a;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/o;->b(Lcom/ubix/ssp/ad/e/a0/o;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method
