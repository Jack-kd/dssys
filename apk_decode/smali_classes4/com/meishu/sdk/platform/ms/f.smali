.class public Lcom/meishu/sdk/platform/ms/f;
.super Lcom/meishu/sdk/core/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/meishu/sdk/platform/ms/f;
    .locals 1

    .line 1
    const-string v0, "MS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/e;->config()Lcom/meishu/sdk/core/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/platform/ms/f;

    .line 12
    .line 13
    return-object v0
.end method
