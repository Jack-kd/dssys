.class public Lorg/eclipse/jetty/io/d$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/eclipse/jetty/io/d;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/io/d$a;->a:Lorg/eclipse/jetty/io/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lorg/eclipse/jetty/io/d$b;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jetty/io/d$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/eclipse/jetty/io/d$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/d$a;->a()Lorg/eclipse/jetty/io/d$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
