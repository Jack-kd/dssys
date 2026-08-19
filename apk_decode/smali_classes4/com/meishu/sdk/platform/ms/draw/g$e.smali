.class public Lcom/meishu/sdk/platform/ms/draw/g$e;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/draw/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$e;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$e;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/meishu/sdk/platform/ms/draw/g;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$e;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$e;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$e;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 46
    .line 47
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$e;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 60
    .line 61
    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
