.class Lcom/anythink/network/toutiao/TTATInitManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/anythink/network/toutiao/TTATInitManager;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATInitManager;Ljava/lang/String;Ljava/lang/String;[ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->c:[I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->d:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->c:[I

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useMediation(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useMediation(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATInitManager;->b(Lcom/anythink/network/toutiao/TTATInitManager;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATInitManager;->h:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATInitManager;->i:Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfig$Builder;

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfig;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setMediationConfig(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->d:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Z

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/anythink/network/toutiao/TTATInitManager$a$a;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATInitManager$a$a;-><init>(Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->start(Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v3, ""

    .line 132
    .line 133
    invoke-static {v2, v0, v3, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
