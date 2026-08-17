.class final Lcom/anythink/core/common/u/a/b/a/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/m/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/u/a/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/u/a/b/a/b/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/u/a/b/a/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/u/a/b/a/b/c$2;->a:Lcom/anythink/core/common/u/a/b/a/b/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 0

    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/core/common/u/a/b/a/b/c$2;->a:Lcom/anythink/core/common/u/a/b/a/b/c;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/anythink/core/common/u/a/b/a/b/c;->a:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/anythink/core/common/u/a/b/a/b/c;->a(Lcom/anythink/core/common/u/a/b/a/b/c;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/anythink/core/common/f/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/anythink/core/common/u/a/a/b;->a(Lcom/anythink/core/common/f/d;)Lcom/anythink/core/common/u/a/a/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/anythink/core/common/u/a/b/a/b/c$2;->a:Lcom/anythink/core/common/u/a/b/a/b/c;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/anythink/core/common/u/a/b/a/b/c;->a:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/u/a/a/b;->b(Ljava/util/List;)I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/anythink/core/common/u/a/b;->a()Lcom/anythink/core/common/u/a/b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "tk"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/u/a/b;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/core/common/u/a/b/a/b/c$2;->a:Lcom/anythink/core/common/u/a/b/a/b/c;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/anythink/core/common/u/a/b/a/b/c;->a:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/anythink/core/common/u/a/b/a/b/c;->a(Lcom/anythink/core/common/u/a/b/a/b/c;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/anythink/core/common/f/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/anythink/core/common/u/a/a/b;->a(Lcom/anythink/core/common/f/d;)Lcom/anythink/core/common/u/a/a/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/anythink/core/common/u/a/b/a/b/c$2;->a:Lcom/anythink/core/common/u/a/b/a/b/c;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/anythink/core/common/u/a/b/a/b/c;->a:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/u/a/a/b;->a(Ljava/util/List;)I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/anythink/core/common/u/a/b;->a()Lcom/anythink/core/common/u/a/b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "tk"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/u/a/b;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
