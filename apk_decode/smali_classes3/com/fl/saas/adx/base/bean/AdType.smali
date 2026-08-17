.class public final enum Lcom/fl/saas/adx/base/bean/AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fl/saas/adx/base/bean/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fl/saas/adx/base/bean/AdType;

.field public static final enum Banner:Lcom/fl/saas/adx/base/bean/AdType;

.field public static final enum Interstitial:Lcom/fl/saas/adx/base/bean/AdType;

.field public static final enum RewardVideo:Lcom/fl/saas/adx/base/bean/AdType;

.field public static final enum Spread:Lcom/fl/saas/adx/base/bean/AdType;

.field private static final managerConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/fl/saas/adx/base/bean/AdType;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final adapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/fl/saas/adx/base/base/AdapterAPI;",
            ">;"
        }
    .end annotation
.end field

.field private apiManager:Lcom/fl/saas/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/i;"
        }
    .end annotation
.end field

.field private final managerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;",
            ">;"
        }
    .end annotation
.end field

.field private final pos:I


# direct methods
.method private static synthetic $values()[Lcom/fl/saas/adx/base/bean/AdType;
    .locals 4

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->Spread:Lcom/fl/saas/adx/base/bean/AdType;

    sget-object v1, Lcom/fl/saas/adx/base/bean/AdType;->Banner:Lcom/fl/saas/adx/base/bean/AdType;

    sget-object v2, Lcom/fl/saas/adx/base/bean/AdType;->Interstitial:Lcom/fl/saas/adx/base/bean/AdType;

    sget-object v3, Lcom/fl/saas/adx/base/bean/AdType;->RewardVideo:Lcom/fl/saas/adx/base/bean/AdType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/fl/saas/adx/base/bean/AdType;

    const-class v4, Lcom/fl/saas/g;

    const-class v5, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;

    const-string v1, "Spread"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/fl/saas/adx/base/bean/AdType;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/fl/saas/adx/base/bean/AdType;->Spread:Lcom/fl/saas/adx/base/bean/AdType;

    new-instance v1, Lcom/fl/saas/adx/base/bean/AdType;

    const-class v5, Lcom/fl/saas/d;

    const-class v6, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    const-string v2, "Banner"

    const/4 v4, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/fl/saas/adx/base/bean/AdType;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v1, Lcom/fl/saas/adx/base/bean/AdType;->Banner:Lcom/fl/saas/adx/base/bean/AdType;

    new-instance v2, Lcom/fl/saas/adx/base/bean/AdType;

    const-class v6, Lcom/fl/saas/e;

    const-class v7, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;

    const-string v3, "Interstitial"

    const/4 v5, 0x3

    invoke-direct/range {v2 .. v7}, Lcom/fl/saas/adx/base/bean/AdType;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v2, Lcom/fl/saas/adx/base/bean/AdType;->Interstitial:Lcom/fl/saas/adx/base/bean/AdType;

    new-instance v3, Lcom/fl/saas/adx/base/bean/AdType;

    const-class v7, Lcom/fl/saas/h;

    const-class v8, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    const-string v4, "RewardVideo"

    const/4 v6, 0x5

    invoke-direct/range {v3 .. v8}, Lcom/fl/saas/adx/base/bean/AdType;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v3, Lcom/fl/saas/adx/base/bean/AdType;->RewardVideo:Lcom/fl/saas/adx/base/bean/AdType;

    invoke-static {}, Lcom/fl/saas/adx/base/bean/AdType;->$values()[Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/base/bean/AdType;->$VALUES:[Lcom/fl/saas/adx/base/bean/AdType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fl/saas/adx/base/bean/AdType;->managerConstructors:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fl/saas/adx/base/base/AdapterAPI;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/fl/saas/adx/base/bean/AdType;->adapterClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/fl/saas/adx/base/bean/AdType;->managerClass:Ljava/lang/Class;

    iput p3, p0, Lcom/fl/saas/adx/base/bean/AdType;->pos:I

    return-void
.end method

.method public static fromPosition(I)Lcom/fl/saas/adx/base/bean/AdType;
    .locals 2

    const/4 v0, 0x1

    if-gt v0, p0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/base/bean/AdType;->values()[Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v1

    array-length v1, v1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/base/bean/AdType;->values()[Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v1

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getType(Ljava/lang/Class;)Lcom/fl/saas/adx/base/bean/AdType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fl/saas/adx/base/bean/AdType;"
        }
    .end annotation

    invoke-static {}, Lcom/fl/saas/adx/base/bean/AdType;->values()[Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/fl/saas/adx/base/bean/AdType;->isAssignable(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fl/saas/adx/base/bean/AdType;
    .locals 1

    const-class v0, Lcom/fl/saas/adx/base/bean/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fl/saas/adx/base/bean/AdType;

    return-object p0
.end method

.method public static values()[Lcom/fl/saas/adx/base/bean/AdType;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->$VALUES:[Lcom/fl/saas/adx/base/bean/AdType;

    invoke-virtual {v0}, [Lcom/fl/saas/adx/base/bean/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fl/saas/adx/base/bean/AdType;

    return-object v0
.end method


# virtual methods
.method public createDefaultBuilder(Landroid/content/Context;)Lcom/fl/saas/adx/base/base/BaseBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/fl/saas/adx/base/base/BaseBuilder<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Default;

    const-class v1, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder$Default;

    const-class v2, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder$Default;

    const-class v3, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Default;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    const-class v4, Lcom/fl/saas/adx/base/annotation/API;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/fl/saas/adx/base/annotation/API;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/fl/saas/adx/base/annotation/API;->value()Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v4

    if-ne p0, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    :try_start_0
    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/base/base/BaseBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_2
    return-object v3
.end method

.method public createManager()Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/fl/saas/adx/base/bean/AdType;->managerConstructors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fl/saas/adx/base/bean/AdType;->managerClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_1
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getAdapterGenerator()Lcom/fl/saas/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdType;->apiManager:Lcom/fl/saas/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/i;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fl/saas/adx/base/bean/AdType;->adapterClass:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/fl/saas/i;-><init>(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/fl/saas/adx/base/bean/AdType;->apiManager:Lcom/fl/saas/i;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdType;->apiManager:Lcom/fl/saas/i;

    .line 15
    .line 16
    return-object v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/bean/AdType;->pos:I

    return v0
.end method

.method public isAssignable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdType;->managerClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdType;->adapterClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
