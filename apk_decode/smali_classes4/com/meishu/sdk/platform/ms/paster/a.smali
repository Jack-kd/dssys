.class public Lcom/meishu/sdk/platform/ms/paster/a;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/b;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/paster/d$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/paster/d$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/meishu/sdk/platform/ms/paster/d;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/a;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
