.class public Lcom/meishu/sdk/core/oaid/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/oaid/impl/m$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/meishu/sdk/core/oaid/a;

.field public final c:Lcom/meishu/sdk/core/oaid/impl/m$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/oaid/a;Lcom/meishu/sdk/core/oaid/impl/m$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroid/app/Application;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    .line 16
    .line 17
    :goto_0
    iput-object p2, p0, Lcom/meishu/sdk/core/oaid/impl/m;->b:Lcom/meishu/sdk/core/oaid/a;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/meishu/sdk/core/oaid/impl/m;->c:Lcom/meishu/sdk/core/oaid/impl/m$a;

    .line 20
    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/meishu/sdk/core/oaid/a;Lcom/meishu/sdk/core/oaid/impl/m$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3}, Lcom/meishu/sdk/core/oaid/impl/m;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/oaid/a;Lcom/meishu/sdk/core/oaid/impl/m$a;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, v0, Lcom/meishu/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lcom/meishu/sdk/core/oaid/OAIDException;

    .line 22
    .line 23
    const-string p1, "Service binding failed"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    iget-object p1, v0, Lcom/meishu/sdk/core/oaid/impl/m;->b:Lcom/meishu/sdk/core/oaid/a;

    .line 30
    .line 31
    check-cast p1, Lcom/meishu/sdk/core/utils/l;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/m;->c:Lcom/meishu/sdk/core/oaid/impl/m$a;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/meishu/sdk/core/oaid/impl/m$a;->a(Landroid/os/IBinder;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/m;->b:Lcom/meishu/sdk/core/oaid/a;

    .line 16
    .line 17
    check-cast v0, Lcom/meishu/sdk/core/utils/l;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    iget-object p2, p0, Lcom/meishu/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p2

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_2
    new-instance p2, Lcom/meishu/sdk/core/oaid/OAIDException;

    .line 33
    .line 34
    const-string v0, "OAID acquire failed"

    .line 35
    .line 36
    invoke-direct {p2, v0}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/m;->b:Lcom/meishu/sdk/core/oaid/a;

    .line 41
    .line 42
    check-cast v0, Lcom/meishu/sdk/core/utils/l;

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_4
    iget-object p2, p0, Lcom/meishu/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 53
    .line 54
    .line 55
    :catch_1
    return-void

    .line 56
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/m;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 62
    .line 63
    .line 64
    :catch_2
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method
