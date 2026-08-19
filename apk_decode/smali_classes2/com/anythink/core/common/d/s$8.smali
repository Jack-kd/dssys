.class final Lcom/anythink/core/common/d/s$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d/s;->a(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATInitConfig;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/common/d/s;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/s;Lcom/anythink/core/api/ATInitConfig;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/d/s$8;->c:Lcom/anythink/core/common/d/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/d/s$8;->a:Lcom/anythink/core/api/ATInitConfig;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/core/common/d/s$8;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/d/s$8;->a:Lcom/anythink/core/api/ATInitConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitConfig;->getInitMediation()Lcom/anythink/core/api/ATInitMediation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getNetworkName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/anythink/core/common/d/s$8;->c:Lcom/anythink/core/common/d/s;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/anythink/core/common/d/s;->a(Lcom/anythink/core/common/d/s;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "anythink_network_init_data"

    .line 20
    .line 21
    const-string v4, ""

    .line 22
    .line 23
    invoke-static {v2, v3, v1, v4}, Lcom/anythink/core/common/v/ad;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-static {v1}, Lcom/anythink/core/common/v/p;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/d/s$8;->a:Lcom/anythink/core/api/ATInitConfig;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/anythink/core/api/ATInitConfig;->getRequestParamMap()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "anythink_local"

    .line 48
    .line 49
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/d/s$8;->b:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/anythink/core/common/d/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/u;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/anythink/core/common/d/u;->c()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-object v3, p0, Lcom/anythink/core/common/d/s$8;->b:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/anythink/core/common/d/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/u;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/anythink/core/common/d/u;->d()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iget-object v4, p0, Lcom/anythink/core/common/d/s$8;->b:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v0, v4, v2, v3}, Lcom/anythink/core/api/ATInitMediation;->setUserDataConsent(Landroid/content/Context;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception v2

    .line 81
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v2, p0, Lcom/anythink/core/common/d/s$8;->b:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/anythink/core/e/d;->a(Landroid/content/Context;)Lcom/anythink/core/e/d;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/anythink/core/common/d/s$8;->c:Lcom/anythink/core/common/d/s;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/anythink/core/common/d/s;->h(Lcom/anythink/core/common/d/s;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Lcom/anythink/core/e/d;->b(Ljava/lang/String;)Lcom/anythink/core/e/b;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "app_ccpa_switch"

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/anythink/core/e/b;->s()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x3

    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x1

    .line 109
    if-ne v4, v5, :cond_1

    .line 110
    .line 111
    move v4, v7

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    move v4, v6

    .line 114
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/anythink/core/common/v/o;->b()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const-string v4, "app_coppa_switch"

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/anythink/core/e/b;->t()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/4 v5, 0x2

    .line 132
    if-ne v2, v5, :cond_2

    .line 133
    .line 134
    if-eqz v3, :cond_2

    .line 135
    .line 136
    move v6, v7

    .line 137
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/anythink/core/common/d/s;->G()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_3

    .line 153
    .line 154
    new-instance v2, Lorg/json/JSONObject;

    .line 155
    .line 156
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v2, p0, Lcom/anythink/core/common/d/s$8;->c:Lcom/anythink/core/common/d/s;

    .line 163
    .line 164
    invoke-static {v2}, Lcom/anythink/core/common/d/s;->a(Lcom/anythink/core/common/d/s;)Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const/4 v3, 0x0

    .line 169
    invoke-virtual {v0, v2, v1, v3}, Lcom/anythink/core/api/ATInitMediation;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    .line 172
    :cond_4
    return-void

    .line 173
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    return-void
.end method
