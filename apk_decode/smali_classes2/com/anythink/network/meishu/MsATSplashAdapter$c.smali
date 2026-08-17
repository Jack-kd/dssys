.class Lcom/anythink/network/meishu/MsATSplashAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->d(Lcom/anythink/network/meishu/MsATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->h(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->i(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->d(Lcom/anythink/network/meishu/MsATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->b(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->c(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->d(Lcom/anythink/network/meishu/MsATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->j(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATSplashAdapter$c;->a:Lcom/anythink/network/meishu/MsATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATSplashAdapter;->a(Lcom/anythink/network/meishu/MsATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
