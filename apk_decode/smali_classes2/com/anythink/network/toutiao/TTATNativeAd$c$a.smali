.class Lcom/anythink/network/toutiao/TTATNativeAd$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeAd$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeAd$c;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeAd$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onRefuse()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSelected(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd$c;

    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeAd$c;->b:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c$a;->a:Lcom/anythink/network/toutiao/TTATNativeAd$c;

    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeAd$c;->b:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
