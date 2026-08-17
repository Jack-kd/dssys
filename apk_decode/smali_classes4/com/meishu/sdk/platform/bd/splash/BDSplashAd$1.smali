.class Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/SplashAd$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->finishAndJump(Landroid/content/Intent;Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

.field public final synthetic val$listener:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$1;->val$listener:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinishActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$1;->val$listener:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;->onFinish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
