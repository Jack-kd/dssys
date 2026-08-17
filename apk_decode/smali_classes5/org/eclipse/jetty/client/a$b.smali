.class public Lorg/eclipse/jetty/client/a$b;
.super LW1/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic g:Lorg/eclipse/jetty/client/a;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/a$b;->g:Lorg/eclipse/jetty/client/a;

    invoke-direct {p0}, LW1/e$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/a$b;-><init>(Lorg/eclipse/jetty/client/a;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$b;->g:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/client/a;->h(Lorg/eclipse/jetty/client/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$b;->g:Lorg/eclipse/jetty/client/a;

    .line 16
    .line 17
    iget-object v1, v0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->t(Lorg/eclipse/jetty/client/a;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
