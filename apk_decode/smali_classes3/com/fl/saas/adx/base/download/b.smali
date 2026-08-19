.class public final synthetic Lcom/fl/saas/adx/base/download/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/download/DownloadTipDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/download/b;->b:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/b;->b:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->b(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
