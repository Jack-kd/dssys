.class Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/topon/OctopusATNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

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
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdRenderFailed(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method
