.class public Lcom/meishu/sdk/core/webview/a$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/webview/a;->a(Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/meishu/sdk/core/webview/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/a;Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/a$b;->d:Lcom/meishu/sdk/core/webview/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/webview/a$b;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

    .line 4
    .line 5
    iput p3, p0, Lcom/meishu/sdk/core/webview/a$b;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/webview/a$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a$b;->d:Lcom/meishu/sdk/core/webview/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/a;->h:Ljava/lang/ref/SoftReference;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/a$b;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->getCallbackFunc()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lcom/meishu/sdk/core/webview/a$b;->b:I

    .line 25
    .line 26
    iget-object v3, p0, Lcom/meishu/sdk/core/webview/a$b;->c:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "{\"code\":"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ",\"msg\":\""

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "\"}"

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/webview/jsbridge/util/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
