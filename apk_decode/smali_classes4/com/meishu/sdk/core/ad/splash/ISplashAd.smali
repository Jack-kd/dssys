.class public interface abstract Lcom/meishu/sdk/core/ad/splash/ISplashAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/ad/IAd<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract setDownloadDialogListener(Lcom/meishu/sdk/core/ad/splash/a;)V
.end method

.method public abstract setSplashFinishingTouchListener(Lcom/meishu/sdk/core/ad/splash/b;)V
.end method

.method public abstract showAd(Landroid/view/ViewGroup;)V
.end method

.method public abstract splashAnimationFinish()V
.end method
