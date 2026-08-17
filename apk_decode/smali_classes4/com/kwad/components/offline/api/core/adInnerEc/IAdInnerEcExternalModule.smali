.class public interface abstract Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createLiveBindOwner(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILivePluginProvider;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;
.end method

.method public abstract createLivePlayer(Ljava/lang/String;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;
.end method

.method public abstract createPBPaser()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;
.end method

.method public abstract createYodaWebViewAndInit(Landroid/app/Activity;Lcom/kwad/components/offline/api/core/adInnerEc/YodaWebPageListener;Lcom/kwad/components/offline/api/core/adInnerEc/ExternalExitListener;)Landroid/webkit/WebView;
.end method

.method public abstract generateBasicEmoji(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;
.end method

.method public abstract getCurrentCookieMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleLoginResponse(Lcom/kwad/components/offline/api/adInnerEc/login/InnerEcLoginResponse;Landroid/app/Activity;)V
.end method

.method public abstract inflateEmotionPanel(Landroid/view/ViewStub;Landroid/widget/EditText;)V
.end method

.method public abstract initEmotionSdk(Ljava/lang/String;)V
.end method

.method public abstract initModule()V
.end method

.method public abstract loadData(Z)V
.end method

.method public abstract onActivityDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract onActivityPaused(Landroid/app/Activity;)V
.end method

.method public abstract onActivityResumed(Landroid/app/Activity;)V
.end method

.method public abstract onActivityStopped(Landroid/app/Activity;)V
.end method

.method public abstract setAdInnerEcHostProvider(Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcHostProvider;)V
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract startLoginAuth(Landroid/app/Activity;Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;Ljava/lang/String;)V
.end method

.method public abstract startPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end method
