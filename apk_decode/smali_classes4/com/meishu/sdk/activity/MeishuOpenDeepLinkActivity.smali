.class public Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;
.super Lcom/meishu/sdk/core/safe/SafeActivity;
.source "SourceFile"


# static fields
.field public static final KEY_DEEP_LINK:Ljava/lang/String; = "deep_link"

.field public static final KEY_DEEP_SIGN:Ljava/lang/String; = "dp_sign"

.field public static final KEY_DEEP_START:Ljava/lang/String; = "dp_start"

.field public static final KEY_DP_SIGN:Ljava/lang/String; = "dp_d_sign"

.field public static final REQUEST_CODE_DEEP_LINK:I = 0x271a

.field private static final TAG:Ljava/lang/String; = "MeishuOpenDeepLinkActivity"


# instance fields
.field private DPSIGN:Ljava/lang/String;

.field private dpSign:Ljava/lang/String;

.field private dpStartUrls:[Ljava/lang/String;

.field private hasAppBackground:Z

.field private isBackground:Z

.field private isInner:Z

.field private final onAppStateListener:Lcom/meishu/sdk/core/service/e;

.field private openDeepLinkRes:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->isBackground:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->isInner:Z

    .line 9
    .line 10
    new-instance v0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$2;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$2;-><init>(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->onAppStateListener:Lcom/meishu/sdk/core/service/e;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->hasAppBackground:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->hasAppBackground:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->openDeepLinkRes:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->isBackground:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->notifyJumpDeepLinkRes()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private dpReport(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpStartUrls:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private goOrigin(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpSign:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpSign:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/g1;->a(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x271a

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    const-string v3, "SHA-256"

    .line 45
    .line 46
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "UTF-8"

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    :try_start_3
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpReport(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/v1;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_0
    const/4 v0, 0x2

    .line 83
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpReport(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/v1;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x3

    .line 98
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpReport(I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->jdl(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    const/4 v0, 0x4

    .line 106
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpReport(I)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->jdl(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catchall_1
    const/4 p1, 0x0

    .line 114
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
.end method

.method private handleSIGN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/w1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpReport(I)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x271a

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, p2}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->goOrigin(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-direct {p0, p2}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->goOrigin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void

    .line 56
    :goto_0
    invoke-direct {p0, p2}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->goOrigin(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private jdl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "android.intent.category.BROWSABLE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    const/high16 v1, 0x10000000

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->f:Ljava/util/List;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/16 p1, 0x271a

    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private jumpDeepLink(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->DPSIGN:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->DPSIGN:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->handleSIGN(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->goOrigin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_0
    sget-object v0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "jumpDeepLink error"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private notifyJumpDeepLinkRes()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->isBackground:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->openDeepLinkRes:Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p0;->a(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->onAppStateListener:Lcom/meishu/sdk/core/service/e;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public static startOpenDeepLinkActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    instance-of v1, p0, Landroid/app/Activity;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/high16 v1, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v1, "deep_link"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "dp_sign"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p1, "dp_start"

    .line 28
    .line 29
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p1, "dp_d_sign"

    .line 33
    .line 34
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public safeOnActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x271a

    .line 5
    .line 6
    if-ne p1, p3, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;-><init>(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x64

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->openDeepLinkRes:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->notifyJumpDeepLinkRes()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "deep_link"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "dp_sign"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpSign:Ljava/lang/String;

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "dp_d_sign"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->DPSIGN:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    :catchall_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "dp_start"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->dpStartUrls:[Ljava/lang/String;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->onAppStateListener:Lcom/meishu/sdk/core/service/e;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->jumpDeepLink(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public safeOnDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->onAppStateListener:Lcom/meishu/sdk/core/service/e;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public safeOnPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->isBackground:Z

    .line 6
    .line 7
    return-void
.end method

.method public safeOnResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->isBackground:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->notifyJumpDeepLinkRes()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
