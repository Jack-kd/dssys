.class Lcom/anythink/network/octopus/ZyATBannerAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/octopus/ad/NativeAdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/octopus/ZyATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$c;->a:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADExposed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$c;->a:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$c;->a:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$c;->a:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdRenderFailed(I)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/octopus/ZyATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
