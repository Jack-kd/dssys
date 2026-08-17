.class public Lcom/meishu/sdk/platform/ms/recycler/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->a:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->e:Z

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p2, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 10
    .line 11
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/16 v2, 0x1e

    .line 22
    .line 23
    invoke-static {p2, v2, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object p2, v0

    .line 29
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->a:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/platform/ms/c;Landroid/view/ViewGroup;)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->a:Landroid/view/ViewGroup;

    .line 46
    .line 47
    const/4 v10, 0x1

    .line 48
    move v3, p3

    .line 49
    move v4, p4

    .line 50
    move-wide/from16 v5, p5

    .line 51
    .line 52
    move/from16 v7, p7

    .line 53
    .line 54
    move/from16 v8, p8

    .line 55
    .line 56
    move/from16 v9, p9

    .line 57
    .line 58
    invoke-virtual/range {v1 .. v10}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/view/ViewGroup;FFJFFIZ)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 92
    .line 93
    iget-object v3, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 94
    .line 95
    move v4, p3

    .line 96
    move v5, p4

    .line 97
    move-wide/from16 v6, p5

    .line 98
    .line 99
    move/from16 v8, p7

    .line 100
    .line 101
    move/from16 v9, p8

    .line 102
    .line 103
    invoke-static/range {v3 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/s;->a(Lcom/meishu/sdk/core/ad/IAd;FFJFF)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 109
    .line 110
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/4 p2, 0x1

    .line 115
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/m;->b:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 121
    .line 122
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_2
    return-void
.end method
