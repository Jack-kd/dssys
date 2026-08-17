.class public abstract Lorg/eclipse/jetty/http/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LL1/e;

.field public static final b:LL1/d;

.field public static final c:LL1/d;

.field public static final d:LL1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LL1/e;

    .line 2
    .line 3
    invoke-direct {v0}, LL1/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/eclipse/jetty/http/p;->a:LL1/e;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lorg/eclipse/jetty/http/p;->b:LL1/d;

    .line 17
    .line 18
    const-string v1, "HTTP/1.0"

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sput-object v1, Lorg/eclipse/jetty/http/p;->c:LL1/d;

    .line 27
    .line 28
    const-string v1, "HTTP/1.1"

    .line 29
    .line 30
    const/16 v2, 0xb

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lorg/eclipse/jetty/http/p;->d:LL1/d;

    .line 37
    .line 38
    return-void
.end method
