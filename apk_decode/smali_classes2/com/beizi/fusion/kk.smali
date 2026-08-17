.class public abstract Lcom/beizi/fusion/kk;
.super Lcom/beizi/fusion/fp;
.source "SourceFile"


# static fields
.field private static final a:Lcom/beizi/fusion/gp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/cp;->a:Lcom/beizi/fusion/cp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/kk;->b(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/beizi/fusion/kk;->a:Lcom/beizi/fusion/gp;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/cp;->a:Lcom/beizi/fusion/cp;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/beizi/fusion/kk;->a:Lcom/beizi/fusion/gp;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/beizi/fusion/kk;->b(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static b(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/kk$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/beizi/fusion/kk$a;-><init>(Lcom/beizi/fusion/dp;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
