.class Lcom/fl/saas/adx/base/manager/AdViewBannerManager$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->setRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$2;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$2;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$400(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V

    return-void
.end method
