.class public Lcom/meishu/sdk/meishu_ad/reward/i$a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/reward/i$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/reward/i$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/reward/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i$a$a;->a:Lcom/meishu/sdk/meishu_ad/reward/i$a;

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
    const-string v0, "RewardH5"

    .line 2
    .line 3
    const-string v1, "timeoutCheck"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i$a$a;->a:Lcom/meishu/sdk/meishu_ad/reward/i$a;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/reward/i$a;->a:Lcom/meishu/sdk/meishu_ad/reward/i;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/reward/i;->a(Lcom/meishu/sdk/meishu_ad/reward/i;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
