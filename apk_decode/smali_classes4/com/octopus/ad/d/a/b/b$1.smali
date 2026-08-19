.class Lcom/octopus/ad/d/a/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/a/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/a/b/b;->a(Lcom/octopus/ad/d/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/a/b/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/a/b/b$1;->a:Lcom/octopus/ad/d/a/b/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/d/a/e;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/octopus/ad/d/a/a/a/d/a/a$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/d/a/a/a/d/a/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/d/a/b/b$1;->a:Lcom/octopus/ad/d/a/b/b;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/octopus/ad/d/a/b/b;->a(Lcom/octopus/ad/d/a/b/b;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Lcom/octopus/ad/d/a/a/a/d/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Lcom/octopus/ad/d/a/e;

    .line 23
    .line 24
    const-string v0, "IDeviceIdManager is null"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/octopus/ad/d/a/e;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
