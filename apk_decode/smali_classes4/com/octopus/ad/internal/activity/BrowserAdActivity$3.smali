.class Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/BrowserAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ProgressBar;

.field final synthetic b:Lcom/octopus/ad/internal/activity/BrowserAdActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/BrowserAdActivity;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->b:Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->a:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->a:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v1, p1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->a:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->a:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    if-ne p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->a:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->b:Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "http"

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;->b:Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
