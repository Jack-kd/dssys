.class public abstract LM1/c;
.super Lorg/eclipse/jetty/server/handler/h;
.source "SourceFile"


# static fields
.field public static final h:LR1/c;

.field public static i:Ljava/security/Principal;

.field public static j:Ljava/security/Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LM1/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LM1/c;->h:LR1/c;

    .line 8
    .line 9
    new-instance v0, LM1/c$a;

    .line 10
    .line 11
    invoke-direct {v0}, LM1/c$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, LM1/c;->i:Ljava/security/Principal;

    .line 15
    .line 16
    new-instance v0, LM1/c$b;

    .line 17
    .line 18
    invoke-direct {v0}, LM1/c$b;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, LM1/c;->j:Ljava/security/Principal;

    .line 22
    .line 23
    return-void
.end method

.method public static f0()LM1/c;
    .locals 3

    .line 1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/d;->w0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d$d;->c()Lorg/eclipse/jetty/server/handler/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v2, LM1/c;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/handler/b;->c0(Ljava/lang/Class;)LN1/h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lt/f;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
