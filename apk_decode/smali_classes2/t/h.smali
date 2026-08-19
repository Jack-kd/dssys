.class public Lt/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/auth/i$d;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lt/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lt/h;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lt/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    const-string v1, "openid"

    .line 4
    .line 5
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->j()Ljava/lang/String;

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
    const-string v4, "the url of BdOauthWebCallback is "

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    new-instance v2, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "errNo"

    .line 45
    .line 46
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/16 v5, -0x12d

    .line 51
    .line 52
    if-ne p1, v5, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 55
    .line 56
    const/16 v0, -0xcd

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->i(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_0
    const v5, 0x138e7

    .line 75
    .line 76
    .line 77
    const-string v6, "1"

    .line 78
    .line 79
    if-eq p1, v5, :cond_3

    .line 80
    .line 81
    const v5, 0x138e8

    .line 82
    .line 83
    .line 84
    if-ne p1, v5, :cond_1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 88
    .line 89
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v5, "accessToken"

    .line 93
    .line 94
    const-string v7, "access_token"

    .line 95
    .line 96
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string v1, "expiresIn"

    .line 111
    .line 112
    const-string v5, "expires_in"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v1, "scope"

    .line 122
    .line 123
    iget-object v5, p0, Lt/h;->c:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string v1, "code"

    .line 129
    .line 130
    const-string v5, "authorization_code"

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string v1, "showLogin"

    .line 140
    .line 141
    iget-object v5, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 142
    .line 143
    invoke-static {v5}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->k(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_2

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    const-string v6, "0"

    .line 151
    .line 152
    :goto_0
    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    const-string v0, "extra_oauth_result_json"

    .line 163
    .line 164
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 172
    .line 173
    const/4 v0, -0x1

    .line 174
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_3
    :goto_1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->j()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "oauth_sso_hash is old, just need generate a new value"

    .line 183
    .line 184
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {p1, v0}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v0, "client"

    .line 197
    .line 198
    const-string v1, "android"

    .line 199
    .line 200
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string v0, "clientfrom"

    .line 204
    .line 205
    const-string v1, "native"

    .line 206
    .line 207
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    const-string v0, "suppcheck"

    .line 211
    .line 212
    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    const-string v0, "oauth_redirect_uri"

    .line 216
    .line 217
    iget-object v1, p0, Lt/h;->a:Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string v0, "getauthorizationcode"

    .line 223
    .line 224
    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 230
    .line 231
    iget-object v1, p0, Lt/h;->b:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v1, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->n(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :goto_2
    invoke-static {p1}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 241
    .line 242
    const/16 v0, -0xc9

    .line 243
    .line 244
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->i(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;I)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 249
    .line 250
    .line 251
    :goto_3
    iget-object p1, p0, Lt/h;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 254
    .line 255
    .line 256
    return-void
.end method
