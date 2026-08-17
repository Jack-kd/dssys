.class Lcom/beizi/fusion/ti$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/ti;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/ti;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/ti;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/ti$d;->a:Lcom/beizi/fusion/ti;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/ti$d;->a:Lcom/beizi/fusion/ti;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/ti;->d(Lcom/beizi/fusion/ti;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/opt/BaseOptimizeFrame;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/ti$d;->a:Lcom/beizi/fusion/ti;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/ti;->d(Lcom/beizi/fusion/ti;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/opt/BaseOptimizeFrame;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/opt/BaseOptimizeFrame;->onViewHide()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/ti$d;->a:Lcom/beizi/fusion/ti;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/beizi/fusion/ti;->b(Lcom/beizi/fusion/ti;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/opt/BaseOptimizeFrame;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/ti$d;->a:Lcom/beizi/fusion/ti;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/beizi/fusion/ti;->b(Lcom/beizi/fusion/ti;)Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/opt/BaseOptimizeFrame;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/opt/BaseOptimizeFrame;->onViewHide()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
