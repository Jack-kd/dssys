.class Lcom/beizi/fusion/fp$a;
.super Lcom/beizi/fusion/fp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/fp;->a()Lcom/beizi/fusion/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/fp;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/fp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/fp$a;->a:Lcom/beizi/fusion/fp;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/fp;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/rg;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/beizi/fusion/rg;->k()Lcom/beizi/fusion/rg;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/fp$a;->a:Lcom/beizi/fusion/fp;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/fp;->a(Lcom/beizi/fusion/rg;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
