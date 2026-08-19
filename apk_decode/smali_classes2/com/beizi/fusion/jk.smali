.class public abstract Lcom/beizi/fusion/jk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String; = "OaidUtil"

.field private static b:Ljava/lang/String;

.field public static c:Lcom/beizi/fusion/d7$b;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/jk$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/beizi/fusion/jk$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/beizi/fusion/jk;->c:Lcom/beizi/fusion/d7$b;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/beizi/fusion/jk;->d:Z

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/jk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/beizi/fusion/jk;->b:Ljava/lang/String;

    return-object p0
.end method
