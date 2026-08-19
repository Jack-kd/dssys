.class Lcom/beizi/fusion/wk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ek$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/wk;->a(Lcom/beizi/fusion/mc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/wk;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/wk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/wk$a;->a:Lcom/beizi/fusion/wk;

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

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/wk$a;->a:Lcom/beizi/fusion/wk;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/fusion/wk;->a(Lcom/beizi/fusion/wk;Landroid/os/IBinder;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Lcom/beizi/fusion/wj; {:try_start_0 .. :try_end_0} :catch_2
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
    new-instance v0, Lcom/beizi/fusion/wj;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/beizi/fusion/wj;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :goto_1
    throw p1
.end method
