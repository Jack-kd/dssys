.class Lcom/ubix/ssp/ad/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/b;->a(Landroid/view/ViewGroup;Landroid/view/View;ZIZZD[IIIDZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ubix/ssp/ad/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/b$c;->b:Lcom/ubix/ssp/ad/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/b$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b$c;->a:Landroid/view/View;

    const v1, 0xde315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$c;->b:Lcom/ubix/ssp/ad/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/b$c;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/b;->a(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b$c;->b:Lcom/ubix/ssp/ad/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/b;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
