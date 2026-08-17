.class Lcom/ubix/ssp/ad/d/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/s/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/d/h;->setDownloadListener(Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

.field final synthetic b:Lcom/ubix/ssp/ad/d/h;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/h;Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->b:Lcom/ubix/ssp/ad/d/h;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;->onDownloadStarted()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;->onDownloadPaused(I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;->onDownloadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;->onDownloadFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;->onDownloadResume(I)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/d/h$a;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdDownloadListener;->onDownloading(I)V

    :cond_0
    return-void
.end method
