.class Lcom/octopus/ad/internal/activity/DownloadDialogActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$2;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$2;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Lcom/octopus/ad/model/ComplianceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$2;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Lcom/octopus/ad/model/ComplianceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/octopus/ad/model/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->openLocalBrowser(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
