.class public Lcom/meishu/sdk/core/utils/n0;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/m0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/n0;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/l;->safeRun()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "OpenAppDialogStateChecker"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "dialog state 3"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/n0;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "dialog state 5"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/n0;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 30
    .line 31
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/n0;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m0;->a(Lcom/meishu/sdk/core/utils/m0;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
