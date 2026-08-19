.class public Lcom/meishu/sdk/core/webview/b$a;
.super Lcom/meishu/sdk/core/safe/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/webview/b;->a(Lcom/meishu/sdk/core/webview/b$b;)V
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
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/b$a;->a:Lcom/meishu/sdk/core/webview/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/meishu/sdk/core/webview/b$a$a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/webview/b$a$a;-><init>(Lcom/meishu/sdk/core/webview/b$a;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
