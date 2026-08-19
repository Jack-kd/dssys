.class public Lcom/octopus/ad/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/AdActivity$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/octopus/ad/AdActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/octopus/ad/AdActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/octopus/ad/AdActivity;

    .line 2
    .line 3
    sput-object v0, Lcom/octopus/ad/AdActivity;->b:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/octopus/ad/AdActivity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/octopus/ad/AdActivity;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/octopus/ad/AdActivity;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method private static b(Landroid/app/Activity;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/c/a;->a()Lcom/octopus/ad/internal/c/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/c/a;->k:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/octopus/ad/internal/c/a;->a()Lcom/octopus/ad/internal/c/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/octopus/ad/internal/c/a;->j:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "AMAZON"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "KFTT"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-string v1, "KFJWI"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const-string v1, "KFJWA"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v0, v3

    .line 60
    :goto_0
    const-string v1, "window"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/view/WindowManager;

    .line 67
    .line 68
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v4, 0x2

    .line 73
    if-ne p1, v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eq p1, v2, :cond_3

    .line 80
    .line 81
    if-ne p1, v4, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    :goto_1
    const/16 p1, 0x9

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    if-ne p1, v4, :cond_a

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const/16 v1, 0x8

    .line 101
    .line 102
    if-nez v0, :cond_7

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    if-ne p1, v2, :cond_5

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_7
    if-eqz p1, :cond_9

    .line 118
    .line 119
    if-ne p1, v2, :cond_8

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_8
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_9
    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 127
    .line 128
    .line 129
    :cond_a
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "ACTIVITY_TYPE"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 21
    .line 22
    sget v0, Lcom/octopus/ad/R$string;->adactivity_no_type:I

    .line 23
    .line 24
    invoke-static {v0}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "INTERSTITIAL"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/octopus/ad/e;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/octopus/ad/e;-><init>(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/octopus/ad/AdActivity$a;->a()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->d()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
