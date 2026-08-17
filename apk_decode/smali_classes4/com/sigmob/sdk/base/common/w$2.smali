.class Lcom/sigmob/sdk/base/common/w$2;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/w;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/w;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/w;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/w$4;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConsoleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    const/4 v8, 0x0

    const-string v1, "h5_error"

    const-string v2, "landpage"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->c(Lcom/sigmob/sdk/base/common/w;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->c(Lcom/sigmob/sdk/base/common/w;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->c(Lcom/sigmob/sdk/base/common/w;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->c(Lcom/sigmob/sdk/base/common/w;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$2;->a:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->c(Lcom/sigmob/sdk/base/common/w;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
