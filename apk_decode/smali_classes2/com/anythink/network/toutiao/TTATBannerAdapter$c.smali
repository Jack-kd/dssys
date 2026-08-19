.class Lcom/anythink/network/toutiao/TTATBannerAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->c:Landroid/content/Context;

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
    .locals 9

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->a:Ljava/util/Map;

    .line 6
    .line 7
    const-string v2, "size"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->a:Ljava/util/Map;

    .line 14
    .line 15
    const-string v3, "layout_type"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->a:Ljava/util/Map;

    .line 23
    .line 24
    const-string v5, "media_size"

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static {v3, v5, v6}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v5, 0x64

    .line 32
    .line 33
    const/16 v7, 0x280

    .line 34
    .line 35
    if-ne v2, v4, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x258

    .line 38
    .line 39
    packed-switch v3, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    const/16 v2, 0x1f4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :pswitch_1
    const/16 v2, 0x190

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :pswitch_2
    const/16 v1, 0x2b2

    .line 50
    .line 51
    const/16 v2, 0x184

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :pswitch_3
    const/16 v2, 0xc8

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :pswitch_4
    const/16 v2, 0x12c

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :pswitch_5
    const/16 v2, 0x104

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :pswitch_6
    const/16 v2, 0x96

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_7
    move v2, v5

    .line 67
    move v1, v7

    .line 68
    goto :goto_2

    .line 69
    :pswitch_8
    const/16 v2, 0x5a

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    const-string v2, "x"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    aget-object v2, v1, v6

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    aget-object v1, v1, v4

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    move v8, v2

    .line 97
    move v2, v1

    .line 98
    move v1, v8

    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    .line 103
    move v2, v6

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    move v1, v6

    .line 106
    move v2, v1

    .line 107
    goto :goto_2

    .line 108
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    move v1, v2

    .line 112
    move v2, v6

    .line 113
    :goto_2
    if-eqz v1, :cond_3

    .line 114
    .line 115
    if-nez v2, :cond_2

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    move v7, v1

    .line 119
    move v5, v2

    .line 120
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 121
    .line 122
    div-int/lit8 v7, v7, 0x2

    .line 123
    .line 124
    iput v7, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 125
    .line 126
    div-int/lit8 v5, v5, 0x2

    .line 127
    .line 128
    iput v5, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    .line 129
    .line 130
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->b:Ljava/util/Map;

    .line 131
    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    const-string v2, "key_width"

    .line 135
    .line 136
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->b:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->c:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    float-to-double v5, v3

    .line 169
    div-double/2addr v1, v5

    .line 170
    double-to-int v6, v1

    .line 171
    goto :goto_4

    .line 172
    :catchall_0
    move-exception v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :goto_4
    if-lez v6, :cond_4

    .line 177
    .line 178
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 179
    .line 180
    iget v2, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 181
    .line 182
    div-int v2, v6, v2

    .line 183
    .line 184
    iget v3, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    .line 185
    .line 186
    mul-int/2addr v2, v3

    .line 187
    iput v2, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    .line 188
    .line 189
    iput v6, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 190
    .line 191
    :cond_4
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->c:Landroid/content/Context;

    .line 192
    .line 193
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v1, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;

    .line 198
    .line 199
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 200
    .line 201
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->a:Ljava/util/Map;

    .line 204
    .line 205
    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->b:Ljava/util/Map;

    .line 206
    .line 207
    invoke-direct {v1, v2, v3, v5}, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 214
    .line 215
    iget v3, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 216
    .line 217
    int-to-float v3, v3

    .line 218
    iget v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    .line 219
    .line 220
    int-to-float v2, v2

    .line 221
    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$c;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 229
    .line 230
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 231
    .line 232
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
