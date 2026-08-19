.class Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->checkRefreshAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$502(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$000(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$600(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/AdParams;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;)V

    invoke-static {v0, v1, v2}, Lcom/fl/saas/adx/api/FLSDK;->loadMixNative(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V

    :cond_2
    return-void
.end method
