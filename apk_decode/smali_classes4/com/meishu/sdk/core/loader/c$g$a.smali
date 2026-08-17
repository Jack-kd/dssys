.class public Lcom/meishu/sdk/core/loader/c$g$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c$g;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/c$g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$g$a;->a:Lcom/meishu/sdk/core/loader/c$g;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g$a;->a:Lcom/meishu/sdk/core/loader/c$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDefImage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/f0;->a(Ljava/lang/String;ZLcom/meishu/sdk/core/utils/f0$b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g$a;->a:Lcom/meishu/sdk/core/loader/c$g;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReward_tmp_url()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/d1;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g$a;->a:Lcom/meishu/sdk/core/loader/c$g;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWebTempUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/d1;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
