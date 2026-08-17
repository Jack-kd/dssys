.class Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

.field public final synthetic val$ads:Lcom/sigmob/windad/WindAds;

.field public final synthetic val$callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;Lcom/sigmob/windad/WindAds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$ads:Lcom/sigmob/windad/WindAds;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "SigmobCustomInitManager"

    .line 2
    .line 3
    const-string v0, "onInitializationFail"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->access$002(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    invoke-interface {p1, v0, p2}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onError(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 1
    const-string v0, "init success"

    .line 2
    .line 3
    const-string v1, "SigmobCustomInitManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "com.sigmob.windad.OnStartListener"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "not find OnStartListener"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 24
    .line 25
    invoke-static {v0, v3}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->access$002(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v1, "not find com.sigmob.windad.OnStartListener"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onError(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-class v5, Lcom/sigmob/windad/WindAds;

    .line 43
    .line 44
    const-string v6, "start"

    .line 45
    .line 46
    invoke-static {v5, v6, v4}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    const-string v0, "not find start method"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->access$002(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Z)Z

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-interface {v1, v2, v0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onError(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v2, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnStartListener;

    .line 79
    .line 80
    new-instance v3, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2$1;

    .line 81
    .line 82
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2$1;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v3}, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnStartListener;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$ads:Lcom/sigmob/windad/WindAds;

    .line 93
    .line 94
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v4, v1, v0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-void
.end method
