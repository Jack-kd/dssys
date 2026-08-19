.class Lcom/beizi/fusion/zj$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/zj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/zj;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/zj;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/zj$d;->a:Lcom/beizi/fusion/zj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/zj;Lcom/beizi/fusion/zj$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/zj$d;-><init>(Lcom/beizi/fusion/zj;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/zj$d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/zj$d;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/zj$d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/beizi/fusion/e7;

    .line 2
    .line 3
    new-instance v1, Lcom/beizi/fusion/zj$d$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/zj$d$a;-><init>(Lcom/beizi/fusion/zj$d;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/beizi/fusion/e7;-><init>(Lcom/beizi/fusion/e7$a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/e7;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/beizi/fusion/rm;->a(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
