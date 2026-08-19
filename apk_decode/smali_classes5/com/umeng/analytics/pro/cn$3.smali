.class Lcom/umeng/analytics/pro/cn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/pro/cn;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/umeng/analytics/pro/cn;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/cn;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/cn$3;->c:Lcom/umeng/analytics/pro/cn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/analytics/pro/cn$3;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/umeng/analytics/pro/cn$3;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/os/Bundle;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string p1, "--->>> [ncc]: umc_cfg p s!"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    const-string p1, "--->>> [ncc]: umc_cfg p f!"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Lcom/umeng/analytics/pro/cn$b;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/umeng/analytics/pro/cn$3;->c:Lcom/umeng/analytics/pro/cn;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/umeng/analytics/pro/cn$3;->a:Ljava/lang/String;

    .line 35
    .line 36
    iget v5, p0, Lcom/umeng/analytics/pro/cn$3;->b:I

    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/umeng/analytics/pro/cn$b;-><init>(Lcom/umeng/analytics/pro/cn;Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x131

    .line 42
    .line 43
    invoke-static {p1, v1, v0, v2}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
