.class Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$1100(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$1000(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    return-void
.end method

.method public bridge synthetic onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->onLoaded(Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;)V

    return-void
.end method

.method public onLoaded(Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$502(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;)Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$600(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$700(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$800(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$900(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    :cond_1
    return-void
.end method
