.class Lcom/beizi/fusion/mj$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/mj;->a(Lcom/beizi/fusion/rn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

.field final synthetic b:Lcom/beizi/fusion/mj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/mj;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/mj$e;->b:Lcom/beizi/fusion/mj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/mj$e;->a:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/mj$e;->b:Lcom/beizi/fusion/mj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/mj;->a(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/lj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "BeiZisAd"

    .line 10
    .line 11
    const-string v1, "enter BeiZi ad load"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/mj$e;->b:Lcom/beizi/fusion/mj;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/mj;->a(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/lj;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/beizi/fusion/mj$e;->a:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/beizi/fusion/lj;->onAdLoaded(Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
