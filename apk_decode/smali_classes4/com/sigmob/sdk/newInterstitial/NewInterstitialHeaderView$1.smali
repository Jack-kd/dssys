.class Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->d(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->e(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->g(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;->b()V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "   \u8df3\u8fc7   "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;->a:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
