.class public Lcom/meishu/sdk/meishu_ad/e0;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/interstitial/a;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/interstitial/a;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/e0;->a:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/e0;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/e0;->a:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/e0;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onADLoaded(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
