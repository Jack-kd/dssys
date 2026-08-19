.class Lcom/octopus/ad/internal/b/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->addShakeView(Landroid/view/ViewGroup;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;Landroid/view/ViewGroup;IF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$7;->d:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$7;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput p3, p0, Lcom/octopus/ad/internal/b/e$7;->b:I

    .line 6
    .line 7
    iput p4, p0, Lcom/octopus/ad/internal/b/e$7;->c:F

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$7;->d:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->B(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/a/c$v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$7;->d:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->B(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/a/c$v;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$v;->a()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$7;->d:Lcom/octopus/ad/internal/b/e;

    .line 22
    .line 23
    new-instance v1, Lcom/octopus/ad/a/c$v;

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x3

    .line 27
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v7, "\u6447\u52a8\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, 0x0

    .line 36
    invoke-direct/range {v1 .. v11}, Lcom/octopus/ad/a/c$v;-><init>(DDILjava/lang/String;IIII)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/a/c$v;)Lcom/octopus/ad/a/c$v;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$7;->d:Lcom/octopus/ad/internal/b/e;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$7;->a:Landroid/view/ViewGroup;

    .line 45
    .line 46
    iget v2, p0, Lcom/octopus/ad/internal/b/e$7;->b:I

    .line 47
    .line 48
    iget v3, p0, Lcom/octopus/ad/internal/b/e$7;->c:F

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/view/ViewGroup;IF)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
