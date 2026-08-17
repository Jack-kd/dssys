.class Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;
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
    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->val$AdxInfo:Lcom/fl/saas/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$702(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$800(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$800(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;->onClick()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "downLoadUrl"

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$200(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$300(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$400(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$400(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->val$AdxInfo:Lcom/fl/saas/j;

    invoke-static {v0, p1, v1}, Lcom/fl/saas/l;->a(Landroid/content/Context;Ljava/io/File;Lcom/fl/saas/j;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    iget-object v2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->getCurrentText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$600(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u94fe\u63a5\u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    sget-boolean p1, Lcom/fl/saas/u;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/fl/saas/E;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    new-instance p1, Lcom/fl/saas/adx/base/download/c;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/download/c;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;)V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$700(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/fl/saas/E;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    :goto_1
    invoke-static {v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$600(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/fl/saas/E;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;->this$0:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-static {p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
