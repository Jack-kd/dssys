.class public Lcom/baidu/mobads/sdk/internal/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ContainerFactoryBuilder"

.field private static e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;


# instance fields
.field public b:D

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/mobads/sdk/internal/bv;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/bp;->d:Ljava/lang/Class;

    .line 6
    .line 7
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/baidu/mobads/sdk/internal/bp;->b:D

    .line 13
    .line 14
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/bp;->f:Lcom/baidu/mobads/sdk/internal/bv;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/bp;->d:Ljava/lang/Class;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/baidu/mobads/sdk/internal/bp;->c:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobads/sdk/internal/cb$a;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-class v0, Landroid/content/Context;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/bp;->d:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/bp;->c:Landroid/content/Context;

    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 28
    .line 29
    sput-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 30
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "p_ver"

    .line 37
    .line 38
    const-string v2, "9.450"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->initConfig(Lorg/json/JSONObject;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->getRemoteVersion()D

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iput-wide v0, p0, Lcom/baidu/mobads/sdk/internal/bp;->b:D

    .line 55
    .line 56
    sget-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 57
    .line 58
    const-string v1, "permission_module"

    .line 59
    .line 60
    invoke-static {}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->getPermissionInfo()Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->onTaskDistribute(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 68
    .line 69
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/t;->a()Lcom/baidu/mobads/sdk/internal/t;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->initCommonModuleObj(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/bp;->f:Lcom/baidu/mobads/sdk/internal/bv;

    .line 79
    .line 80
    const-string v2, "ContainerFactoryBuilder"

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/internal/bv;->b([Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/baidu/mobads/sdk/internal/cb$a;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, "ContainerFactory() failed, possibly API incompatible: "

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v1, v0}, Lcom/baidu/mobads/sdk/internal/cb$a;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_0
    :goto_0
    sget-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 121
    .line 122
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/baidu/mobads/sdk/internal/bp;->e:Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 3
    .line 4
    return-void
.end method
