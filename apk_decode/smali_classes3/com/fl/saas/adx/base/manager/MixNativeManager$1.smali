.class Lcom/fl/saas/adx/base/manager/MixNativeManager$1;
.super Lcom/fl/saas/adx/base/manager/loader/BaseLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/manager/MixNativeManager;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/manager/loader/BaseLoader<",
        "Lcom/fl/saas/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/manager/MixNativeManager;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/MixNativeManager;Lcom/fl/saas/adx/base/manager/api/ManagerLoader;I)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager$1;->this$0:Lcom/fl/saas/adx/base/manager/MixNativeManager;

    invoke-direct {p0, p2, p3}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;-><init>(Lcom/fl/saas/adx/base/manager/api/ManagerLoader;I)V

    return-void
.end method


# virtual methods
.method public loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V
    .locals 3

    instance-of v0, p1, Lcom/fl/saas/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fl/saas/f;

    invoke-virtual {v0}, Lcom/fl/saas/f;->b()Lcom/fl/saas/j0;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager$1;->this$0:Lcom/fl/saas/adx/base/manager/MixNativeManager;

    invoke-static {v2}, Lcom/fl/saas/adx/base/manager/MixNativeManager;->access$000(Lcom/fl/saas/adx/base/manager/MixNativeManager;)Lcom/fl/saas/adx/api/AdParams;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/AdParams;)Lcom/fl/saas/j0;

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/MixNativeManager$1;->this$0:Lcom/fl/saas/adx/base/manager/MixNativeManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/MixNativeManager;->access$100(Lcom/fl/saas/adx/base/manager/MixNativeManager;)Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/f;->a(Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V

    return-void
.end method
