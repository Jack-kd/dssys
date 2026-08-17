.class public Lcom/baidu/oauth/sdkbqt/auth/x;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lo/g;->h(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->I(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->I(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p2, 0x4

    .line 35
    if-eq p1, p2, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->I(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->K(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$i;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 55
    .line 56
    const-string p2, "javascript:prompt(JSON.stringify({action:{name:\'action_set_title\',params:[document.title, \'prompt_on_cancel\', \'prompt_on_cancel\']}}));"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->p(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/baidu/oauth/sdkbqt/auth/i;->D(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lo/g;->h(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "javascript:"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->C(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->D(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/auth/i$h;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->p(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/baidu/oauth/sdkbqt/auth/i;->D(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 51
    .line 52
    invoke-static {p3}, Lcom/baidu/oauth/sdkbqt/auth/i;->G(Lcom/baidu/oauth/sdkbqt/auth/i;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->k(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->k(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    const-string v1, "code"

    .line 4
    .line 5
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/i;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v4, "override the loading url that is "

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    const-string p1, "#"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 v2, 0x1

    .line 60
    add-int/2addr p1, v2

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lo/g;->e(Ljava/lang/String;)Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Ls/d;

    .line 74
    .line 75
    invoke-direct {p2}, Ls/d;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "error"

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    const/16 v0, -0xcc

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ls/b;->c(I)V

    .line 89
    .line 90
    .line 91
    const-string v0, "error_description"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ls/b;->d(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->u(Lcom/baidu/oauth/sdkbqt/auth/i;)Lq/d;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1, p2}, Lq/b;->onFailure(Ls/b;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    .line 113
    .line 114
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const-string p1, "showLogin"

    .line 132
    .line 133
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->z(Lcom/baidu/oauth/sdkbqt/auth/i;)Z

    .line 136
    .line 137
    .line 138
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const-string v1, "1"

    .line 140
    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    move-object v0, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    :try_start_1
    const-string v0, "0"

    .line 146
    .line 147
    :goto_0
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string p1, "finishLogin"

    .line 151
    .line 152
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    iput-object v3, p2, Ls/d;->o:Lorg/json/JSONObject;

    .line 156
    .line 157
    const/4 p1, 0x0

    .line 158
    invoke-virtual {p2, p1}, Ls/b;->c(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->u(Lcom/baidu/oauth/sdkbqt/auth/i;)Lq/d;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {p1, p2}, Lq/b;->onSuccess(Ls/b;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception p1

    .line 172
    invoke-static {p1}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    const/16 p1, -0xc9

    .line 176
    .line 177
    invoke-virtual {p2, p1}, Ls/b;->c(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->u(Lcom/baidu/oauth/sdkbqt/auth/i;)Lq/d;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {p1, p2}, Lq/b;->onFailure(Ls/b;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/x;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->v()V

    .line 192
    .line 193
    .line 194
    return v2

    .line 195
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    return p1
.end method
