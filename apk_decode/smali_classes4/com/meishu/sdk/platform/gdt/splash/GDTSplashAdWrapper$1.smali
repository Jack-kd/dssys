.class Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

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
    .locals 10

    .line 1
    const-string v0, "GDTSplashAdWrapper"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    .line 30
    .line 31
    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "load GDT------------------------"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAd_type()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eq v1, v2, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "KEY_AUTO_SHOW"

    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 79
    .line 80
    new-instance v3, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 81
    .line 82
    invoke-direct {v3, v2, v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Z)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$302(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "\u5e7f\u544a\u5bf9\u8c61="

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/d;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 125
    .line 126
    invoke-static {v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-direct {v0, v1, v2, v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/core/ad/splash/d;Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->createListenerProxy()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v1, "KEY_SKIP_BUTTON"

    .line 144
    .line 145
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    instance-of v1, v0, Landroid/view/View;

    .line 152
    .line 153
    if-eqz v1, :cond_0

    .line 154
    .line 155
    check-cast v0, Landroid/view/View;

    .line 156
    .line 157
    const/4 v1, 0x4

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-nez v0, :cond_1

    .line 180
    .line 181
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 182
    .line 183
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 203
    .line 204
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 205
    .line 206
    invoke-static {v4}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 217
    .line 218
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    const/16 v8, 0xbb8

    .line 231
    .line 232
    invoke-static/range {v4 .. v9}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)Lcom/qq/e/ads/splash/SplashAD;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v4, v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$802(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashAD;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    .line 243
    .line 244
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/qq/e/ads/splash/SplashAD;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-nez v0, :cond_2

    .line 251
    .line 252
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 253
    .line 254
    invoke-static {v4}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 265
    .line 266
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const/16 v8, 0xbb8

    .line 275
    .line 276
    const/4 v9, 0x0

    .line 277
    invoke-static/range {v4 .. v9}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)Lcom/qq/e/ads/splash/SplashAD;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v4, v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$802(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashAD;

    .line 282
    .line 283
    .line 284
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 291
    .line 292
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/qq/e/ads/splash/SplashAD;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->setSplashAD(Lcom/qq/e/ads/splash/SplashAD;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 306
    .line 307
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/splash/c;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 321
    .line 322
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isSplashFullScreen()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_3

    .line 333
    .line 334
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 335
    .line 336
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/qq/e/ads/splash/SplashAD;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->fetchFullScreenAdOnly()V

    .line 341
    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 345
    .line 346
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/qq/e/ads/splash/SplashAD;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->fetchAdOnly()V

    .line 351
    .line 352
    .line 353
    goto :goto_3

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 355
    .line 356
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$1600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :goto_3
    return-void
.end method
