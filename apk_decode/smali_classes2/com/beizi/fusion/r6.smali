.class public Lcom/beizi/fusion/r6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/r6$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/beizi/fusion/r6;->b:Z

    .line 4
    invoke-static {}, Lcom/beizi/fusion/r6$b;->a()Lcom/beizi/fusion/r6;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Singleton ..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/r6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/r6;-><init>()V

    return-void
.end method

.method public static a()Lcom/beizi/fusion/r6;
    .locals 1

    .line 1
    invoke-static {}, Lcom/beizi/fusion/r6$b;->a()Lcom/beizi/fusion/r6;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/r6;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/beizi/fusion/r6;->b:Z

    return-void
.end method
