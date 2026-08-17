.class public Ls0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls0/b;


# direct methods
.method public constructor <init>(Ls0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/b$a;->a:Ls0/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/b$a;->a:Ls0/b;

    .line 2
    .line 3
    invoke-static {v0}, Ls0/b;->e(Ls0/b;)Lu0/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ls0/b$a;->a:Ls0/b;

    .line 10
    .line 11
    new-instance v1, Ls0/b$a$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Ls0/b$a$a;-><init>(Ls0/b$a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ls0/b;->f(Ls0/b;Lu0/b;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Ls0/b$a;->a:Ls0/b;

    .line 24
    .line 25
    invoke-static {v1}, Ls0/b;->e(Ls0/b;)Lu0/b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lt0/e;->w(Lu0/b;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/b$a;->a:Ls0/b;

    .line 2
    .line 3
    const-string v1, "UPNP_DISCONNECTED"

    .line 4
    .line 5
    const-string v2, "UPnP service disconnected"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ls0/b;->g(Ls0/b;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onError"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ls0/b;->i(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
