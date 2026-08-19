.class public Lcom/meishu/sdk/platform/ms/recycler/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->a:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 6
    .line 7
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-interface {p2}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p4, :cond_1

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->a:J

    .line 42
    .line 43
    sub-long/2addr v0, v2

    .line 44
    invoke-virtual {p4, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTotalTurnTime(J)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 50
    .line 51
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 72
    .line 73
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setShakeResult(Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/j;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 83
    .line 84
    const/16 p2, 0x32

    .line 85
    .line 86
    if-lt p3, p2, :cond_2

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 p2, 0x0

    .line 91
    :goto_0
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
