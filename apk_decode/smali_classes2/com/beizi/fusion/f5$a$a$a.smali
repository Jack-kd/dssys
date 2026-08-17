.class Lcom/beizi/fusion/f5$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/f5$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/f5$a$a;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/f5$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/f5$a$a$a;->a:Lcom/beizi/fusion/f5$a$a;

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
    iget-object v0, p0, Lcom/beizi/fusion/f5$a$a$a;->a:Lcom/beizi/fusion/f5$a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/f5$a$a;->a:Lcom/beizi/fusion/f5$a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/f5$a;->a:Lcom/beizi/fusion/f5;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/beizi/fusion/f5;->g(Lcom/beizi/fusion/f5;)Lcom/beizi/fusion/ri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/f5$a$a$a;->a:Lcom/beizi/fusion/f5$a$a;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/beizi/fusion/f5$a$a;->a:Lcom/beizi/fusion/f5$a;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/beizi/fusion/f5$a;->a:Lcom/beizi/fusion/f5;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/fusion/f5;->g(Lcom/beizi/fusion/f5;)Lcom/beizi/fusion/ri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/beizi/fusion/ri;->onAdShown()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
