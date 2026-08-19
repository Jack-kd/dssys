.class public Lcom/beizi/fusion/fn;
.super Lcom/beizi/fusion/x9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/fn$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/x9;-><init>()V

    .line 3
    invoke-static {}, Lcom/beizi/fusion/fn$b;->a()Lcom/beizi/fusion/fn;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Singleton ..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/fn$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/fn;-><init>()V

    return-void
.end method

.method public static a()Lcom/beizi/fusion/fn;
    .locals 1

    .line 2
    invoke-static {}, Lcom/beizi/fusion/fn$b;->a()Lcom/beizi/fusion/fn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/fn;->c(Landroid/content/Context;)Lcom/beizi/fusion/hb;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Lcom/beizi/fusion/hb;
    .locals 0

    .line 1
    new-instance p1, Lcom/beizi/fusion/en;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/beizi/fusion/en;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
