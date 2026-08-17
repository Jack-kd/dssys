.class Lcom/ubix/ssp/ad/f/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/f/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/f/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/d;->onAdClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/d;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/d;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b$b;->a:Lcom/ubix/ssp/ad/f/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/d;->onAdExposed()V

    :cond_0
    return-void
.end method

.method public onAdStatusChanged()V
    .locals 0

    return-void
.end method
