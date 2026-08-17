.class public Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;->callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 p1, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    const-string v0, "onInitializationSuccess"

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;->callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onSuccess()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "onInitializationFail"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const-string p2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :try_start_1
    aget-object p3, p3, v0

    .line 36
    .line 37
    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    move-object p2, p3

    .line 40
    :catch_0
    :try_start_2
    iget-object p3, p0, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;->callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    invoke-interface {p3, p1, p2}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;->callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "error:"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p3, p1, p2}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onError(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 76
    return-object p1
.end method
