.class public Lcom/meishu/sdk/platform/ms/splash/j;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/splash/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/g;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/j;->b:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/platform/ms/splash/j;->a:J

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/j;->b:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/meishu/sdk/platform/ms/splash/j;->a:J

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTick(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
