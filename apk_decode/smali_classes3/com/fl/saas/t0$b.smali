.class Lcom/fl/saas/t0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/t0;


# direct methods
.method private constructor <init>(Lcom/fl/saas/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/t0$b;->a:Lcom/fl/saas/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/t0;Lcom/fl/saas/t0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/t0$b;-><init>(Lcom/fl/saas/t0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/t0$b;->a:Lcom/fl/saas/t0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/t0;->a(Lcom/fl/saas/t0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/t0$b;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
