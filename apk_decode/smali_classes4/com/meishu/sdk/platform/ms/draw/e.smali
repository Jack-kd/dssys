.class public Lcom/meishu/sdk/platform/ms/draw/e;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/b;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/draw/f$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/f$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->b:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/e;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->b:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/meishu/sdk/platform/ms/draw/g;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->b:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->b:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/e;->b:Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/e;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
