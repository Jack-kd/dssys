.class Landroidx/browser/auth/AuthTabSessionToken$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/auth/AuthTabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/auth/AuthTabSessionToken;-><init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/auth/AuthTabSessionToken;


# direct methods
.method public constructor <init>(Landroidx/browser/auth/AuthTabSessionToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IAuthTabCallback;->onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    const-string p1, "AuthTabSessionToken"

    .line 12
    .line 13
    const-string p2, "RemoteException during IAuthTabCallback transaction"

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IAuthTabCallback;->onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    const-string p1, "AuthTabSessionToken"

    .line 13
    .line 14
    const-string p2, "RemoteException during IAuthTabCallback transaction"

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 20
    .line 21
    return-object p1
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IAuthTabCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    const-string p1, "AuthTabSessionToken"

    .line 12
    .line 13
    const-string p2, "RemoteException during IAuthTabCallback transaction"

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Landroid/support/customtabs/IAuthTabCallback;->onWarmupCompleted(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    const-string p1, "AuthTabSessionToken"

    .line 12
    .line 13
    const-string v0, "RemoteException during IAuthTabCallback transaction"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
