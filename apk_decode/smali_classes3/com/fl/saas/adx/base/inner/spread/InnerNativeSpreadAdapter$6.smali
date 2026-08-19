.class Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;


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

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$6;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$6;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-virtual {v0, p1}, Lcom/fl/saas/g;->onClickedEvent(Ljava/lang/String;)V

    return-void
.end method
