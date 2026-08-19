.class Lcom/beizi/fusion/mm$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/widget/TwistView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/mm;->a(Landroid/view/ViewGroup;IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/mm;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/mm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/mm$d;->a:Lcom/beizi/fusion/mm;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/mm$d;->a:Lcom/beizi/fusion/mm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/mm;->e(Lcom/beizi/fusion/mm;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/mm$d;->a:Lcom/beizi/fusion/mm;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/beizi/fusion/mm;->c(Lcom/beizi/fusion/mm;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/mm$d;->a:Lcom/beizi/fusion/mm;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/mm;->d(Lcom/beizi/fusion/mm;)Lcom/beizi/fusion/mm$e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/mm$d;->a:Lcom/beizi/fusion/mm;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/beizi/fusion/mm;->d(Lcom/beizi/fusion/mm;)Lcom/beizi/fusion/mm$e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/beizi/fusion/mm$e;->a()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
