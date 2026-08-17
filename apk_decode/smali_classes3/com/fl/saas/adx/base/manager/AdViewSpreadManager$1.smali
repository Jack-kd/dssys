.class Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;

.field final synthetic val$builder:Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/base/base/listener/InnerSpreadListener;->onAdClick(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getSpreadListenerOpt()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public onAdClick(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FLSDK-Spread"

    const-string v1, "adViewAdInterface onAdClick"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->getSpreadListenerOpt()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/c;

    invoke-direct {v1, p1}, Lcom/fl/saas/adx/base/manager/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdClose()V
    .locals 2

    const-string v0, "FLSDK-Spread"

    const-string v1, "adViewAdInterface onAdClose"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->getSpreadListenerOpt()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/f;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdDisplay()V
    .locals 2

    const-string v0, "FLSDK-Spread"

    const-string v1, "adViewAdInterface onAdDisplay"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->getSpreadListenerOpt()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/d;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adViewAdInterface onAdFailed,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLSDK-Spread"

    invoke-static {v1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;->getSpreadListenerOpt()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/e;

    invoke-direct {v1, p1}, Lcom/fl/saas/adx/base/manager/e;-><init>(Lcom/fl/saas/adx/base/exception/FLError;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method
