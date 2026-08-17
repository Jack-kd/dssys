.class public Lcom/anythink/network/ubix/UbATExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private a:Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATExpressAd;->a:Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/ubix/UbATExpressAd;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATExpressAd;->b:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATExpressAd;->a:Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATExpressAd;->a:Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATExpressAd;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATExpressAd;->a:Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/anythink/core/api/BaseAd;->isValid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 0

    return-void
.end method
