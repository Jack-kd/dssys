.class Lcom/beizi/fusion/gn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/je$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/gn;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/gn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/gn$c;->a:Lcom/beizi/fusion/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/gn;Lcom/beizi/fusion/gn$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/gn$c;-><init>(Lcom/beizi/fusion/gn;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gn$c;->a:Lcom/beizi/fusion/gn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/gn;->c(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/ra;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/gn$c;->a:Lcom/beizi/fusion/gn;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/gn;->c(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/ra;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/beizi/fusion/ra;->a(Ljava/lang/String;)Lcom/beizi/fusion/cb;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/beizi/fusion/cb;->d()Lcom/beizi/fusion/je;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/gn$c;->a:Lcom/beizi/fusion/gn;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/gn;->b(Lcom/beizi/fusion/gn;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast p1, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
