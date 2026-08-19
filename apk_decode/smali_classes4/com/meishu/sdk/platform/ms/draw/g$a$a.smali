.class public Lcom/meishu/sdk/platform/ms/draw/g$a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/draw/g$a;->onAdExposure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/g$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/draw/g;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-string v1, "MeishuDrawAdWrapper"

    .line 58
    .line 59
    const-string v2, "send onAdExposure"

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    array-length v1, v0

    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_0
    if-ge v2, v1, :cond_1

    .line 67
    .line 68
    aget-object v3, v0, v2

    .line 69
    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_0

    .line 75
    .line 76
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 77
    .line 78
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 81
    .line 82
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->DRAW:Lcom/meishu/sdk/core/ad/AdType;

    .line 89
    .line 90
    invoke-static {v3, v4, v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v4, v3}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 117
    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$a$a;->a:Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g$a;->b:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 165
    .line 166
    const/4 v1, 0x1

    .line 167
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/draw/g;->a(Lcom/meishu/sdk/platform/ms/draw/g;Z)Z

    .line 168
    .line 169
    .line 170
    return-void
.end method
