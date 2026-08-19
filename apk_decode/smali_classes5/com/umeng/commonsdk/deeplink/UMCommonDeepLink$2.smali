.class final Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/deeplink/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;->executeInstallRequest(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->b:Landroid/os/Handler;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->c:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "Unknown error"

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> [deeplink] DDL onFailure: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->c:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;->access$100(Landroid/os/Handler;Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> [deeplink] DDL onSuccess: path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MobclickRT"

    invoke-static {v0, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->a:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/umeng/commonsdk/deeplink/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/deeplink/d;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->b:Landroid/os/Handler;

    iget-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$2;->c:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    invoke-static {p2, p3, p1}, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;->access$000(Landroid/os/Handler;Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;Ljava/util/Map;)V

    return-void
.end method
