.class public Lcom/fl/saas/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/fl/saas/o0;

.field private b:Lcom/fl/saas/N0;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/fl/saas/o0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fl/saas/M0;->a:Lcom/fl/saas/o0;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fl/saas/M0;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/M0;Lcom/fl/saas/N0;)Lcom/fl/saas/N0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/fl/saas/M0;->b:Lcom/fl/saas/N0;

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/M0;)Lcom/fl/saas/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/M0;->a:Lcom/fl/saas/o0;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/M0;)Lcom/fl/saas/N0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/M0;->b:Lcom/fl/saas/N0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/fl/saas/M0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fl/saas/M0;->c:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fl/saas/M0;->b:Lcom/fl/saas/N0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/N0;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/fl/saas/R0;->a()Lcom/fl/saas/R0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/M0$a;

    invoke-direct {v1, p0}, Lcom/fl/saas/M0$a;-><init>(Lcom/fl/saas/M0;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fl/saas/R0;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/fl/saas/n0;)V

    return-void
.end method
