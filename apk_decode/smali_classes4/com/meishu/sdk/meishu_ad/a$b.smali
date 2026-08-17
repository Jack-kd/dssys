.class public Lcom/meishu/sdk/meishu_ad/a$b;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/a;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/banner/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/a;Lcom/meishu/sdk/platform/ms/banner/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$b;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/a$b;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$b;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$b;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/a;->b:Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$b;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$b;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/a;->b:Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$b;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
