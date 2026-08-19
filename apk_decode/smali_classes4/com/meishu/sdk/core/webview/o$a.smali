.class public Lcom/meishu/sdk/core/webview/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/listener/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/webview/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/webview/n;Lcom/meishu/sdk/core/webview/listener/a;Lcom/meishu/sdk/core/webview/listener/d;)Lcom/meishu/sdk/core/webview/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/webview/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/o$a;->a:Lcom/meishu/sdk/core/webview/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;ZZI)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/meishu/sdk/core/webview/o$a;->a:Lcom/meishu/sdk/core/webview/b;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p3, Lcom/meishu/sdk/core/webview/c;

    .line 12
    .line 13
    const/4 p4, 0x1

    .line 14
    invoke-direct {p3, p2, p1, p4}, Lcom/meishu/sdk/core/webview/c;-><init>(Lcom/meishu/sdk/core/webview/b;ZI)V

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return p1
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
