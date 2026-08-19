.class public Lcom/octopus/ad/c/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/c/d/c$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "OpenDeviceId library"

.field private static c:Z = false


# instance fields
.field private a:Lcom/octopus/ad/c/d/a;

.field private d:Landroid/content/ServiceConnection;

.field private e:Landroid/content/Context;

.field private f:Lcom/octopus/ad/c/d/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/octopus/ad/c/d/c;->e:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/octopus/ad/c/d/c;->f:Lcom/octopus/ad/c/d/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/c/d/c;Lcom/octopus/ad/c/d/a;)Lcom/octopus/ad/c/d/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/c/d/c;->a:Lcom/octopus/ad/c/d/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/c/d/c;)Lcom/octopus/ad/c/d/c$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/c/d/c;->f:Lcom/octopus/ad/c/d/c$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/octopus/ad/c/d/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/octopus/ad/c/d/c$a<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/c/d/c;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/octopus/ad/c/d/c;->f:Lcom/octopus/ad/c/d/c$a;

    .line 5
    new-instance p1, Lcom/octopus/ad/c/d/c$1;

    invoke-direct {p1, p0}, Lcom/octopus/ad/c/d/c$1;-><init>(Lcom/octopus/ad/c/d/c;)V

    iput-object p1, p0, Lcom/octopus/ad/c/d/c;->d:Landroid/content/ServiceConnection;

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 7
    const-string p2, "org.repackage.com.zui.deviceidservice"

    const-string v0, "org.repackage.com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p2, p0, Lcom/octopus/ad/c/d/c;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/octopus/ad/c/d/c;->d:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/c/d/c;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/c/d/c;->a:Lcom/octopus/ad/c/d/a;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1}, Lcom/octopus/ad/c/d/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-object v0

    .line 13
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/c/d/c;->a:Lcom/octopus/ad/c/d/a;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/octopus/ad/c/d/a;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    return v0
.end method
