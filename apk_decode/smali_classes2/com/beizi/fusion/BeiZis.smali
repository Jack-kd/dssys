.class public Lcom/beizi/fusion/BeiZis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/beizi/fusion/BeiZiCustomController; = null

.field private static b:Z = false

.field private static c:Ljava/lang/String; = "1.0.25"

.field private static d:Z = true

.field private static e:Z = false

.field private static f:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 2
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 6
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    const/4 p2, 0x0

    .line 7
    sput-boolean p2, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 8
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 9
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    const/4 p2, 0x0

    .line 10
    sput-boolean p2, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 11
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/beizi/fusion/q1;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 12
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3, p3}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 13
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    const/4 p2, 0x0

    .line 14
    sput-boolean p2, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 15
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Ljava/lang/String;Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 16
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    const/4 p2, 0x0

    .line 17
    sput-boolean p2, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 18
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/beizi/fusion/q1;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 19
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 20
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    const/4 p2, 0x0

    .line 21
    sput-boolean p2, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 22
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 23
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    const/4 p2, 0x0

    .line 24
    sput-boolean p2, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 25
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/beizi/fusion/q1;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 26
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 4
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/beizi/fusion/q1;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 5
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInitWithDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/beizi/fusion/q1;->b(Ljava/lang/String;)Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v1, v1}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v1, v1}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asyncInitWithDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 6
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/beizi/fusion/q1;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 8
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/beizi/fusion/q1;->b(Ljava/lang/String;)Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v0, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v0, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static closeShakeAd()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/beizi/fusion/BeiZis;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public static getBidToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/beizi/fusion/q1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getCustomController()Lcom/beizi/fusion/BeiZiCustomController;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getOaidVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/BeiZis;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "5.5.0.3"

    .line 2
    .line 3
    return-object v0
.end method

.method public static getTransferProtocol()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/beizi/fusion/BeiZis;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 2
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    .line 3
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 4
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    .line 5
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 6
    sput-object p2, Lcom/beizi/fusion/BeiZis;->a:Lcom/beizi/fusion/BeiZiCustomController;

    .line 7
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initWithDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Lcom/beizi/fusion/q1;->b(Ljava/lang/String;)Lcom/beizi/fusion/q1;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p0, p1, v1, v1}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p0, p1, v1, v1}, Lcom/beizi/fusion/q1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static isCloseShakeAd()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/beizi/fusion/BeiZis;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isIsSyncInit()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/beizi/fusion/BeiZis;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isLimitPersonalAds()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/beizi/fusion/BeiZis;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public static setAnyCustomExt(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/beizi/fusion/q1;->a(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setLimitPersonalAds(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/beizi/fusion/BeiZis;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setOaidVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/beizi/fusion/BeiZis;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setSupportPersonalized(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/fusion/dl;->a(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setTransferProtocol(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/beizi/fusion/BeiZis;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/beizi/fusion/uf;->a()Lcom/beizi/fusion/uf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/beizi/fusion/uf;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
