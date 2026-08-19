.class Lcom/meishu/sdk/core/view/DownloadView$2;
.super Lcom/meishu/sdk/core/safe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/view/DownloadView;->bindClickableDownloadInfo(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$bean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$downloadText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/DownloadView$2;->val$downloadText:Landroid/widget/TextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/DownloadView$2;->val$bean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/view/DownloadView$2;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/core/view/DownloadView$2;->val$bean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/view/DownloadView$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "privacy"

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/view/DownloadView;->openByType(Lcom/meishu/sdk/core/utils/DownloadDialogBean;Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/DownloadView$2;->val$downloadText:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
