.class Lcom/beizi/fusion/hp$j;
.super Lcom/beizi/fusion/fp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/fp;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/rg;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lcom/beizi/fusion/rg;->a(Ljava/lang/Boolean;)Lcom/beizi/fusion/rg;

    return-void
.end method

.method public bridge synthetic a(Lcom/beizi/fusion/rg;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/hp$j;->a(Lcom/beizi/fusion/rg;Ljava/lang/Boolean;)V

    return-void
.end method
