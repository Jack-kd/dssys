.class public Lcom/ubix/ssp/ad/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;


# instance fields
.field private a:Lcom/ubix/ssp/ad/i/d;

.field private b:J

.field private c:I

.field private d:Lcom/ubix/ssp/open/nativee/NativeAd;

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/d/i;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/i;->b:J

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/i/d;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/nativee/NativeAd;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/i;->e:Z

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ubix/ssp/ad/d/i;->f:J

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/d;->a(Lcom/ubix/ssp/open/nativee/NativeAd;)V

    :cond_0
    return-void
.end method

.method public getAdType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/ubix/ssp/ad/d/i;->c:I

    return v0
.end method

.method public getCreativeType()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/d/i;->c:I

    return v0
.end method

.method public getNativeExpressView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/d;->b(Lcom/ubix/ssp/open/nativee/NativeAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/d;->c(Lcom/ubix/ssp/open/nativee/NativeAd;)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/i;->b:J

    return-wide v0
.end method

.method public getVideoDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/d/i;->f:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/d;->d(Lcom/ubix/ssp/open/nativee/NativeAd;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/i;->e:Z

    return v0
.end method

.method public lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/UBiXAdLossInfo;->getInfo()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/i/d;->a(Lcom/ubix/ssp/open/nativee/NativeAd;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public renderExpressNativeAd(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/i/d;->a(Lcom/ubix/ssp/open/nativee/NativeAd;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    return-void
.end method

.method public setNativeExpressVideoListener(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/i/d;->a(Lcom/ubix/ssp/open/nativee/NativeAd;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;)V

    return-void
.end method

.method public winNotice(J)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/i;->a:Lcom/ubix/ssp/ad/i/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/i;->d:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ubix/ssp/ad/i/d;->a(Lcom/ubix/ssp/open/nativee/NativeAd;J)V

    :cond_0
    return-void
.end method
