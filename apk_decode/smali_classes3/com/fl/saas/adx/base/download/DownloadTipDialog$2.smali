.class Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;
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

.field final synthetic val$AdxInfo:Lcom/fl/saas/j;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;->val$AdxInfo:Lcom/fl/saas/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;->val$AdxInfo:Lcom/fl/saas/j;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$100(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launch(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
