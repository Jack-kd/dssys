.class Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/D0;


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

.field final synthetic val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$4;->val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickedEvent()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$4;->val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->onClicked()V

    :cond_0
    return-void
.end method

.method public onLoadedEvent()V
    .locals 0

    return-void
.end method

.method public onShowEvent()V
    .locals 0

    return-void
.end method

.method public reportRequestShow()V
    .locals 0

    return-void
.end method
