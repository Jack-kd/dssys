.class public final Landroidx/browser/trusted/TrustedWebActivityIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFileHandlingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntent:Landroid/content/Intent;

.field private final mSharedFileUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mSharedFileUris:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mFileHandlingUris:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method private grantUriPermissionToProvider(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mSharedFileUris:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/Uri;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mIntent:Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mFileHandlingUris:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/net/Uri;

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mIntent:Landroid/content/Intent;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x3

    .line 55
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public getFileHandlingData()Landroidx/browser/trusted/FileHandlingData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityIntent;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "androidx.browser.trusted.extra.FILE_HANDLING_DATA"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/browser/trusted/FileHandlingData;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/FileHandlingData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLaunchHandlerClientMode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityIntent;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "androidx.browser.trusted.extra.LAUNCH_HANDLER_CLIENT_MODE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getOriginalLaunchUrl()Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityIntent;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "androidx.browser.trusted.extra.ORIGINAL_LAUNCH_URL"

    .line 6
    .line 7
    const-class v2, Landroid/net/Uri;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/Uri;

    .line 14
    .line 15
    return-object v0
.end method

.method public launchTrustedWebActivity(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/browser/trusted/TrustedWebActivityIntent;->grantUriPermissionToProvider(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityIntent;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
