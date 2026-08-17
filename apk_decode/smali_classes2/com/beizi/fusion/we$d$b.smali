.class Lcom/beizi/fusion/we$d$b;
.super Lcom/beizi/fusion/xp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/we$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/beizi/fusion/we$d;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/we$d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/we$d$b;->b:Lcom/beizi/fusion/we$d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/beizi/fusion/xp;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/AdResponseModel;[Lcom/beizi/fusion/n1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/we$d$b;->b:Lcom/beizi/fusion/we$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object p2, p2, v1

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Lcom/beizi/fusion/we$d;->a(Lcom/beizi/fusion/we$d;Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/AdResponseModel;Lcom/beizi/fusion/n1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(Lcom/beizi/fusion/pc;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/beizi/fusion/we$d$b;->b:Lcom/beizi/fusion/we$d;

    .line 2
    .line 3
    sget-object v0, Lcom/beizi/fusion/n1;->i:Lcom/beizi/fusion/n1;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/we$e;->a(Lcom/beizi/fusion/n1;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/beizi/fusion/we$d$b;->b:Lcom/beizi/fusion/we$d;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/beizi/fusion/we$d;->b(Lcom/beizi/fusion/we$d;)Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/beizi/fusion/we$d$b;->b:Lcom/beizi/fusion/we$d;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/beizi/fusion/we$e;->f()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
