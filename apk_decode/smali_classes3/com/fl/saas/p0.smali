.class public final Lcom/fl/saas/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/fl/saas/p0;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/p0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fl/saas/p0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fl/saas/p0;->b:Lcom/fl/saas/p0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/fl/saas/p0;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/p0;->b:Lcom/fl/saas/p0;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/fl/saas/p0;
    .locals 1

    .line 6
    new-instance v0, Lcom/fl/saas/p0;

    invoke-direct {v0, p0}, Lcom/fl/saas/p0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/fl/saas/p0;
    .locals 0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/fl/saas/p0;->a()Lcom/fl/saas/p0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/fl/saas/p0;->a(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;
    .locals 1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fl/saas/p0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fl/saas/p0;->a()Lcom/fl/saas/p0;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/fl/saas/b1;)Lcom/fl/saas/p0;
    .locals 1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fl/saas/p0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/b1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/p0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a(Lcom/fl/saas/x0;)Lcom/fl/saas/p0;
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fl/saas/p0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/fl/saas/x0;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-static {}, Lcom/fl/saas/p0;->a()Lcom/fl/saas/p0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/fl/saas/B;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/fl/saas/B;Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/fl/saas/b1;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/b1;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/fl/saas/p0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/fl/saas/p0;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/p0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Optional[%s]"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, "Optional.empty"

    .line 17
    .line 18
    return-object v0
.end method
