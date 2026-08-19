.class Lcom/beizi/fusion/gn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/gn;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/gn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/gn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/gn$a;->a:Lcom/beizi/fusion/gn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gn$a;->a:Lcom/beizi/fusion/gn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/gn;->a(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/ge;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/ge;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/gn$a;->a:Lcom/beizi/fusion/gn;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/gn;->b(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/gn$a;->a:Lcom/beizi/fusion/gn;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/gn;->b(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/beizi/fusion/gn$a;->a:Lcom/beizi/fusion/gn;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/beizi/fusion/gn;->b(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lcom/beizi/fusion/gn$a;->a:Lcom/beizi/fusion/gn;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/beizi/fusion/gn;->c(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/ra;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    filled-new-array {v1, v0}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v2, v3, v0}, Lcom/beizi/fusion/gn;->a(Lcom/beizi/fusion/gn;Lcom/beizi/fusion/ra;[I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
