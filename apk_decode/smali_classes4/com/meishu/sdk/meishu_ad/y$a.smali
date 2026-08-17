.class public Lcom/meishu/sdk/meishu_ad/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/y;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/y;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/y;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/meishu_ad/y$a;->a:J

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
    .locals 6

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/y;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 8
    .line 9
    iget v1, v1, Lcom/meishu/sdk/meishu_ad/v;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/y;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 55
    .line 56
    iput-boolean v1, v0, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 57
    .line 58
    :cond_1
    if-eqz p4, :cond_2

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iget-wide v4, p0, Lcom/meishu/sdk/meishu_ad/y$a;->a:J

    .line 65
    .line 66
    sub-long/2addr v2, v4

    .line 67
    invoke-virtual {p4, v2, v3}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTotalTurnTime(J)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setDynamic(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setShakeResult(Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 91
    .line 92
    const/16 p2, 0x32

    .line 93
    .line 94
    if-lt p3, p2, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/y$a;->b:Lcom/meishu/sdk/meishu_ad/y;

    .line 102
    .line 103
    iget-object p2, p1, Lcom/meishu/sdk/meishu_ad/y;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/y;->d:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 106
    .line 107
    invoke-static {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
