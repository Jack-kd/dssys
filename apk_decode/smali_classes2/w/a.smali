.class public final synthetic Lw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/beizi/fusion/ze;

    check-cast p2, Lcom/beizi/fusion/ze;

    invoke-static {p1, p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->a(Lcom/beizi/fusion/ze;Lcom/beizi/fusion/ze;)I

    move-result p1

    return p1
.end method
