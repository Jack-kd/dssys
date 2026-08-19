.class Lcom/anythink/network/toutiao/TTATNativeAd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeAd;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/anythink/network/toutiao/TTATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeAd;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c;->b:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c;->b:Lcom/anythink/network/toutiao/TTATNativeAd;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd$c;->a:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lcom/anythink/network/toutiao/TTATNativeAd$c$a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$c$a;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd$c;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->isShow()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->showDislikeDialog()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method
