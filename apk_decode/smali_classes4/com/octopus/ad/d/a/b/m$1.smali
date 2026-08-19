.class Lcom/octopus/ad/d/a/b/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/a/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/a/b/m;->a(Lcom/octopus/ad/d/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/a/b/m;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/a/b/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/a/b/m$1;->a:Lcom/octopus/ad/d/a/b/m;

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
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/d/a/b/m$1;->a:Lcom/octopus/ad/d/a/b/m;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/octopus/ad/d/a/b/m;->a(Lcom/octopus/ad/d/a/b/m;Landroid/os/IBinder;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Lcom/octopus/ad/d/a/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :catch_2
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    new-instance v0, Lcom/octopus/ad/d/a/e;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/octopus/ad/d/a/e;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :goto_1
    throw p1
.end method
