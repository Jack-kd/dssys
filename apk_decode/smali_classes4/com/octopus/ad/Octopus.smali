.class public Lcom/octopus/ad/Octopus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/octopus/ad/OctopusAdSdkController; = null

.field private static b:Z = false

.field private static c:Lcom/octopus/ad/model/UserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomController()Lcom/octopus/ad/OctopusAdSdkController;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/octopus/ad/d/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getS2SManger()Lcom/octopus/ad/internal/utilities/IS2SManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.6.5.7"

    .line 2
    .line 3
    return-object v0
.end method

.method public static getUserProfile()Lcom/octopus/ad/model/UserProfile;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/Octopus;->c:Lcom/octopus/ad/model/UserProfile;

    .line 2
    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/octopus/ad/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/OctopusAdSdkController;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 2
    sget-object v0, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    if-nez v0, :cond_0

    .line 3
    sput-object p2, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    .line 4
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/octopus/ad/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/OctopusAdSdkController;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 6
    sget-object v0, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    if-nez v0, :cond_0

    .line 7
    sput-object p2, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    .line 8
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/octopus/ad/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    const-string p0, "OctopusGroup"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static isHttpsEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/octopus/ad/internal/q;->g:Z

    .line 6
    .line 7
    return v0
.end method

.method public static isLimitPersonalAds()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/octopus/ad/Octopus;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public static logTagInfo(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setAppMuted(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/q;->a(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setAppVolume(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/q;->a(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setCustomController(Lcom/octopus/ad/OctopusAdSdkController;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    .line 2
    .line 3
    return-void
.end method

.method public static setIsDownloadDirect(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/q;->b(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setLimitPersonalAds(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/octopus/ad/Octopus;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setTimeout(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/q;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setUserProfile(Lcom/octopus/ad/model/UserProfile;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/octopus/ad/Octopus;->c:Lcom/octopus/ad/model/UserProfile;

    .line 2
    .line 3
    return-void
.end method

.method public static useHttps(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-boolean p0, v0, Lcom/octopus/ad/internal/q;->g:Z

    .line 6
    .line 7
    return-void
.end method
