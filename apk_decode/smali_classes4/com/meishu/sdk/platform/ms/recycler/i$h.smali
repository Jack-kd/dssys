.class public Lcom/meishu/sdk/platform/ms/recycler/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onOverlayAttached()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0x1d

    .line 16
    .line 17
    invoke-static {v0, v3, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onTrigger(ZZFFJFFI)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 18
    .line 19
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/16 v2, 0x1e

    .line 30
    .line 31
    invoke-static {p2, v2, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object p2, v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->a:Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/platform/ms/c;Landroid/view/ViewGroup;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 52
    .line 53
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->o:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 54
    .line 55
    move v3, p3

    .line 56
    move v4, p4

    .line 57
    move-wide v5, p5

    .line 58
    move/from16 v7, p7

    .line 59
    .line 60
    move/from16 v8, p8

    .line 61
    .line 62
    move/from16 v9, p9

    .line 63
    .line 64
    invoke-virtual/range {v1 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFI)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 100
    .line 101
    move v4, p3

    .line 102
    move v5, p4

    .line 103
    move-wide v6, p5

    .line 104
    move/from16 v8, p7

    .line 105
    .line 106
    move/from16 v9, p8

    .line 107
    .line 108
    invoke-static/range {v3 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/s;->a(Lcom/meishu/sdk/core/ad/IAd;FFJFF)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 114
    .line 115
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const/4 p2, 0x1

    .line 120
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 126
    .line 127
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_2
    return-void
.end method
