.class public final Landroidx/browser/auth/AuthTabSessionToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabSessionToken$MockCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthTabSessionToken"


# instance fields
.field private final mCallback:Landroidx/browser/auth/AuthTabCallback;

.field private final mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

.field private final mSessionId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "AuthTabSessionToken must have either a session id or a callback (or both)."

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    new-instance p1, Landroidx/browser/auth/AuthTabSessionToken$1;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Landroidx/browser/auth/AuthTabSessionToken$1;-><init>(Landroidx/browser/auth/AuthTabSessionToken;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static createSessionTokenFromIntent(Landroid/content/Intent;)Landroidx/browser/auth/AuthTabSessionToken;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v2, "android.support.customtabs.extra.SESSION"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    .line 16
    .line 17
    const-class v3, Landroid/app/PendingIntent;

    .line 18
    .line 19
    invoke-static {p0, v2, v3}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/app/PendingIntent;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {v0}, Landroid/support/customtabs/IAuthTabCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/IAuthTabCallback;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    new-instance v0, Landroidx/browser/auth/AuthTabSessionToken;

    .line 38
    .line 39
    invoke-direct {v0, v1, p0}, Landroidx/browser/auth/AuthTabSessionToken;-><init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/app/PendingIntent;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private getCallbackBinderAssertNotNull()Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "AuthTabSessionToken must have valid binder or pending session"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/browser/auth/AuthTabSessionToken;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/browser/auth/AuthTabSessionToken;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSessionToken;->getId()Landroid/app/PendingIntent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v4, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v4, v1

    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v3, v1

    .line 25
    :goto_1
    if-eq v4, v3, :cond_3

    .line 26
    .line 27
    return v1

    .line 28
    :cond_3
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_4
    invoke-direct {p0}, Landroidx/browser/auth/AuthTabSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1}, Landroidx/browser/auth/AuthTabSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public getCallback()Landroidx/browser/auth/AuthTabCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getId()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mSessionId:Landroid/app/PendingIntent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-direct {p0}, Landroidx/browser/auth/AuthTabSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public isAssociatedWith(Landroidx/browser/auth/AuthTabSession;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/browser/auth/AuthTabSession;->getBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken;->mCallbackBinder:Landroid/support/customtabs/IAuthTabCallback;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
