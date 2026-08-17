.class public Lcom/meishu/sdk/activity/MeishuWebviewActivity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_AD_AMID_KEY:Ljava/lang/String; = "EXTRA_AD_AMID_KEY"

.field public static final EXTRA_AD_DURL_KEY:Ljava/lang/String; = "EXTRA_AD_DURL_KEY"

.field public static final EXTRA_AD_UUID_KEY:Ljava/lang/String; = "EXTRA_AD_UUID_KEY"

.field private static shareListener:Lcom/meishu/sdk/core/loader/ShareInteractionListener;


# instance fields
.field public extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareInfo:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->extraHeaders:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000()Lcom/meishu/sdk/core/loader/ShareInteractionListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->shareListener:Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->shareInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/meishu/sdk/activity/MeishuWebviewActivity;Lcom/meishu/sdk/core/webview/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/meishu/sdk/core/webview/m;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static setShareListener(Lcom/meishu/sdk/core/loader/ShareInteractionListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->shareListener:Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_webivew_loading:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string v0, "user_agent"

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_webview:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "EXTRA_AD_DURL_KEY"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v1, Lcom/meishu/sdk/R$id;->ms_img_share:I

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/ImageView;

    .line 28
    .line 29
    sget v2, Lcom/meishu/sdk/R$id;->ms_webView:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/webkit/WebView;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->extraHeaders:Ljava/util/Map;

    .line 44
    .line 45
    const-string v4, "X-Requested-With"

    .line 46
    .line 47
    const-string v5, ""

    .line 48
    .line 49
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    .line 70
    .line 71
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v6, 0x1f

    .line 74
    .line 75
    if-ge v5, v6, :cond_0

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 92
    .line 93
    new-instance v5, Landroid/webkit/WebChromeClient;

    .line 94
    .line 95
    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    .line 100
    .line 101
    sget v2, Lcom/meishu/sdk/core/webview/m;->d:I

    .line 102
    .line 103
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/meishu/sdk/core/MSAdConfig;->webViewClient()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_1

    .line 118
    .line 119
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/meishu/sdk/core/MSAdConfig;->webViewClient()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-class v5, Landroid/content/Context;

    .line 128
    .line 129
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 138
    .line 139
    .line 140
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Lcom/meishu/sdk/core/webview/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :cond_1
    new-instance v2, Lcom/meishu/sdk/core/webview/m;

    .line 156
    .line 157
    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/webview/m;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    iget-object v4, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 161
    .line 162
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p0}, Lcom/meishu/sdk/core/webview/d;->a(Landroid/content/Context;)Lcom/meishu/sdk/core/webview/d;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    new-instance v5, Lcom/meishu/sdk/activity/b;

    .line 170
    .line 171
    invoke-direct {v5, p0, v2}, Lcom/meishu/sdk/activity/b;-><init>(Lcom/meishu/sdk/activity/MeishuWebviewActivity;Lcom/meishu/sdk/core/webview/m;)V

    .line 172
    .line 173
    .line 174
    iput-object v5, v4, Lcom/meishu/sdk/core/webview/d;->b:Lcom/meishu/sdk/core/webview/d$a;

    .line 175
    .line 176
    iget-object v5, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 177
    .line 178
    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 179
    .line 180
    .line 181
    :try_start_1
    sget-boolean v4, Lcom/meishu/sdk/core/utils/k0;->a:Z

    .line 182
    .line 183
    if-eqz v4, :cond_2

    .line 184
    .line 185
    sput-boolean v3, Lcom/meishu/sdk/core/utils/k0;->a:Z

    .line 186
    .line 187
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eqz v4, :cond_2

    .line 192
    .line 193
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5, v0, v4}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .line 214
    .line 215
    :catchall_1
    :cond_2
    if-eqz p1, :cond_4

    .line 216
    .line 217
    array-length v0, p1

    .line 218
    if-lez v0, :cond_4

    .line 219
    .line 220
    :try_start_2
    aget-object v0, p1, v3

    .line 221
    .line 222
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v4, "__ms_share_info"

    .line 227
    .line 228
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->shareInfo:Ljava/lang/String;

    .line 233
    .line 234
    sget-object v4, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->shareListener:Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    .line 235
    .line 236
    if-eqz v4, :cond_3

    .line 237
    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_3

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$1;

    .line 248
    .line 249
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuWebviewActivity$1;-><init>(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    goto :goto_1

    .line 258
    :cond_3
    const/4 v0, 0x4

    .line 259
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 267
    .line 268
    aget-object p1, p1, v3

    .line 269
    .line 270
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->extraHeaders:Ljava/util/Map;

    .line 271
    .line 272
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    .line 274
    .line 275
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->showLoading()V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 284
    .line 285
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    new-instance v1, Lcom/meishu/sdk/core/webview/l;

    .line 293
    .line 294
    invoke-direct {v1, v2, v0}, Lcom/meishu/sdk/core/webview/l;-><init>(Lcom/meishu/sdk/core/webview/m;Ljava/lang/ref/SoftReference;)V

    .line 295
    .line 296
    .line 297
    const-wide/16 v2, 0x1388

    .line 298
    .line 299
    invoke-virtual {p1, v1, v2, v3}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 300
    .line 301
    .line 302
    :cond_4
    sget p1, Lcom/meishu/sdk/R$id;->ms_img_close:I

    .line 303
    .line 304
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    new-instance v0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$2;

    .line 309
    .line 310
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuWebviewActivity$2;-><init>(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    return-void
.end method

.method public safeOnDestroy()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->shareListener:Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public safeOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnKeyDown(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public safeOnPause()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public safeOnResume()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setZoomControlGone(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    .line 2
    .line 3
    const-string v1, "mZoomButtonsController"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/widget/ZoomButtonsController;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p1

    .line 34
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method
