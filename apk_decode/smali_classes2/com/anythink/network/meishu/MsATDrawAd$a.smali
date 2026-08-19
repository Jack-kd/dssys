.class Lcom/anythink/network/meishu/MsATDrawAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATDrawAd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATDrawAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATDrawAd;->a(Lcom/anythink/network/meishu/MsATDrawAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATDrawAd;->a(Lcom/anythink/network/meishu/MsATDrawAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATDrawAd;->a(Lcom/anythink/network/meishu/MsATDrawAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd$a;->a:Lcom/anythink/network/meishu/MsATDrawAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
