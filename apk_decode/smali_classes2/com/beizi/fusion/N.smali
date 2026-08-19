.class public final synthetic Lcom/beizi/fusion/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/beizi/fusion/q;

.field public final synthetic c:Lcom/beizi/fusion/w7;

.field public final synthetic d:Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/q;Lcom/beizi/fusion/w7;Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/N;->b:Lcom/beizi/fusion/q;

    iput-object p2, p0, Lcom/beizi/fusion/N;->c:Lcom/beizi/fusion/w7;

    iput-object p3, p0, Lcom/beizi/fusion/N;->d:Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/N;->b:Lcom/beizi/fusion/q;

    iget-object v1, p0, Lcom/beizi/fusion/N;->c:Lcom/beizi/fusion/w7;

    iget-object v2, p0, Lcom/beizi/fusion/N;->d:Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/q;->f(Lcom/beizi/fusion/q;Lcom/beizi/fusion/w7;Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)V

    return-void
.end method
