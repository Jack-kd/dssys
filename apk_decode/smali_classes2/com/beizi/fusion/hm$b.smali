.class Lcom/beizi/fusion/hm$b;
.super Lcom/beizi/fusion/ii$b;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/vc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Lcom/beizi/fusion/hm;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/hm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/hm$b;->g:Lcom/beizi/fusion/hm;

    invoke-direct {p0, p1}, Lcom/beizi/fusion/ii$b;-><init>(Lcom/beizi/fusion/ii;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/hm;Lcom/beizi/fusion/hm$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/hm$b;-><init>(Lcom/beizi/fusion/hm;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/ii$b;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$b;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hm;->a(Lcom/beizi/fusion/hm;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/ii$b;->onAdClicked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/hm$b;->g:Lcom/beizi/fusion/hm;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/hm$b;->g:Lcom/beizi/fusion/hm;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->g(Lcom/beizi/fusion/hm$c;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/hm$b;->g:Lcom/beizi/fusion/hm;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/beizi/fusion/te$a;->b:Lcom/beizi/fusion/te$a;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;Lcom/beizi/fusion/te$a;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/d6$b;->onAdClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
