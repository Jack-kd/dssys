.class public final Lcom/beizi/fusion/uj;
.super Lcom/beizi/fusion/fp;
.source "SourceFile"


# static fields
.field private static final b:Lcom/beizi/fusion/gp;


# instance fields
.field private final a:Lcom/beizi/fusion/dp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/cp;->b:Lcom/beizi/fusion/cp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/uj;->b(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/beizi/fusion/uj;->b:Lcom/beizi/fusion/gp;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/beizi/fusion/dp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/fp;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/uj;->a:Lcom/beizi/fusion/dp;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/cp;->b:Lcom/beizi/fusion/cp;

    if-ne p0, v0, :cond_0

    .line 3
    sget-object p0, Lcom/beizi/fusion/uj;->b:Lcom/beizi/fusion/gp;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/beizi/fusion/uj;->b(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/beizi/fusion/dp;)Lcom/beizi/fusion/gp;
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/uj;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/beizi/fusion/uj;-><init>(Lcom/beizi/fusion/dp;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/beizi/fusion/uj$a;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/beizi/fusion/uj$a;-><init>(Lcom/beizi/fusion/uj;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/rg;Ljava/lang/Number;)V
    .locals 0

    .line 5
    invoke-virtual {p1, p2}, Lcom/beizi/fusion/rg;->a(Ljava/lang/Number;)Lcom/beizi/fusion/rg;

    return-void
.end method

.method public bridge synthetic a(Lcom/beizi/fusion/rg;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/uj;->a(Lcom/beizi/fusion/rg;Ljava/lang/Number;)V

    return-void
.end method
