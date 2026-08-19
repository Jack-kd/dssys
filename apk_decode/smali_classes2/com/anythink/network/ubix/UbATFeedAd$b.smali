.class Lcom/anythink/network/ubix/UbATFeedAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATFeedAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATFeedAd;->b(Lcom/anythink/network/ubix/UbATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->b(Lcom/anythink/network/ubix/UbATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATFeedAd;->b(Lcom/anythink/network/ubix/UbATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->b(Lcom/anythink/network/ubix/UbATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$b;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdStatusChanged()V
    .locals 0

    return-void
.end method
