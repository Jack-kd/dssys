.class public abstract Lorg/eclipse/jetty/http/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LL1/e;

.field public static final b:LL1/d;

.field public static final c:LL1/d;

.field public static final d:LL1/d;

.field public static final e:LL1/d;

.field public static final f:LL1/d;

.field public static final g:LL1/d;

.field public static final h:LL1/d;

.field public static final i:LL1/d;

.field public static final j:LL1/d;


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
    sput-object v0, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 7
    .line 8
    const-string v1, "GET"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lorg/eclipse/jetty/http/k;->b:LL1/d;

    .line 16
    .line 17
    const-string v1, "POST"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lorg/eclipse/jetty/http/k;->c:LL1/d;

    .line 25
    .line 26
    const-string v1, "HEAD"

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lorg/eclipse/jetty/http/k;->d:LL1/d;

    .line 34
    .line 35
    const-string v1, "PUT"

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lorg/eclipse/jetty/http/k;->e:LL1/d;

    .line 43
    .line 44
    const-string v1, "OPTIONS"

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sput-object v1, Lorg/eclipse/jetty/http/k;->f:LL1/d;

    .line 52
    .line 53
    const-string v1, "DELETE"

    .line 54
    .line 55
    const/4 v2, 0x6

    .line 56
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sput-object v1, Lorg/eclipse/jetty/http/k;->g:LL1/d;

    .line 61
    .line 62
    const-string v1, "TRACE"

    .line 63
    .line 64
    const/4 v2, 0x7

    .line 65
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sput-object v1, Lorg/eclipse/jetty/http/k;->h:LL1/d;

    .line 70
    .line 71
    const-string v1, "CONNECT"

    .line 72
    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sput-object v1, Lorg/eclipse/jetty/http/k;->i:LL1/d;

    .line 80
    .line 81
    const-string v1, "MOVE"

    .line 82
    .line 83
    const/16 v2, 0x9

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lorg/eclipse/jetty/http/k;->j:LL1/d;

    .line 90
    .line 91
    return-void
.end method
