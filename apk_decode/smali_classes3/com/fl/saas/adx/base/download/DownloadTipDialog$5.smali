.class Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/download/DownloadTipDialog;-><init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$300(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    goto :goto_0

    :cond_0
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setCurrentText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
