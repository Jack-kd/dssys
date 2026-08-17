.class public Lcom/meishu/sdk/core/webview/jsbridge/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/webview/jsbridge/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

.field public final b:Lcom/meishu/sdk/platform/ms/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-class v1, Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private a(Lcom/meishu/sdk/core/webview/jsbridge/a$a;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    const/4 v0, 0x0

    const-string v1, "js_dp_success"

    const/16 v2, 0x17

    invoke-static {p2, v2, v0, v1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IILjava/lang/String;)V

    if-eqz p1, :cond_1

    const/16 p2, 0x3e8

    .line 19
    const-string v0, "\u5524\u8d77\u6210\u529f"

    invoke-interface {p1, p2, v0}, Lcom/meishu/sdk/core/webview/jsbridge/a$a;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p2, 0x3e9

    .line 20
    const-string v0, "\u5524\u8d77\u5931\u8d25"

    invoke-interface {p1, p2, v0}, Lcom/meishu/sdk/core/webview/jsbridge/a$a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/core/webview/jsbridge/a;Lcom/meishu/sdk/core/webview/jsbridge/a$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/webview/jsbridge/a;->a(Lcom/meishu/sdk/core/webview/jsbridge/a$a;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;Lcom/meishu/sdk/core/webview/jsbridge/a$a;)V
    .locals 8

    const/16 v1, 0x3ea

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p1, "depp_link\u4e3a\u7a7a"

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2, v1, p1}, Lcom/meishu/sdk/core/webview/jsbridge/a$a;->a(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    const-string v2, "js_dp_start"

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IILjava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->getDeep_link()Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->deep_link:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    iget-object v4, p0, Lcom/meishu/sdk/core/webview/jsbridge/a;->b:Lcom/meishu/sdk/platform/ms/c;

    new-instance v7, LP0/a;

    invoke-direct {v7, p0, p2}, LP0/a;-><init>(Lcom/meishu/sdk/core/webview/jsbridge/a;Lcom/meishu/sdk/core/webview/jsbridge/a$a;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;ZZLcom/meishu/sdk/core/utils/p0$a;)Z

    return-void

    .line 10
    :cond_1
    const-string p1, "\u5524\u8d77\u5931\u8d25. \u672a\u5b89\u88c5"

    if-eqz p2, :cond_2

    const/16 v0, 0x3e9

    .line 11
    invoke-interface {p2, v0, p1}, Lcom/meishu/sdk/core/webview/jsbridge/a$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u77e5\u9519\u8bef:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 15
    :catch_1
    const-string p1, ""

    .line 16
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2, v1, p1}, Lcom/meishu/sdk/core/webview/jsbridge/a$a;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
