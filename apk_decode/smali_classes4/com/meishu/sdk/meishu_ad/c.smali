.class public Lcom/meishu/sdk/meishu_ad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/c;->a:Lcom/meishu/sdk/meishu_ad/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADExposure()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/c;->a:Lcom/meishu/sdk/meishu_ad/e;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {v1, v0, p1, p2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
