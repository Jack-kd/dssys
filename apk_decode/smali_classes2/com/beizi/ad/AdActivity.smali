.class public Lcom/beizi/ad/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/AdActivity$b;
    }
.end annotation


# static fields
.field public static b:Z = false

.field static c:Ljava/lang/Class;


# instance fields
.field private a:Lcom/beizi/ad/AdActivity$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/beizi/ad/AdActivity;

    .line 2
    .line 3
    sput-object v0, Lcom/beizi/ad/AdActivity;->c:Ljava/lang/Class;

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


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->a:Lcom/beizi/ad/AdActivity$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$b;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ACTIVITY_CAN_JUMP"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "ACTIVITY_CAN_DOWNLOAD"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "deeplinkUrl"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "webDeepLink"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    move-object v4, p0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-object v4, p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const-string v0, "BROWSER"

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance v3, Lcom/beizi/fusion/z4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    move-object v4, p0

    .line 79
    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/beizi/fusion/z4;-><init>(Landroid/app/Activity;ZZLjava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    iput-object v3, v4, Lcom/beizi/ad/AdActivity;->a:Lcom/beizi/ad/AdActivity$b;

    .line 83
    .line 84
    invoke-interface {v3}, Lcom/beizi/ad/AdActivity$b;->b()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move-object v4, p0

    .line 89
    const-string v0, "DOWNLOADBROWSER"

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    new-instance v3, Lcom/beizi/fusion/z4;

    .line 98
    .line 99
    invoke-direct/range {v3 .. v8}, Lcom/beizi/fusion/z4;-><init>(Landroid/app/Activity;ZZLjava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    iput-object v3, v4, Lcom/beizi/ad/AdActivity;->a:Lcom/beizi/ad/AdActivity$b;

    .line 103
    .line 104
    invoke-interface {v3}, Lcom/beizi/ad/AdActivity$b;->b()V

    .line 105
    .line 106
    .line 107
    new-instance p1, Ljava/lang/Thread;

    .line 108
    .line 109
    new-instance v0, Lcom/beizi/ad/AdActivity$a;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/beizi/ad/AdActivity$a;-><init>(Lcom/beizi/ad/AdActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    :catch_1
    :cond_3
    :goto_1
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
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->a:Lcom/beizi/ad/AdActivity$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$b;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->a:Lcom/beizi/ad/AdActivity$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$b;->a()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/beizi/fusion/nq;->a(Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->a:Lcom/beizi/ad/AdActivity$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$b;->a()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/beizi/fusion/nq;->b(Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
