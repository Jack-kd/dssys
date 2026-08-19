.class Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->c:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->b:Ljava/util/Map;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->c:Ljava/util/Map;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 47
    .line 48
    :try_start_0
    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->a:Landroid/content/Context;

    .line 49
    .line 50
    int-to-float v2, v2

    .line 51
    invoke-static {v4, v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-float v2, v2

    .line 56
    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->a:Landroid/content/Context;

    .line 57
    .line 58
    int-to-float v3, v3

    .line 59
    invoke-static {v4, v3}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;F)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->c:Ljava/util/Map;

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    :try_start_1
    const-string v4, "ad_is_support_deep_link"

    .line 78
    .line 79
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->c:Ljava/util/Map;

    .line 93
    .line 94
    const-string v4, "ad_orientation"

    .line 95
    .line 96
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eq v2, v3, :cond_1

    .line 109
    .line 110
    const/4 v4, 0x2

    .line 111
    if-eq v2, v4, :cond_0

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    .line 120
    .line 121
    :catch_1
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->i(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_3

    .line 132
    .line 133
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 134
    .line 135
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->k(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->l(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_5

    .line 153
    .line 154
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->m(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const-string v4, "{network_placement_id}"

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->n(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iget-object v6, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 175
    .line 176
    iget-object v6, v6, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-static {v2, v4}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 186
    .line 187
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->o(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$c;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    .line 202
    .line 203
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    .line 204
    .line 205
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method
