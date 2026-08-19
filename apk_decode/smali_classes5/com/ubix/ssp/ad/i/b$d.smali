.class Lcom/ubix/ssp/ad/i/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

.field final synthetic b:Lcom/ubix/ssp/ad/i/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/b;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b$d;->b:Lcom/ubix/ssp/ad/i/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/b$d;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$d;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$d;->b:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->c(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$d;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$d;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$d;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$d;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdExposed()V

    :cond_0
    return-void
.end method

.method public onAdStatusChanged()V
    .locals 0

    return-void
.end method
