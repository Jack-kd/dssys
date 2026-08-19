.class Lcom/beizi/fusion/cn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ie$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/cn;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/cn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/cn$c;->a:Lcom/beizi/fusion/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/cn;Lcom/beizi/fusion/cn$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/cn$c;-><init>(Lcom/beizi/fusion/cn;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/cb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/beizi/fusion/cn$c;->a:Lcom/beizi/fusion/cn;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/fusion/cn;->c(Lcom/beizi/fusion/cn;)Lcom/beizi/fusion/ra;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/cn$c;->a:Lcom/beizi/fusion/cn;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/beizi/fusion/cn;->c(Lcom/beizi/fusion/cn;)Lcom/beizi/fusion/ra;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/beizi/fusion/ra;->c()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/cn$c;->a:Lcom/beizi/fusion/cn;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/beizi/fusion/cn;->c()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public b(Lcom/beizi/fusion/cb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/cn$c;->a:Lcom/beizi/fusion/cn;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/fusion/cn;->b(Lcom/beizi/fusion/cn;Lcom/beizi/fusion/cb;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
