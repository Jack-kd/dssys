.class Lcom/beizi/fusion/bj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ri;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/bj;->a(Landroid/view/View;Lcom/beizi/fusion/ri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/ri;

.field final synthetic b:Lcom/beizi/fusion/bj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/bj;Lcom/beizi/fusion/ri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/bj$a;->b:Lcom/beizi/fusion/bj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/bj$a;->a:Lcom/beizi/fusion/ri;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/bj$a;->b:Lcom/beizi/fusion/bj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/bj;->a(Lcom/beizi/fusion/bj;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/bj$a;->b:Lcom/beizi/fusion/bj;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/beizi/fusion/bj;->a(Lcom/beizi/fusion/bj;Z)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/bj$a;->b:Lcom/beizi/fusion/bj;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/fusion/bj;->b(Lcom/beizi/fusion/bj;)Lcom/beizi/fusion/a5;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/bj$a;->a:Lcom/beizi/fusion/ri;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/beizi/fusion/ri;->onAdShown()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
