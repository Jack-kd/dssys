.class Lcom/beizi/fusion/v7$b;
.super Lcom/beizi/fusion/de;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/v7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/de;-><init>(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/v7$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/v7$b;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/v7$b;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/beizi/fusion/v7$b;->b(JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private b(JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/beizi/fusion/eb;->a(JJLjava/util/concurrent/TimeUnit;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/eb;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
