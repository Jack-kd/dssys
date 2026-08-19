.class final Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

.field final synthetic aoZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;->aoZ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "jsFailCall: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;->aoZ:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "KSAdChinaMobileJSBridge"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->d(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/webkit/WebView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;->aoZ:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
