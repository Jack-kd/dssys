.class final Lcom/kwad/components/ad/nativead/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/g/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/b;->a(ZFLandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic pi:Lcom/kwad/components/ad/nativead/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/b$1;->pi:Lcom/kwad/components/ad/nativead/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b$1;->pi:Lcom/kwad/components/ad/nativead/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/b;->a(Lcom/kwad/components/ad/nativead/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b$1;->pi:Lcom/kwad/components/ad/nativead/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/b;->a(Lcom/kwad/components/ad/nativead/b;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/kwad/components/ad/nativead/b$d;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/b$d;->a(Lcom/kwad/components/ad/nativead/b$d;)Lcom/kwad/components/ad/nativead/b$e;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/b$d;->a(Lcom/kwad/components/ad/nativead/b$d;)Lcom/kwad/components/ad/nativead/b$e;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, p1, p2}, Lcom/kwad/components/ad/nativead/b$e;->b(D)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lcom/kwad/components/ad/nativead/b$1$1;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/nativead/b$1$1;-><init>(Lcom/kwad/components/ad/nativead/b$1;)V

    .line 53
    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    const-wide/16 v0, 0x1f4

    .line 57
    .line 58
    invoke-static {p1, p2, v0, v1}, Lcom/kwad/sdk/utils/by;->a(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final cj()V
    .locals 0

    return-void
.end method
