.class Lcom/octopus/ad/d/a/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/a/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/a/b/e;->a(Lcom/octopus/ad/d/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/a/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/a/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/a/b/e$1;->a:Lcom/octopus/ad/d/a/b/e;

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
    invoke-static {p1}, Lcom/octopus/ad/d/a/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/d/a/a/a/a/a/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/octopus/ad/d/a/a/a/a/a/a;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Lcom/octopus/ad/d/a/e;

    .line 13
    .line 14
    const-string v0, "IdsSupplier is null"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/octopus/ad/d/a/e;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
