.class Lcom/beizi/fusion/dj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/yp$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/dj;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/dj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/dj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/dj$a;->a:Lcom/beizi/fusion/dj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "BeiZisAd"

    const-string v1, "onVideoLoaded: \u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/dj$a;->a:Lcom/beizi/fusion/dj;

    invoke-static {v0, p1}, Lcom/beizi/fusion/dj;->a(Lcom/beizi/fusion/dj;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/dj$a;->a:Lcom/beizi/fusion/dj;

    invoke-static {p1}, Lcom/beizi/fusion/dj;->a(Lcom/beizi/fusion/dj;)Lcom/beizi/fusion/ej;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/beizi/fusion/dj$a;->a:Lcom/beizi/fusion/dj;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/beizi/fusion/dj;->a(Lcom/beizi/fusion/dj;Z)Z

    .line 6
    iget-object p1, p0, Lcom/beizi/fusion/dj$a;->a:Lcom/beizi/fusion/dj;

    invoke-static {p1}, Lcom/beizi/fusion/dj;->a(Lcom/beizi/fusion/dj;)Lcom/beizi/fusion/ej;

    move-result-object p1

    invoke-interface {p1}, Lcom/beizi/fusion/ej;->a()V

    :cond_0
    return-void
.end method
