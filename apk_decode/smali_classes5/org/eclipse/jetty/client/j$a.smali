.class public Lorg/eclipse/jetty/client/j$a;
.super LW1/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/client/j;->scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lorg/eclipse/jetty/client/HttpDestination;

.field public final synthetic h:Lorg/eclipse/jetty/client/j;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/j;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j$a;->h:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/eclipse/jetty/client/j$a;->g:Lorg/eclipse/jetty/client/HttpDestination;

    .line 4
    .line 5
    invoke-direct {p0}, LW1/e$a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$a;->h:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/client/j$a;->g:Lorg/eclipse/jetty/client/HttpDestination;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->expire(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
