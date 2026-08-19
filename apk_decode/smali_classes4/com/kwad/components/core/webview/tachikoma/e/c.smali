.class public final Lcom/kwad/components/core/webview/tachikoma/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/webview/tachikoma/e/c$a;
    }
.end annotation


# instance fields
.field private final avc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/components/core/webview/tachikoma/f/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/e/c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/webview/tachikoma/e/c;Ljava/lang/String;JJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/kwad/components/core/webview/tachikoma/e/c;->b(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/webview/tachikoma/e/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/webview/tachikoma/e/c;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;JJJ)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/kwad/components/core/webview/tachikoma/f/g;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    .line 5
    invoke-virtual/range {v2 .. v9}, Lcom/kwad/components/core/webview/tachikoma/f/g;->a(Ljava/lang/String;JJJ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 32
    .line 33
    invoke-interface {v0, p2}, Lcom/kwad/components/core/webview/tachikoma/f/b;->x(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return-void
.end method

.method public static zG()Lcom/kwad/components/core/webview/tachikoma/e/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c$a;->zI()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/kwad/components/core/webview/tachikoma/f/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;JJJ)V
    .locals 9

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/e/c$2;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-wide v3, p2

    .line 6
    move-wide v5, p4

    .line 7
    move-wide v7, p6

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/kwad/components/core/webview/tachikoma/e/c$2;-><init>(Lcom/kwad/components/core/webview/tachikoma/e/c;Ljava/lang/String;JJJ)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/e/c$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/core/webview/tachikoma/e/c$1;-><init>(Lcom/kwad/components/core/webview/tachikoma/e/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zH()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/e/c;->avc:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
