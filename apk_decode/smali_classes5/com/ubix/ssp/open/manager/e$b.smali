.class Lcom/ubix/ssp/open/manager/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/open/manager/e;->loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/open/nativee/UBiXNativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;

.field final synthetic b:Lcom/ubix/ssp/open/manager/e;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/manager/e;Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/e$b;->b:Lcom/ubix/ssp/open/manager/e;

    iput-object p2, p0, Lcom/ubix/ssp/open/manager/e$b;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/e$b;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;->onAdLoadSucceed(Ljava/util/List;)V

    sget-object p1, Lcom/ubix/ssp/open/manager/e;->a:Ljava/lang/String;

    const-string v0, "[ADD adType]onAdLoadSucceed "

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/e$b;->a:Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    sget-object v0, Lcom/ubix/ssp/open/manager/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ADD adType]onAdLoadFailed: ErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   ErrorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
