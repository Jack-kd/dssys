.class Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;
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
    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;->val$AdxInfo:Lcom/fl/saas/j;

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
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;->val$AdxInfo:Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->H0:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
