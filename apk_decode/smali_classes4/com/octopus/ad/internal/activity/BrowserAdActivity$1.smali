.class Lcom/octopus/ad/internal/activity/BrowserAdActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/BrowserAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/activity/BrowserAdActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$1;->a:Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Landroid/content/Intent;

    .line 6
    .line 7
    const-string p3, "android.intent.action.VIEW"

    .line 8
    .line 9
    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$1;->a:Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)Landroid/webkit/WebView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$1;->a:Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->b(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p1

    .line 32
    const-string p2, "OctopusAd"

    .line 33
    .line 34
    const-string p3, "An Exception Caught"

    .line 35
    .line 36
    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
