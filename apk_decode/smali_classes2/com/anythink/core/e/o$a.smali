.class final Lcom/anythink/core/e/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/e/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/anythink/core/e/o$b;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/anythink/core/e/o$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/anythink/core/e/o$a;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/anythink/core/e/o$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/e/o$a;Lcom/anythink/core/e/o$b;)Lcom/anythink/core/e/o$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/anythink/core/e/o$b;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/e/o$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/anythink/core/e/o$a;->c:Z

    .line 11
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    invoke-interface {v0, p1}, Lcom/anythink/core/e/o$b;->a(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/e/m;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/e/o$a;->c:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->aW()I

    move-result v0

    .line 6
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/e/o$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/e/o;->b(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/anythink/core/e/o$a;->c:Z

    .line 8
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    invoke-interface {v0, p1}, Lcom/anythink/core/e/o$b;->a(Lcom/anythink/core/e/m;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/anythink/core/e/o$b;->b()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/core/e/m;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/anythink/core/e/o$a;->b:Lcom/anythink/core/e/o$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/anythink/core/e/o$b;->b(Lcom/anythink/core/e/m;)V

    :cond_0
    return-void
.end method
