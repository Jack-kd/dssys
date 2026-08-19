.class public Lcom/meishu/sdk/meishu_ad/v$e;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;Lcom/meishu/sdk/core/ad/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/reward/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/reward/i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$e;->a:Lcom/meishu/sdk/meishu_ad/reward/i;

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
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$e;->a:Lcom/meishu/sdk/meishu_ad/reward/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/reward/i;->b(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
