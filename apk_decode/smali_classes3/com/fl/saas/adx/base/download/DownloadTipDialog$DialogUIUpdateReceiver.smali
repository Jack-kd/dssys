.class public Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/download/DownloadTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogUIUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/fl/saas/E;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$702(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$900(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V

    return-void

    :cond_0
    sget-object v0, Lcom/fl/saas/E;->t:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$702(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setState(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    const-string p2, "\u7ee7\u7eed\u4e0b\u8f7d"

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setCurrentText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-object v0, Lcom/fl/saas/E;->u:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$702(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$302(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$1002(Lcom/fl/saas/adx/base/download/DownloadTipDialog;I)I

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    const-string p2, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setCurrentText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_2
    sget-object v0, Lcom/fl/saas/E;->v:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u4e0b\u8f7d\u5931\u8d25,\u91cd\u65b0\u70b9\u51fb\u4e0b\u8f7d"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    sget-object v0, Lcom/fl/saas/E;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    const-string v0, "progress"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$1002(Lcom/fl/saas/adx/base/download/DownloadTipDialog;I)I

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$900(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V

    return-void

    :cond_4
    sget-object v0, Lcom/fl/saas/E;->y:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$302(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setState(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object p1

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setCurrentText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    const-string v0, "downloadFilePath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$402(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    return-void
.end method
