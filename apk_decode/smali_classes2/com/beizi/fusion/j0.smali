.class public Lcom/beizi/fusion/j0;
.super Lcom/beizi/fusion/x9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/j0$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/x9;-><init>()V

    .line 3
    invoke-static {}, Lcom/beizi/fusion/j0$b;->a()Lcom/beizi/fusion/j0;

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

.method public synthetic constructor <init>(Lcom/beizi/fusion/j0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/j0;-><init>()V

    return-void
.end method

.method public static a()Lcom/beizi/fusion/j0;
    .locals 1

    .line 2
    invoke-static {}, Lcom/beizi/fusion/j0$b;->a()Lcom/beizi/fusion/j0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/j0;->c(Landroid/content/Context;)Lcom/beizi/fusion/v9;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Lcom/beizi/fusion/v9;
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/i0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/beizi/fusion/i0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
