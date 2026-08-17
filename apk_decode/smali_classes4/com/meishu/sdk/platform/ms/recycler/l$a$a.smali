.class public Lcom/meishu/sdk/platform/ms/recycler/l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/l$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->a:J

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 8
    .line 9
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l$a;->c:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p2}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz p4, :cond_1

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-wide v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->a:J

    .line 46
    .line 47
    sub-long/2addr v0, v2

    .line 48
    invoke-virtual {p4, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTotalTurnTime(J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 56
    .line 57
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setShakeResult(Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 95
    .line 96
    const/16 p2, 0x32

    .line 97
    .line 98
    if-lt p3, p2, :cond_2

    .line 99
    .line 100
    const/4 p2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 p2, 0x0

    .line 103
    :goto_0
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
