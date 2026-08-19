.class Lcom/beizi/fusion/rn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/m1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/rn;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/beizi/fusion/rn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/rn;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/rn$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;)Lcom/beizi/fusion/y1$b$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;)Lcom/beizi/fusion/y1$b$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/y1$b$b;->k()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;)Lcom/beizi/fusion/y1$b$b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/y1$b$b;->q(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/em;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/rn;->b(Lcom/beizi/fusion/rn;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;)Lcom/beizi/fusion/y1$b$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;)Lcom/beizi/fusion/y1$b$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/y1$b$b;->j()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;)Lcom/beizi/fusion/y1$b$b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/y1$b$b;->p(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/em;->a(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/rn$b;->b:Lcom/beizi/fusion/rn;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/beizi/fusion/rn$b;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/beizi/fusion/rn;->a(Lcom/beizi/fusion/rn;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :goto_0
    return-void
.end method
