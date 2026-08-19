.class Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/FLCommonDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/FLCommonDialog;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;->this$0:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;->this$0:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->access$000(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;->this$0:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->access$000(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;->onClick()V

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;->this$0:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
